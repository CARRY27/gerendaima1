<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 科研人员 </span>
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
                        用户名

                        <input type="text" class="form-control" style="" name="yonghuming" value="${param.yonghuming}" />
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}" />
                    </div>
                    <div class="form-group">
                        性别

                        <select class="form-control class_xingbie1" data-value="${param.xingbie}" id="xingbie" name="xingbie">
                            <option value="">请选择</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                        <script>
                            $(".class_xingbie1").val($(".class_xingbie1").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        手机

                        <input type="text" class="form-control" style="" name="shouji" value="${param.shouji}" />
                    </div>
                    <div class="form-group">
                        身份证

                        <input type="text" class="form-control" style="" name="shenfenzheng" value="${param.shenfenzheng}" />
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
                            <th>用户名</th>
                            <th>密码</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>院系</th>
                            <th>头像</th>
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
                                <td>${map.yonghuming}</td>
                                <td>${map.mima}</td>
                                <td>${map.xingming}</td>
                                <td>${map.xingbie}</td>
                                <td>${map.yuanxi}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${'' == map.touxiang }"> -</c:when><c:otherwise><img width="100" src="${map.touxiang}" /></c:otherwise
                                    ></c:choose>
                                </td>
                                <td align="center">
                                    <a href="keyanrenyuan_detail.do?id=${map.id}">详情</a>

                                    <a href="keyanrenyuan_updt.do?id=${map.id}">编辑</a>

                                    <a href="keyanrenyuan_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

