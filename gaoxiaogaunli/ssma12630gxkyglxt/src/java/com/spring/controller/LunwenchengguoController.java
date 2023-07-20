package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 论文成果 模块访问入口
 */
@Controller
public class LunwenchengguoController extends BaseController {

    @Autowired
    private LunwenchengguoMapper dao;

    @Autowired
    private LunwenchengguoService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/lunwenchengguo_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 创建初始条件为：1=1
        where += getWhere(); // 从方法中获取url 上的参数，并写成 sql条件语句
        example.setWhere(where); // 将条件写进sql里面
        example.setOrder(order + " " + sort); // 设置查询的排序情况

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page); // 取两个数的最大值，防止page 小于1
        List<Lunwenchengguo> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "lunwenchengguo_list"; // 使用视图文件：WebRoot\lunwenchengguo_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("lunwenbianhao").equals("")) {
            where += " AND lunwenbianhao LIKE '%" + Request.get("lunwenbianhao") + "%' ";
        }
        if (!Request.get("lunwentimu").equals("")) {
            where += " AND lunwentimu LIKE '%" + Request.get("lunwentimu") + "%' ";
        }
        if (!Request.get("diyizuozhe").equals("")) {
            where += " AND diyizuozhe LIKE '%" + Request.get("diyizuozhe") + "%' ";
        }
        if (!Request.get("fabiaochubanshijian").equals("")) {
            where += " AND fabiaochubanshijian LIKE '%" + Request.get("fabiaochubanshijian") + "%' ";
        }
        if (!Request.get("addtime").equals("")) {
            where += " AND addtime LIKE '%" + Request.get("addtime") + "%' ";
        }
        if (!Request.get("xuekefenlei").equals("")) {
            where += " AND xuekefenlei ='" + Request.get("xuekefenlei") + "' ";
        }
        if (!Request.get("juanhao").equals("")) {
            where += " AND juanhao LIKE '%" + Request.get("juanhao") + "%' ";
        }
        if (!Request.get("qihao").equals("")) {
            where += " AND qihao LIKE '%" + Request.get("qihao") + "%' ";
        }
        if (!Request.get("tianjiarenxingming").equals("")) {
            where += " AND tianjiarenxingming LIKE '%" + Request.get("tianjiarenxingming") + "%' ";
        }
        if (!Request.get("tianjiaren").equals("")) {
            where += " AND tianjiaren LIKE '%" + Request.get("tianjiaren") + "%' ";
        }
        return where;
    }

    /**
     * 添加人列表
     */
    @RequestMapping("/lunwenchengguo_list_tianjiaren")
    public String listtianjiaren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：添加人=当前登录用户
        String where = " tianjiaren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Lunwenchengguo> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "lunwenchengguo_list_tianjiaren";
    }

    @RequestMapping("/lunwenchengguo_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "lunwenchengguo_add";
    }

    @RequestMapping("/lunwenchengguo_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Lunwenchengguo mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "lunwenchengguo_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/lunwenchengguoinsert")
    public String insert() {
        String tmp = "";
        Lunwenchengguo post = new Lunwenchengguo(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setLunwenbianhao(Request.get("lunwenbianhao"));

        post.setLunwentimu(Request.get("lunwentimu"));

        post.setDiyizuozhe(Request.get("diyizuozhe"));

        post.setTongxunzuozhe(Request.get("tongxunzuozhe"));

        post.setFabiaochubanshijian(Request.get("fabiaochubanshijian"));

        post.setFabiaokanwulunwenji(Request.get("fabiaokanwulunwenji"));

        post.setAddtime(Request.get("addtime"));

        post.setXuekefenlei(Request.get("xuekefenlei"));

        post.setJuanhao(Request.get("juanhao"));

        post.setQihao(Request.get("qihao"));

        post.setZishu(Request.get("zishu"));

        post.setYemafanwei(Request.get("yemafanwei"));

        post.setFujian(Request.get("fujian"));

        post.setJianjie(Request.get("jianjie"));

        post.setTianjiarenxingming(Request.get("tianjiarenxingming"));

        post.setTianjiaren(Request.get("tianjiaren"));

        post.setIssh(Request.get("issh", "否"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/lunwenchengguoupdate")
    public String update() {
        // 创建实体类
        Lunwenchengguo post = new Lunwenchengguo();
        // 将前台表单数据填充到实体类
        if (!Request.get("lunwenbianhao").equals("")) post.setLunwenbianhao(Request.get("lunwenbianhao"));
        if (!Request.get("lunwentimu").equals("")) post.setLunwentimu(Request.get("lunwentimu"));
        if (!Request.get("diyizuozhe").equals("")) post.setDiyizuozhe(Request.get("diyizuozhe"));
        if (!Request.get("tongxunzuozhe").equals("")) post.setTongxunzuozhe(Request.get("tongxunzuozhe"));
        if (!Request.get("fabiaochubanshijian").equals("")) post.setFabiaochubanshijian(Request.get("fabiaochubanshijian"));
        if (!Request.get("fabiaokanwulunwenji").equals("")) post.setFabiaokanwulunwenji(Request.get("fabiaokanwulunwenji"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));
        if (!Request.get("xuekefenlei").equals("")) post.setXuekefenlei(Request.get("xuekefenlei"));
        if (!Request.get("juanhao").equals("")) post.setJuanhao(Request.get("juanhao"));
        if (!Request.get("qihao").equals("")) post.setQihao(Request.get("qihao"));
        if (!Request.get("zishu").equals("")) post.setZishu(Request.get("zishu"));
        if (!Request.get("yemafanwei").equals("")) post.setYemafanwei(Request.get("yemafanwei"));
        if (!Request.get("fujian").equals("")) post.setFujian(Request.get("fujian"));
        if (!Request.get("jianjie").equals("")) post.setJianjie(Request.get("jianjie"));
        if (!Request.get("tianjiarenxingming").equals("")) post.setTianjiarenxingming(Request.get("tianjiarenxingming"));
        if (!Request.get("tianjiaren").equals("")) post.setTianjiaren(Request.get("tianjiaren"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/lunwenchengguo_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Lunwenchengguo map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "lunwenchengguo_detail"; // 详情页面：WebRoot\lunwenchengguo_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/lunwenchengguo_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("lunwenchengguo").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
