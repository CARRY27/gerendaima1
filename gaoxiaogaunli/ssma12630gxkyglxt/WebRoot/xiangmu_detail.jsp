<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">项目详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">项目编号：</div>
                    <div class="detail-content">${map.xiangmubianhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">开发人员姓名：</div>
                    <div class="detail-content">${map.kaifarenyuanxingming}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">项目名称：</div>
                    <div class="detail-content">${map.xiangmumingcheng}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">成果形式：</div>
                    <div class="detail-content">${map.chengguoxingshi}</div>
                </div>
                <div class="detail detail-date">
                    <div class="detail-title">起日期：</div>
                    <div class="detail-content">${map.qiriqi}</div>
                </div>
                <div class="detail detail-date">
                    <div class="detail-title">止日期：</div>
                    <div class="detail-content">${map.zhiriqi}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">开发人员：</div>
                    <div class="detail-content">${map.kaifarenyuan}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">申请经费：</div>
                    <div class="detail-content">${map.shenqingjingfei}</div>
                </div>
                <div class="detail detail-selectmul">
                    <div class="detail-title">项目组主要成员：</div>
                    <div class="detail-content">${map.xiangmuzuzhuyaochengyuan}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">状态：</div>
                    <div class="detail-content">${map.zhuangtai}</div>
                </div>
                <div class="detail detail-autotime">
                    <div class="detail-title">添加时间：</div>
                    <div class="detail-content">${map.addtime}</div>
                </div>
                <div class="detail detail-editor">
                    <div class="detail-title">项目详情说明：</div>
                    <div class="detail-content">${map.xiangmuxiangqingshuoming}</div>
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

