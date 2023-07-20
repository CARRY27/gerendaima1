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
 * 经费审核 模块访问入口
 */
@Controller
public class JingfeishenheController extends BaseController {

    @Autowired
    private JingfeishenheMapper dao;

    @Autowired
    private JingfeishenheService service;

    @Autowired
    private JingfeiService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/jingfeishenhe_list")
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
        List<Jingfeishenhe> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "jingfeishenhe_list"; // 使用视图文件：WebRoot\jingfeishenhe_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 判断URL 参数jingfeiid是否大于0
        if (Request.getInt("jingfeiid") > 0) {
            // 大于0 则写入条件
            where += " AND jingfeiid='" + Request.getInt("jingfeiid") + "' ";
        }
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("xiangmumingcheng").equals("")) {
            where += " AND xiangmumingcheng LIKE '%" + Request.get("xiangmumingcheng") + "%' ";
        }
        if (!Request.get("shenqingshiyongshijian_start").equals("")) {
            where += " AND shenqingshiyongshijian >='" + Request.get("shenqingshiyongshijian_start") + "' ";
        }
        if (!Request.get("shenqingshiyongshijian_end").equals("")) {
            where += " AND shenqingshiyongshijian <= '" + Request.get("shenqingshiyongshijian_end") + "' ";
        }
        if (!Request.get("shenhe").equals("")) {
            where += " AND shenhe ='" + Request.get("shenhe") + "' ";
        }
        if (!Request.get("beizhu").equals("")) {
            where += " AND beizhu LIKE '%" + Request.get("beizhu") + "%' ";
        }
        return where;
    }

    /**
     * 申请人列表
     */
    @RequestMapping("/jingfeishenhe_list_shenqingren")
    public String listshenqingren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：申请人=当前登录用户
        String where = " shenqingren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Jingfeishenhe> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "jingfeishenhe_list_shenqingren";
    }

    /**
     * 审核人列表
     */
    @RequestMapping("/jingfeishenhe_list_shenheren")
    public String listshenheren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：审核人=当前登录用户
        String where = " shenheren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Jingfeishenhe> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "jingfeishenhe_list_shenheren";
    }

    @RequestMapping("/jingfeishenhe_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id"); // 根据id 获取 经费模块中的数据
        Jingfei readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap", readMap);
        return "jingfeishenhe_add";
    }

    @RequestMapping("/jingfeishenhe_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Jingfeishenhe mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "jingfeishenhe_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/jingfeishenheinsert")
    public String insert() {
        String tmp = "";
        Jingfeishenhe post = new Jingfeishenhe(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setJingfeiid(Request.getInt("jingfeiid"));

        post.setXiangmubianhao(Request.get("xiangmubianhao"));

        post.setXiangmumingcheng(Request.get("xiangmumingcheng"));

        post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));

        post.setDangqianzonge(Request.getDouble("dangqianzonge"));

        post.setShangjieyu(Request.getDouble("shangjieyu"));

        post.setShenqingshiyongshijian(Request.get("shenqingshiyongshijian"));

        post.setShiyongkeyanjingfeiyuanyin(Request.get("shiyongkeyanjingfeiyuanyin"));

        post.setJingfeizhichusuoshu(Request.get("jingfeizhichusuoshu"));

        post.setShenqingren(Request.get("shenqingren"));

        post.setShenhe(Request.get("shenhe"));

        post.setBeizhu(Request.get("beizhu"));

        post.setShenheren(Request.get("shenheren"));

        post.setAddtime(Info.getDateStr());

        post.setJingfeiid(Request.getInt("jingfeiid"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
        DB.execute("update jingfei set zhuangtai='" + request.getParameter("shenhe") + "' where id='" + request.getParameter("jingfeiid") + "'");

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/jingfeishenheupdate")
    public String update() {
        // 创建实体类
        Jingfeishenhe post = new Jingfeishenhe();
        // 将前台表单数据填充到实体类
        if (!Request.get("jingfeiid").equals("")) post.setJingfeiid(Request.getInt("jingfeiid"));
        if (!Request.get("xiangmubianhao").equals("")) post.setXiangmubianhao(Request.get("xiangmubianhao"));
        if (!Request.get("xiangmumingcheng").equals("")) post.setXiangmumingcheng(Request.get("xiangmumingcheng"));
        if (!Request.get("shenqingjingfei").equals("")) post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));
        if (!Request.get("dangqianzonge").equals("")) post.setDangqianzonge(Request.getDouble("dangqianzonge"));
        if (!Request.get("shangjieyu").equals("")) post.setShangjieyu(Request.getDouble("shangjieyu"));
        if (!Request.get("shenqingshiyongshijian").equals("")) post.setShenqingshiyongshijian(Request.get("shenqingshiyongshijian"));
        if (!Request.get("shiyongkeyanjingfeiyuanyin").equals("")) post.setShiyongkeyanjingfeiyuanyin(Request.get("shiyongkeyanjingfeiyuanyin"));
        if (!Request.get("jingfeizhichusuoshu").equals("")) post.setJingfeizhichusuoshu(Request.get("jingfeizhichusuoshu"));
        if (!Request.get("shenqingren").equals("")) post.setShenqingren(Request.get("shenqingren"));
        if (!Request.get("shenhe").equals("")) post.setShenhe(Request.get("shenhe"));
        if (!Request.get("beizhu").equals("")) post.setBeizhu(Request.get("beizhu"));
        if (!Request.get("shenheren").equals("")) post.setShenheren(Request.get("shenheren"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  删除
     */
    @RequestMapping("/jingfeishenhe_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("jingfeishenhe").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
