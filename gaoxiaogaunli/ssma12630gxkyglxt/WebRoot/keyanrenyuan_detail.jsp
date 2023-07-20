<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">科研人员详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">用户名：</div>
                    <div class="detail-content">${map.yonghuming}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">姓名：</div>
                    <div class="detail-content">${map.xingming}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">手机：</div>
                    <div class="detail-content">${map.shouji}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">邮箱：</div>
                    <div class="detail-content">${map.youxiang}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">身份证：</div>
                    <div class="detail-content">${map.shenfenzheng}</div>
                </div>
                <div class="detail detail-password">
                    <div class="detail-title">密码：</div>
                    <div class="detail-content">${map.mima}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">性别：</div>
                    <div class="detail-content">${map.xingbie}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">院系：</div>
                    <div class="detail-content">${map.yuanxi}</div>
                </div>
                <div class="detail detail-image">
                    <div class="detail-title">头像：</div>
                    <div class="detail-content">
                        <img src="${map.touxiang}" style="width: 350px" />
                    </div>
                </div>
            </div>

            <div class="button-list mt10">
                <div class="">
                    <button type="button" class="btn btn-default" onclick="history.go(-1);">返回</button>
                    <button type="button" class="btn btn-default" onclick="window.print()">打印本页</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

