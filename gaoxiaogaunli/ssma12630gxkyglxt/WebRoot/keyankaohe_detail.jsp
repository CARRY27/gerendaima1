<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">科研考核详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-readmodule">
                    <div class="detail-title">项目id：</div>
                    <div class="detail-content">${map.xiangmuid}</div>
                </div>
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
                <div class="detail detail-textuser">
                    <div class="detail-title">考核人：</div>
                    <div class="detail-content">${map.kaoheren}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">考核结果：</div>
                    <div class="detail-content">${map.kaohejieguo}</div>
                </div>
                <div class="detail detail-spec">
                    <div class="detail-title">获得奖励：</div>
                    <div class="detail-content">${map.huodejiangli}</div>
                </div>
                <div class="detail detail-number">
                    <div class="detail-title">获得积分：</div>
                    <div class="detail-content">${map.huodejifen}</div>
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

