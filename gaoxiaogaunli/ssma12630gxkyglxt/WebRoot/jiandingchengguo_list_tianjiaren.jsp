<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 鉴定成果 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        成果名称

                        <input type="text" class="form-control" style="" name="chengguomingcheng" value="${param.chengguomingcheng}" />
                    </div>
                    <div class="form-group">
                        鉴定号

                        <input type="text" class="form-control" style="" name="jiandinghao" value="${param.jiandinghao}" />
                    </div>
                    <div class="form-group">
                        鉴定形式

                        <input type="text" class="form-control" style="" name="jiandingxingshi" value="${param.jiandingxingshi}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                    </select>
                    <select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>
                    <script>
                        $("#orderby").val("${orderby}");
                        $("#sort").val("${sort}");
                    </script>
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>成果名称</th>
                            <th>鉴定号</th>
                            <th>鉴定形式</th>
                            <th>鉴定单位</th>
                            <th>鉴定日期</th>
                            <th>鉴定批准日期</th>
                            <th>备注</th>
                            <th>添加人</th>
                            <th>添加时间</th>
                            <th width="80" data-field="issh">审核状态</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="i" value="0" /><c:forEach items="${list}" var="map"
                            ><c:set var="i" value="${i+1}" />
                            <tr id="${map.id}" pid="">
                                <td width="30" align="center">
                                    <label> ${i} </label>
                                </td>
                                <td>${map.chengguomingcheng}</td>
                                <td>${map.jiandinghao}</td>
                                <td>${map.jiandingxingshi}</td>
                                <td>${map.jiandingdanwei}</td>
                                <td>${map.jiandingriqi}</td>
                                <td>${map.jiandingpizhunriqi}</td>
                                <td>${map.beizhu}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td>${map.issh}</td>
                                <td align="center">
                                    <a href="jiandingchengguo_detail.do?id=${map.id}">详情</a>



                                    <c:choose>
                                        <c:when test="${map.issh == '否' }">

                                            <a href="jiandingchengguo_updt.do?id=${map.id}">编辑</a>

                                            <a href="jiandingchengguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                        </c:when>
                                    </c:choose>



                                    <!--qiatnalijne-->
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <%@ include file="/page.jsp" %>

        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

