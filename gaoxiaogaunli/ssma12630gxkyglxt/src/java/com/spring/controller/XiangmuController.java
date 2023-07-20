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
 * 项目 模块访问入口
 */
@Controller
public class XiangmuController extends BaseController {

    @Autowired
    private XiangmuMapper dao;

    @Autowired
    private XiangmuService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/xiangmu_list")
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
        List<Xiangmu> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "xiangmu_list"; // 使用视图文件：WebRoot\xiangmu_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("xiangmumingcheng").equals("")) {
            where += " AND xiangmumingcheng LIKE '%" + Request.get("xiangmumingcheng") + "%' ";
        }
        if (!Request.get("qiriqi_start").equals("")) {
            where += " AND qiriqi >='" + Request.get("qiriqi_start") + "' ";
        }
        if (!Request.get("qiriqi_end").equals("")) {
            where += " AND qiriqi <= '" + Request.get("qiriqi_end") + "' ";
        }
        if (!Request.get("zhiriqi_start").equals("")) {
            where += " AND zhiriqi >='" + Request.get("zhiriqi_start") + "' ";
        }
        if (!Request.get("zhiriqi_end").equals("")) {
            where += " AND zhiriqi <= '" + Request.get("zhiriqi_end") + "' ";
        }
        if (!Request.get("zhuangtai").equals("")) {
            where += " AND zhuangtai ='" + Request.get("zhuangtai") + "' ";
        }
        return where;
    }

    /**
     * 开发人员列表
     */
    @RequestMapping("/xiangmu_list_kaifarenyuan")
    public String listkaifarenyuan() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：开发人员=当前登录用户
        String where = " kaifarenyuan='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Xiangmu> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "xiangmu_list_kaifarenyuan";
    }

    @RequestMapping("/xiangmu_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "xiangmu_add";
    }

    @RequestMapping("/xiangmu_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Xiangmu mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "xiangmu_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/xiangmuinsert")
    public String insert() {
        String tmp = "";
        Xiangmu post = new Xiangmu(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setXiangmubianhao(Request.get("xiangmubianhao"));

        post.setXiangmumingcheng(Request.get("xiangmumingcheng"));

        post.setQiriqi(Request.get("qiriqi"));

        post.setZhiriqi(Request.get("zhiriqi"));

        post.setChengguoxingshi(Request.get("chengguoxingshi"));

        post.setKaifarenyuan(Request.get("kaifarenyuan"));

        post.setKaifarenyuanxingming(Request.get("kaifarenyuanxingming"));

        post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));

        post.setXiangmuzuzhuyaochengyuan(Request.get("xiangmuzuzhuyaochengyuan"));

        post.setXiangmuxiangqingshuoming(Info.download(Request.get("xiangmuxiangqingshuoming")));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setAddtime(Info.getDateStr());

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/xiangmuupdate")
    public String update() {
        // 创建实体类
        Xiangmu post = new Xiangmu();
        // 将前台表单数据填充到实体类
        if (!Request.get("xiangmubianhao").equals("")) post.setXiangmubianhao(Request.get("xiangmubianhao"));
        if (!Request.get("xiangmumingcheng").equals("")) post.setXiangmumingcheng(Request.get("xiangmumingcheng"));
        if (!Request.get("qiriqi").equals("")) post.setQiriqi(Request.get("qiriqi"));
        if (!Request.get("zhiriqi").equals("")) post.setZhiriqi(Request.get("zhiriqi"));
        if (!Request.get("chengguoxingshi").equals("")) post.setChengguoxingshi(Request.get("chengguoxingshi"));
        if (!Request.get("kaifarenyuan").equals("")) post.setKaifarenyuan(Request.get("kaifarenyuan"));
        if (!Request.get("kaifarenyuanxingming").equals("")) post.setKaifarenyuanxingming(Request.get("kaifarenyuanxingming"));
        if (!Request.get("shenqingjingfei").equals("")) post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));
        if (!Request.get("xiangmuzuzhuyaochengyuan").equals("")) post.setXiangmuzuzhuyaochengyuan(Request.get("xiangmuzuzhuyaochengyuan"));
        if (!Request.get("xiangmuxiangqingshuoming").equals("")) post.setXiangmuxiangqingshuoming(Info.download(Request.get("xiangmuxiangqingshuoming")));
        if (!Request.get("zhuangtai").equals("")) post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/xiangmu_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Xiangmu map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "xiangmu_detail"; // 详情页面：WebRoot\xiangmu_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/xiangmu_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("xiangmu").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
