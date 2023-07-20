<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="账号管理">&#xe6a7;</i>
        <cite>账号管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('管理员账号管理','admins_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>管理员账号管理</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('管理员账号添加','admins_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>管理员账号添加</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('用户管理','keyanrenyuan_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>用户管理</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('添加新用户','keyanrenyuan_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>添加新用户</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('密码修改','mod.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>密码修改</cite>
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
            <a onclick="xadmin.add_tab('项目查询','xiangmu_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>项目查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('项目审核查询','xiangmushenhe_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>项目审核查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('经费查询','jingfei_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>经费查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('经费审核查询','jingfeishenhe_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>经费审核查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('学术活动查询','xueshuhuodong_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>学术活动查询</cite>
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
            <a onclick="xadmin.add_tab('论文成果查询','lunwenchengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>论文成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('著作成果查询','zhuzuochengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>著作成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('获奖成果查询','huojiangchengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>获奖成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('专利成果查询','zhuanlichengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>专利成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('鉴定成果查询','jiandingchengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>鉴定成果查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('创作成果查询','chuangzuochengguo_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>创作成果查询</cite>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="科研考核管理">&#xe6a7;</i>
        <cite>科研考核管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('科研考核查询','keyankaohe_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>科研考核查询</cite>

            </a>
        </li>

    </ul>

    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('科研考核统计报表','keyan_total.jsp')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>科研考核统计报表</cite>

            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="iconfont left-nav-li" lay-tips="物资管理管理">&#xe6a7;</i>
        <cite>物资管理管理</cite>
        <i class="iconfont nav_right">&#xe697;</i>
    </a>
    <ul class="sub-menu">
        <li>
            <a onclick="xadmin.add_tab('物资分类添加','wuzifenlei_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>物资分类添加</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('物资分类查询','wuzifenlei_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>物资分类查询</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('物资管理添加','wuzi_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>物资管理添加</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('物资管理查询','wuzi_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>物资管理查询</cite>
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
            <a onclick="xadmin.add_tab('通告添加','tonggao_add.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>通告添加</cite>
            </a>
        </li>
        <li>
            <a onclick="xadmin.add_tab('通告查询','tonggao_list.do')">
                <i class="iconfont">&#xe6a7;</i>
                <cite>通告查询</cite>
            </a>
        </li>
    </ul>
</li>
