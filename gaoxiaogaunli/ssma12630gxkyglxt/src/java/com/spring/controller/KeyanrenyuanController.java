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
 * 科研人员 模块访问入口
 */
@Controller
public class KeyanrenyuanController extends BaseController {

    @Autowired
    private KeyanrenyuanMapper dao;

    @Autowired
    private KeyanrenyuanService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/keyanrenyuan_list")
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
        List<Keyanrenyuan> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "keyanrenyuan_list"; // 使用视图文件：WebRoot\keyanrenyuan_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("yonghuming").equals("")) {
            where += " AND yonghuming LIKE '%" + Request.get("yonghuming") + "%' ";
        }
        if (!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%" + Request.get("xingming") + "%' ";
        }
        if (!Request.get("xingbie").equals("")) {
            where += " AND xingbie ='" + Request.get("xingbie") + "' ";
        }
        if (!Request.get("shouji").equals("")) {
            where += " AND shouji LIKE '%" + Request.get("shouji") + "%' ";
        }
        if (!Request.get("shenfenzheng").equals("")) {
            where += " AND shenfenzheng LIKE '%" + Request.get("shenfenzheng") + "%' ";
        }
        return where;
    }

    @RequestMapping("/keyanrenyuan_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "keyanrenyuan_add";
    }

    @RequestMapping("/keyanrenyuan_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Keyanrenyuan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "keyanrenyuan_updt";
    }

    @RequestMapping("/keyanrenyuan_updtself")
    public String updtself() {
        // 更新个人资料
        int id = (int) request.getSession().getAttribute("id");
        Keyanrenyuan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 1);

        return "keyanrenyuan_updtself";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/keyanrenyuaninsert")
    public String insert() {
        String tmp = "";
        Keyanrenyuan post = new Keyanrenyuan(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setYonghuming(Request.get("yonghuming"));

        post.setMima(Request.get("mima"));

        post.setXingming(Request.get("xingming"));

        post.setXingbie(Request.get("xingbie"));

        post.setYuanxi(Request.get("yuanxi"));

        post.setShouji(Request.get("shouji"));

        post.setYouxiang(Request.get("youxiang"));

        post.setShenfenzheng(Request.get("shenfenzheng"));

        post.setTouxiang(Request.get("touxiang"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/keyanrenyuanupdate")
    public String update() {
        // 创建实体类
        Keyanrenyuan post = new Keyanrenyuan();
        // 将前台表单数据填充到实体类
        if (!Request.get("yonghuming").equals("")) post.setYonghuming(Request.get("yonghuming"));
        if (!Request.get("mima").equals("")) post.setMima(Request.get("mima"));
        if (!Request.get("xingming").equals("")) post.setXingming(Request.get("xingming"));
        if (!Request.get("xingbie").equals("")) post.setXingbie(Request.get("xingbie"));
        if (!Request.get("yuanxi").equals("")) post.setYuanxi(Request.get("yuanxi"));
        if (!Request.get("shouji").equals("")) post.setShouji(Request.get("shouji"));
        if (!Request.get("youxiang").equals("")) post.setYouxiang(Request.get("youxiang"));
        if (!Request.get("shenfenzheng").equals("")) post.setShenfenzheng(Request.get("shenfenzheng"));
        if (!Request.get("touxiang").equals("")) post.setTouxiang(Request.get("touxiang"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        if (Request.getInt("updtself") == 1) {
            return showSuccess("保存成功", "keyanrenyuan_updtself.do");
        }
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/keyanrenyuan_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Keyanrenyuan map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "keyanrenyuan_detail"; // 详情页面：WebRoot\keyanrenyuan_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/keyanrenyuan_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("keyanrenyuan").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
