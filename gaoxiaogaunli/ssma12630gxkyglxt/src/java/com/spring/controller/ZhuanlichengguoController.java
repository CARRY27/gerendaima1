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
 * 专利成果 模块访问入口
 */
@Controller
public class ZhuanlichengguoController extends BaseController {

    @Autowired
    private ZhuanlichengguoMapper dao;

    @Autowired
    private ZhuanlichengguoService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/zhuanlichengguo_list")
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
        List<Zhuanlichengguo> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "zhuanlichengguo_list"; // 使用视图文件：WebRoot\zhuanlichengguo_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("chengguoleibie").equals("")) {
            where += " AND chengguoleibie ='" + Request.get("chengguoleibie") + "' ";
        }
        if (!Request.get("yituoxiangmu").equals("")) {
            where += " AND yituoxiangmu LIKE '%" + Request.get("yituoxiangmu") + "%' ";
        }
        if (!Request.get("zhuanlijishufenzhi").equals("")) {
            where += " AND zhuanlijishufenzhi ='" + Request.get("zhuanlijishufenzhi") + "' ";
        }
        if (!Request.get("benrenpaixu").equals("")) {
            where += " AND benrenpaixu ='" + Request.get("benrenpaixu") + "' ";
        }
        if (!Request.get("shifoudiyidanwei").equals("")) {
            where += " AND shifoudiyidanwei ='" + Request.get("shifoudiyidanwei") + "' ";
        }
        if (!Request.get("tianjiaren").equals("")) {
            where += " AND tianjiaren LIKE '%" + Request.get("tianjiaren") + "%' ";
        }
        return where;
    }

    /**
     * 添加人列表
     */
    @RequestMapping("/zhuanlichengguo_list_tianjiaren")
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

        List<Zhuanlichengguo> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "zhuanlichengguo_list_tianjiaren";
    }

    /**
     *  导出数据
     *
     */
    @RequestMapping("/zhuanlichengguo_export")
    public String export() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        String order = Request.get("order", "id"); // 注释同list
        String sort = Request.get("sort", "desc"); // 注释同list
        String where = " 1=1 "; // 注释同list
        where += getWhere(); // 注释同list
        Execl xls = new Execl(); // 注册一个Execl 导入导出对象
        xls.addCol("id", "ID"); // 添加一列  id 字段，名称ID

        xls.addCol("chengguomingcheng", "成果名称"); // 添加一列 chengguomingcheng，成果名称

        xls.addCol("chengguoleibie", "成果类别"); //添加一列  chengguoleibie ， 成果类别

        xls.addCol("suoshuxueke", "所属学科"); // 添加一列 suoshuxueke，所属学科

        xls.addCol("yituoxiangmu", "依托项目"); // 添加一列 yituoxiangmu，依托项目

        xls.addCol("zhuanlihao", "专利号"); // 添加一列 zhuanlihao，专利号

        xls.addCol("zhuanlijishufenzhi", "专利技术分值"); //添加一列  zhuanlijishufenzhi ， 专利技术分值

        xls.addCol("benrenpaixu", "本人排序"); //添加一列  benrenpaixu ， 本人排序

        xls.addCol("shifoudiyidanwei", "是否第一单位"); //添加一列  shifoudiyidanwei ， 是否第一单位

        xls.addCol("zhesuanhoufenzhi", "折算后分值"); // 添加一列 zhesuanhoufenzhi，折算后分值

        xls.addCol("fenzhifenpei", "分值分配"); // 添加一列 fenzhifenpei，分值分配

        xls.addCol("beizhu", "备注"); // 添加一列 beizhu，备注

        xls.addCol("tianjiaren", "添加人"); // 添加一列 tianjiaren，添加人

        xls.addCol("addtime", "添加时间"); // 添加一列 addtime，添加时间

        xls.addCol("issh", "是否审核");

        // 搜索数据库数据，并把数据导入到  execl 导入导出类
        List<Map> list = Query.make("zhuanlichengguo").where(where).order(order + " " + sort).select();
        xls.addData(list);
        // 执行导出
        xls.export("zhuanlichengguo", response);
        return "success";
    }

    @RequestMapping("/zhuanlichengguo_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "zhuanlichengguo_add";
    }

    @RequestMapping("/zhuanlichengguo_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Zhuanlichengguo mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "zhuanlichengguo_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/zhuanlichengguoinsert")
    public String insert() {
        String tmp = "";
        Zhuanlichengguo post = new Zhuanlichengguo(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setChengguomingcheng(Request.get("chengguomingcheng"));

        post.setChengguoleibie(Request.get("chengguoleibie"));

        post.setSuoshuxueke(Request.get("suoshuxueke"));

        post.setYituoxiangmu(Request.get("yituoxiangmu"));

        post.setZhuanlihao(Request.get("zhuanlihao"));

        post.setZhuanlijishufenzhi(Request.get("zhuanlijishufenzhi"));

        post.setBenrenpaixu(Request.get("benrenpaixu"));

        post.setShifoudiyidanwei(Request.get("shifoudiyidanwei"));

        post.setZhesuanhoufenzhi(Request.getInt("zhesuanhoufenzhi"));

        post.setFenzhifenpei(Request.getInt("fenzhifenpei"));

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
    @RequestMapping("/zhuanlichengguoupdate")
    public String update() {
        // 创建实体类
        Zhuanlichengguo post = new Zhuanlichengguo();
        // 将前台表单数据填充到实体类
        if (!Request.get("chengguomingcheng").equals("")) post.setChengguomingcheng(Request.get("chengguomingcheng"));
        if (!Request.get("chengguoleibie").equals("")) post.setChengguoleibie(Request.get("chengguoleibie"));
        if (!Request.get("suoshuxueke").equals("")) post.setSuoshuxueke(Request.get("suoshuxueke"));
        if (!Request.get("yituoxiangmu").equals("")) post.setYituoxiangmu(Request.get("yituoxiangmu"));
        if (!Request.get("zhuanlihao").equals("")) post.setZhuanlihao(Request.get("zhuanlihao"));
        if (!Request.get("zhuanlijishufenzhi").equals("")) post.setZhuanlijishufenzhi(Request.get("zhuanlijishufenzhi"));
        if (!Request.get("benrenpaixu").equals("")) post.setBenrenpaixu(Request.get("benrenpaixu"));
        if (!Request.get("shifoudiyidanwei").equals("")) post.setShifoudiyidanwei(Request.get("shifoudiyidanwei"));
        if (!Request.get("zhesuanhoufenzhi").equals("")) post.setZhesuanhoufenzhi(Request.getInt("zhesuanhoufenzhi"));
        if (!Request.get("fenzhifenpei").equals("")) post.setFenzhifenpei(Request.getInt("fenzhifenpei"));
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
    @RequestMapping("/zhuanlichengguo_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Zhuanlichengguo map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "zhuanlichengguo_detail"; // 详情页面：WebRoot\zhuanlichengguo_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/zhuanlichengguo_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("zhuanlichengguo").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
