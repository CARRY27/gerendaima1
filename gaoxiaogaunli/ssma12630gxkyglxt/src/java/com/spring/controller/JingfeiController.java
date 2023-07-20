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
 * 经费 模块访问入口
 */
@Controller
public class JingfeiController extends BaseController {

    @Autowired
    private JingfeiMapper dao;

    @Autowired
    private JingfeiService service;

    @Autowired
    private XiangmuService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/jingfei_list")
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
        List<Jingfei> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "jingfei_list"; // 使用视图文件：WebRoot\jingfei_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 判断URL 参数xiangmuid是否大于0
        if (Request.getInt("xiangmuid") > 0) {
            // 大于0 则写入条件
            where += " AND xiangmuid='" + Request.getInt("xiangmuid") + "' ";
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
        if (!Request.get("zhuangtai").equals("")) {
            where += " AND zhuangtai ='" + Request.get("zhuangtai") + "' ";
        }
        return where;
    }

    /**
     * 申请人列表
     */
    @RequestMapping("/jingfei_list_shenqingren")
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

        List<Jingfei> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "jingfei_list_shenqingren";
    }

    @RequestMapping("/jingfei_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id"); // 根据id 获取 项目模块中的数据
        Xiangmu readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap", readMap);
        return "jingfei_add";
    }

    @RequestMapping("/jingfei_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Jingfei mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "jingfei_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/jingfeiinsert")
    public String insert() {
        String tmp = "";
        Jingfei post = new Jingfei(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setXiangmuid(Request.getInt("xiangmuid"));

        post.setXiangmubianhao(Request.get("xiangmubianhao"));

        post.setXiangmumingcheng(Request.get("xiangmumingcheng"));

        post.setZhouqi(Request.get("zhouqi"));

        post.setHetong(Request.get("hetong"));

        post.setDangqianzonge(Request.getDouble("dangqianzonge"));

        post.setShangjieyu(Request.getDouble("shangjieyu"));

        post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));

        post.setShenqingshiyongshijian(Request.get("shenqingshiyongshijian"));

        post.setShiyongkeyanjingfeiyuanyin(Request.get("shiyongkeyanjingfeiyuanyin"));

        post.setJingfeizhichusuoshu(Request.get("jingfeizhichusuoshu"));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setShenqingren(Request.get("shenqingren"));

        post.setAddtime(Info.getDateStr());

        post.setXiangmuid(Request.getInt("xiangmuid"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/jingfeiupdate")
    public String update() {
        // 创建实体类
        Jingfei post = new Jingfei();
        // 将前台表单数据填充到实体类
        if (!Request.get("xiangmuid").equals("")) post.setXiangmuid(Request.getInt("xiangmuid"));
        if (!Request.get("xiangmubianhao").equals("")) post.setXiangmubianhao(Request.get("xiangmubianhao"));
        if (!Request.get("xiangmumingcheng").equals("")) post.setXiangmumingcheng(Request.get("xiangmumingcheng"));
        if (!Request.get("zhouqi").equals("")) post.setZhouqi(Request.get("zhouqi"));
        if (!Request.get("hetong").equals("")) post.setHetong(Request.get("hetong"));
        if (!Request.get("dangqianzonge").equals("")) post.setDangqianzonge(Request.getDouble("dangqianzonge"));
        if (!Request.get("shangjieyu").equals("")) post.setShangjieyu(Request.getDouble("shangjieyu"));
        if (!Request.get("shenqingjingfei").equals("")) post.setShenqingjingfei(Request.getDouble("shenqingjingfei"));
        if (!Request.get("shenqingshiyongshijian").equals("")) post.setShenqingshiyongshijian(Request.get("shenqingshiyongshijian"));
        if (!Request.get("shiyongkeyanjingfeiyuanyin").equals("")) post.setShiyongkeyanjingfeiyuanyin(Request.get("shiyongkeyanjingfeiyuanyin"));
        if (!Request.get("jingfeizhichusuoshu").equals("")) post.setJingfeizhichusuoshu(Request.get("jingfeizhichusuoshu"));
        if (!Request.get("zhuangtai").equals("")) post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("shenqingren").equals("")) post.setShenqingren(Request.get("shenqingren"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/jingfei_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Jingfei map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "jingfei_detail"; // 详情页面：WebRoot\jingfei_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/jingfei_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("jingfei").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
