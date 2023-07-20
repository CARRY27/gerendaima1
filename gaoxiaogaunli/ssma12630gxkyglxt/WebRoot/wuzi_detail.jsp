<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">物资详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">编号：</div>
                    <div class="detail-content">${map.bianhao}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">物资名称：</div>
                    <div class="detail-content">${map.wuzimingcheng}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">分类：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapwuzifenlei3" type="find">SELECT fenleimingcheng,id FROM wuzifenlei where id='${map.fenlei}'</ssm:sql>${mapwuzifenlei3.fenleimingcheng}
                    </div>
                </div>
                <div class="detail detail-number">
                    <div class="detail-title">库存数量：</div>
                    <div class="detail-content">${map.kucunshuliang}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">物资用处：</div>
                    <div class="detail-content">${map.wuziyongchu}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">描述：</div>
                    <div class="detail-content">${map.miaoshu}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">操作人：</div>
                    <div class="detail-content">${map.caozuoren}</div>
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

