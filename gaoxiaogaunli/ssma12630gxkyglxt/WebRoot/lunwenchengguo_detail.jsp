<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">论文成果详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">论文编号：</div>
                    <div class="detail-content">${map.lunwenbianhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">第一作者：</div>
                    <div class="detail-content">${map.diyizuozhe}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">通讯作者：</div>
                    <div class="detail-content">${map.tongxunzuozhe}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">发表出版时间：</div>
                    <div class="detail-content">${map.fabiaochubanshijian}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">发表刊物论文集：</div>
                    <div class="detail-content">${map.fabiaokanwulunwenji}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">卷号：</div>
                    <div class="detail-content">${map.juanhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">期号：</div>
                    <div class="detail-content">${map.qihao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">字数：</div>
                    <div class="detail-content">${map.zishu}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">页码范围：</div>
                    <div class="detail-content">${map.yemafanwei}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">添加人姓名：</div>
                    <div class="detail-content">${map.tianjiarenxingming}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">论文题目：</div>
                    <div class="detail-content">${map.lunwentimu}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">刊物类型：</div>
                    <div class="detail-content">${map.addtime}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">学科分类：</div>
                    <div class="detail-content">${map.xuekefenlei}</div>
                </div>
                <div class="detail detail-file">
                    <div class="detail-title">附件：</div>
                    <div class="detail-content">
                        <c:choose>
                            <c:when test="${map.fujian == '' }"> 无文件</c:when><c:otherwise><a href="${map.fujian}" download="" target="_blank">下载</a></c:otherwise></c:choose
                        >
                    </div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">简介：</div>
                    <div class="detail-content">${map.jianjie}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">添加人：</div>
                    <div class="detail-content">${map.tianjiaren}</div>
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

