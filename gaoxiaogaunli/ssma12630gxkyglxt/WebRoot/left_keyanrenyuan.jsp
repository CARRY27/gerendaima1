<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="个人中心">&#xe6a7;</i>
        <cite>个人中心</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('修改个人资料','keyanrenyuan_updtself.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>修改个人资料</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('修改密码','mod.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>修改密码</cite>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="项目管理">&#xe6a7;</i>
        <cite>项目管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('申请项目','xiangmu_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>申请项目</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('项目查询','xiangmu_list_kaifarenyuan.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>项目查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('项目经费查询','jingfei_list_shenqingren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>项目经费查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('项目审核查询','xiangmushenhe_list_kaifarenyuan.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>项目审核查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('经费审核查询','jingfeishenhe_list_shenqingren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>经费审核查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('学术活动查询','xueshuhuodong_list_kaifarenyuan.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>学术活动查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('科研考核查询','keyankaohe_list_kaifarenyuan.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>科研考核查询</cite>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="成果管理">&#xe6a7;</i>
        <cite>成果管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('添加论文成果','lunwenchengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加论文成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加著作成果','zhuzuochengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加著作成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加获奖成果','huojiangchengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加获奖成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加专利成果','zhuanlichengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加专利成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加鉴定成果','jiandingchengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加鉴定成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加创作成果','chuangzuochengguo_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加创作成果</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('论文成果查询','lunwenchengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>论文成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('著作成果查询','zhuzuochengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>著作成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('获奖成果查询','huojiangchengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>获奖成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('专利成果查询','zhuanlichengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>专利成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('鉴定成果查询','jiandingchengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>鉴定成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('创作成果查询','chuangzuochengguo_list_tianjiaren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>创作成果查询</cite>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="物资管理">&#xe6a7;</i>
        <cite>物资管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('添加物资','wuzi_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加物资</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('物资查询','wuzi_list_caozuoren.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>物资查询</cite>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="通告管理">&#xe6a7;</i>
        <cite>通告管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('通告查询','tonggao_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>通告查询</cite>
            </a>
        </li>
    </ul>
</li>
