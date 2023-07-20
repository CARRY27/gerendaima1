<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">获奖成果详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-longtext">
                    <div class="detail-title">成果名称：</div>
                    <div class="detail-content">${map.chengguomingcheng}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">批准单位：</div>
                    <div class="detail-content">${map.pizhundanwei}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">获奖级别：</div>
                    <div class="detail-content">${map.huojiangjibie}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">获奖等级：</div>
                    <div class="detail-content">${map.huojiangdengji}</div>
                </div>
                <div class="detail detail-spec">
                    <div class="detail-title">获奖成员：</div>
                    <div class="detail-content">${map.huojiangchengyuan}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">添加人：</div>
                    <div class="detail-content">${map.tianjiaren}</div>
                </div>
                <div class="detail detail-autotime">
                    <div class="detail-title">添加时间：</div>
                    <div class="detail-content">${map.addtime}</div>
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

