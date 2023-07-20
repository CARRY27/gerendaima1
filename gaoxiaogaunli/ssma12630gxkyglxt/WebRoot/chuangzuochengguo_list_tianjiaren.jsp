<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 创作成果 </span>
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
                        年度

                        <input type="text" class="form-control" style="" name="niandu" value="${param.niandu}" />
                    </div>
                    <div class="form-group">
                        学科

                        <input type="text" class="form-control" style="" name="xueke" value="${param.xueke}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="addtime">按添加时间</option>
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
                            <th>年度</th>
                            <th>学科</th>
                            <th>获奖者</th>
                            <th>成果名称</th>
                            <th>获奖名称</th>
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
                                <td>${map.niandu}</td>
                                <td>${map.xueke}</td>
                                <td>${map.huojiangzhe}</td>
                                <td>${map.chengguomingcheng}</td>
                                <td>${map.huojiangmingcheng}</td>
                                <td>${map.beizhu}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td>${map.issh}</td>
                                <td align="center">
                                    <a href="chuangzuochengguo_detail.do?id=${map.id}">详情</a>




                                    <c:choose>
                                        <c:when test="${map.issh == '否' }">
                                            <a href="chuangzuochengguo_updt.do?id=${map.id}">编辑</a>

                                            <a href="chuangzuochengguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

