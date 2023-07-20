<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">经费详情</div>
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
                <div class="detail detail-longtext">
                    <div class="detail-title">项目名称：</div>
                    <div class="detail-content">${map.xiangmumingcheng}</div>
                </div>
                <div class="detail detail-longtext">
                    <div class="detail-title">周期：</div>
                    <div class="detail-content">${map.zhouqi}</div>
                </div>
                <div class="detail detail-file">
                    <div class="detail-title">合同：</div>
                    <div class="detail-content">
                        <c:choose>
                            <c:when test="${map.hetong == '' }"> 无文件</c:when><c:otherwise><a href="${map.hetong}" download="" target="_blank">下载</a></c:otherwise></c:choose
                        >
                    </div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">当前总额：</div>
                    <div class="detail-content">${map.dangqianzonge}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">尚结余：</div>
                    <div class="detail-content">${map.shangjieyu}</div>
                </div>
                <div class="detail detail-money">
                    <div class="detail-title">申请经费：</div>
                    <div class="detail-content">${map.shenqingjingfei}</div>
                </div>
                <div class="detail detail-date">
                    <div class="detail-title">申请使用时间：</div>
                    <div class="detail-content">${map.shenqingshiyongshijian}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">使用科研经费原因：</div>
                    <div class="detail-content">${map.shiyongkeyanjingfeiyuanyin}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">经费支出所属：</div>
                    <div class="detail-content">${map.jingfeizhichusuoshu}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">状态：</div>
                    <div class="detail-content">${map.zhuangtai}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">申请人：</div>
                    <div class="detail-content">${map.shenqingren}</div>
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

