<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">著作成果详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-text">
                    <div class="detail-title">作者姓名：</div>
                    <div class="detail-content">${map.zuozhexingming}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">学科类别：</div>
                    <div class="detail-content">${map.xuekeleibie}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">出版社：</div>
                    <div class="detail-content">${map.chubanshe}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">ISBN号：</div>
                    <div class="detail-content">${map.isbnhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">归档号：</div>
                    <div class="detail-content">${map.guidanghao}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">著作名称：</div>
                    <div class="detail-content">${map.zhuzuomingcheng}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">依托项目：</div>
                    <div class="detail-content">${map.yituoxiangmu}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">备注：</div>
                    <div class="detail-content">${map.beizhu}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">著作数字：</div>
                    <div class="detail-content">${map.zhuzuoshuzi}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">出版社类别：</div>
                    <div class="detail-content">${map.chubansheleibie}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">著作类别：</div>
                    <div class="detail-content">${map.zhuzuoleibie}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">分值：</div>
                    <div class="detail-content">${map.fenzhi}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">本人排序：</div>
                    <div class="detail-content">${map.benrenpaixu}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">是否第一作者：</div>
                    <div class="detail-content">${map.shifoudiyizuozhe}</div>
                </div>
                <div class="detail detail-number">
                    <div class="detail-title">折算后分值：</div>
                    <div class="detail-content">${map.zhesuanhoufenzhi}</div>
                </div>
                <div class="detail detail-number">
                    <div class="detail-title">分值分配：</div>
                    <div class="detail-content">${map.fenzhifenpei}</div>
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

