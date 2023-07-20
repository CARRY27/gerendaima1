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
 * 著作成果 模块访问入口
 */
@Controller
public class ZhuzuochengguoController extends BaseController {

    @Autowired
    private ZhuzuochengguoMapper dao;

    @Autowired
    private ZhuzuochengguoService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/zhuzuochengguo_list")
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
        List<Zhuzuochengguo> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "zhuzuochengguo_list"; // 使用视图文件：WebRoot\zhuzuochengguo_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("zuozhexingming").equals("")) {
            where += " AND zuozhexingming LIKE '%" + Request.get("zuozhexingming") + "%' ";
        }
        if (!Request.get("chubanshe").equals("")) {
            where += " AND chubanshe LIKE '%" + Request.get("chubanshe") + "%' ";
        }
        if (!Request.get("isbnhao").equals("")) {
            where += " AND isbnhao LIKE '%" + Request.get("isbnhao") + "%' ";
        }
        if (!Request.get("chubansheleibie").equals("")) {
            where += " AND chubansheleibie ='" + Request.get("chubansheleibie") + "' ";
        }
        if (!Request.get("zhuzuoleibie").equals("")) {
            where += " AND zhuzuoleibie ='" + Request.get("zhuzuoleibie") + "' ";
        }
        if (!Request.get("fenzhi").equals("")) {
            where += " AND fenzhi ='" + Request.get("fenzhi") + "' ";
        }
        if (!Request.get("benrenpaixu").equals("")) {
            where += " AND benrenpaixu ='" + Request.get("benrenpaixu") + "' ";
        }
        if (!Request.get("tianjiaren").equals("")) {
            where += " AND tianjiaren LIKE '%" + Request.get("tianjiaren") + "%' ";
        }
        return where;
    }

    /**
     * 添加人列表
     */
    @RequestMapping("/zhuzuochengguo_list_tianjiaren")
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

        List<Zhuzuochengguo> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "zhuzuochengguo_list_tianjiaren";
    }

    @RequestMapping("/zhuzuochengguo_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "zhuzuochengguo_add";
    }

    @RequestMapping("/zhuzuochengguo_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Zhuzuochengguo mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "zhuzuochengguo_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/zhuzuochengguoinsert")
    public String insert() {
        String tmp = "";
        Zhuzuochengguo post = new Zhuzuochengguo(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setZuozhexingming(Request.get("zuozhexingming"));

        post.setZhuzuomingcheng(Request.get("zhuzuomingcheng"));

        post.setXuekeleibie(Request.get("xuekeleibie"));

        post.setYituoxiangmu(Request.get("yituoxiangmu"));

        post.setZhuzuoshuzi(Request.getDouble("zhuzuoshuzi"));

        post.setChubanshe(Request.get("chubanshe"));

        post.setIsbnhao(Request.get("isbnhao"));

        post.setChubansheleibie(Request.get("chubansheleibie"));

        post.setZhuzuoleibie(Request.get("zhuzuoleibie"));

        post.setFenzhi(Request.get("fenzhi"));

        post.setBenrenpaixu(Request.get("benrenpaixu"));

        post.setShifoudiyizuozhe(Request.get("shifoudiyizuozhe"));

        post.setZhesuanhoufenzhi(Request.getInt("zhesuanhoufenzhi"));

        post.setFenzhifenpei(Request.getInt("fenzhifenpei"));

        post.setGuidanghao(Request.get("guidanghao"));

        post.setBeizhu(Request.get("beizhu"));

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
    @RequestMapping("/zhuzuochengguoupdate")
    public String update() {
        // 创建实体类
        Zhuzuochengguo post = new Zhuzuochengguo();
        // 将前台表单数据填充到实体类
        if (!Request.get("zuozhexingming").equals("")) post.setZuozhexingming(Request.get("zuozhexingming"));
        if (!Request.get("zhuzuomingcheng").equals("")) post.setZhuzuomingcheng(Request.get("zhuzuomingcheng"));
        if (!Request.get("xuekeleibie").equals("")) post.setXuekeleibie(Request.get("xuekeleibie"));
        if (!Request.get("yituoxiangmu").equals("")) post.setYituoxiangmu(Request.get("yituoxiangmu"));
        if (!Request.get("zhuzuoshuzi").equals("")) post.setZhuzuoshuzi(Request.getDouble("zhuzuoshuzi"));
        if (!Request.get("chubanshe").equals("")) post.setChubanshe(Request.get("chubanshe"));
        if (!Request.get("isbnhao").equals("")) post.setIsbnhao(Request.get("isbnhao"));
        if (!Request.get("chubansheleibie").equals("")) post.setChubansheleibie(Request.get("chubansheleibie"));
        if (!Request.get("zhuzuoleibie").equals("")) post.setZhuzuoleibie(Request.get("zhuzuoleibie"));
        if (!Request.get("fenzhi").equals("")) post.setFenzhi(Request.get("fenzhi"));
        if (!Request.get("benrenpaixu").equals("")) post.setBenrenpaixu(Request.get("benrenpaixu"));
        if (!Request.get("shifoudiyizuozhe").equals("")) post.setShifoudiyizuozhe(Request.get("shifoudiyizuozhe"));
        if (!Request.get("zhesuanhoufenzhi").equals("")) post.setZhesuanhoufenzhi(Request.getInt("zhesuanhoufenzhi"));
        if (!Request.get("fenzhifenpei").equals("")) post.setFenzhifenpei(Request.getInt("fenzhifenpei"));
        if (!Request.get("guidanghao").equals("")) post.setGuidanghao(Request.get("guidanghao"));
        if (!Request.get("beizhu").equals("")) post.setBeizhu(Request.get("beizhu"));
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
    @RequestMapping("/zhuzuochengguo_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Zhuzuochengguo map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "zhuzuochengguo_detail"; // 详情页面：WebRoot\zhuzuochengguo_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/zhuzuochengguo_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("zhuzuochengguo").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
