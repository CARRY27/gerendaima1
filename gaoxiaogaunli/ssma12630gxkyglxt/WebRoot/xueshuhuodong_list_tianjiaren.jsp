<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 学术活动 </span>
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
                        项目名称

                        <input type="text" class="form-control" style="" name="xiangmumingcheng" value="${param.xiangmumingcheng}" />
                    </div>
                    <div class="form-group">
                        起日期

                        <input type="text" class="form-control" name="qiriqi_start" readonly="readonly" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" />-<input
                            type="text"
                            class="form-control"
                            name="qiriqi_end"
                            readonly="readonly"
                            onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})"
                        />
                    </div>
                    <div class="form-group">
                        止日期

                        <input type="text" class="form-control" name="zhiriqi_start" readonly="readonly" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" />-<input
                            type="text"
                            class="form-control"
                            name="zhiriqi_end"
                            readonly="readonly"
                            onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})"
                        />
                    </div>
                    <div class="form-group">
                        学术活动数目

                        <input type="text" class="form-control" style="width: 80px" name="huodongshumu_start" value="${param.huodongshumu_start}" />-
                        <input type="text" class="form-control" style="width: 80px" name="huodongshumu_end" value="${param.huodongshumu_end}" />
                    </div>
                    <div class="form-group">
                        备注

                        <input type="text" class="form-control" id="beizhu" name="beizhu" value="${param.beizhu}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="qiriqi">按起日期</option>
                        <option value="zhiriqi">按止日期</option>
                        <option value="huodongshumu">按学术活动数目</option>
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
                            <th>项目名称</th>
                            <th>起日期</th>
                            <th>止日期</th>
                            <th>开发人员</th>
                            <th>开发人员姓名</th>
                            <th>学术活动数目</th>
                            <th>备注</th>
                            <th>添加人</th>
                            <th>添加时间</th>
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
                                <td>${map.xiangmumingcheng}</td>
                                <td>${map.qiriqi}</td>
                                <td>${map.zhiriqi}</td>
                                <td>${map.kaifarenyuan}</td>
                                <td>${map.kaifarenyuanxingming}</td>
                                <td>${map.huodongshumu}</td>
                                <td>${map.beizhu}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td align="center">
                                    <a href="xueshuhuodong_detail.do?id=${map.id}">详情</a>

                                    <a href="xueshuhuodong_updt.do?id=${map.id}">编辑</a>

                                    <a href="xueshuhuodong_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

