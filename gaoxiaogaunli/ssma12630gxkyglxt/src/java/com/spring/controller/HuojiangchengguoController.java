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
 * 获奖成果 模块访问入口
 */
@Controller
public class HuojiangchengguoController extends BaseController {

    @Autowired
    private HuojiangchengguoMapper dao;

    @Autowired
    private HuojiangchengguoService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/huojiangchengguo_list")
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
        List<Huojiangchengguo> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "huojiangchengguo_list"; // 使用视图文件：WebRoot\huojiangchengguo_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("chengguomingcheng").equals("")) {
            where += " AND chengguomingcheng LIKE '%" + Request.get("chengguomingcheng") + "%' ";
        }
        if (!Request.get("huojiangjibie").equals("")) {
            where += " AND huojiangjibie ='" + Request.get("huojiangjibie") + "' ";
        }
        if (!Request.get("huojiangdengji").equals("")) {
            where += " AND huojiangdengji LIKE '%" + Request.get("huojiangdengji") + "%' ";
        }
        return where;
    }

    /**
     * 添加人列表
     */
    @RequestMapping("/huojiangchengguo_list_tianjiaren")
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

        List<Huojiangchengguo> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "huojiangchengguo_list_tianjiaren";
    }

    @RequestMapping("/huojiangchengguo_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "huojiangchengguo_add";
    }

    @RequestMapping("/huojiangchengguo_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Huojiangchengguo mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "huojiangchengguo_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/huojiangchengguoinsert")
    public String insert() {
        String tmp = "";
        Huojiangchengguo post = new Huojiangchengguo(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setChengguomingcheng(Request.get("chengguomingcheng"));

        post.setHuojiangjibie(Request.get("huojiangjibie"));

        post.setHuojiangdengji(Request.get("huojiangdengji"));

        post.setHuojiangchengyuan(Request.get("huojiangchengyuan"));

        post.setPizhundanwei(Request.get("pizhundanwei"));

        post.setTianjiaren(Request.get("tianjiaren"));

        post.setAddtime(Info.getDateStr());

        post.setIssh(Request.get("issh", "否"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/huojiangchengguoupdate")
    public String update() {
        // 创建实体类
        Huojiangchengguo post = new Huojiangchengguo();
        // 将前台表单数据填充到实体类
        if (!Request.get("chengguomingcheng").equals("")) post.setChengguomingcheng(Request.get("chengguomingcheng"));
        if (!Request.get("huojiangjibie").equals("")) post.setHuojiangjibie(Request.get("huojiangjibie"));
        if (!Request.get("huojiangdengji").equals("")) post.setHuojiangdengji(Request.get("huojiangdengji"));
        if (!Request.get("huojiangchengyuan").equals("")) post.setHuojiangchengyuan(Request.get("huojiangchengyuan"));
        if (!Request.get("pizhundanwei").equals("")) post.setPizhundanwei(Request.get("pizhundanwei"));
        if (!Request.get("tianjiaren").equals("")) post.setTianjiaren(Request.get("tianjiaren"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/huojiangchengguo_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Huojiangchengguo map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "huojiangchengguo_detail"; // 详情页面：WebRoot\huojiangchengguo_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/huojiangchengguo_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("huojiangchengguo").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
