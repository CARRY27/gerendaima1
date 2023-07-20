<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 论文成果 </span>
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
                        论文编号

                        <input type="text" class="form-control" style="" name="lunwenbianhao" value="${param.lunwenbianhao}" />
                    </div>
                    <div class="form-group">
                        论文题目

                        <input type="text" class="form-control" style="" name="lunwentimu" value="${param.lunwentimu}" />
                    </div>
                    <div class="form-group">
                        第一作者

                        <input type="text" class="form-control" style="" name="diyizuozhe" value="${param.diyizuozhe}" />
                    </div>
                    <div class="form-group">
                        发表出版时间

                        <input type="text" class="form-control" style="" name="fabiaochubanshijian" value="${param.fabiaochubanshijian}" />
                    </div>
                    <div class="form-group">
                        刊物类型

                        <input type="text" class="form-control" style="" name="addtime" value="${param.addtime}" />
                    </div>
                    <div class="form-group">
                        学科分类

                        <select class="form-control class_xuekefenlei21" data-value="${param.xuekefenlei}" id="xuekefenlei" name="xuekefenlei">
                            <option value="">请选择</option>
                            <option value="科技类">科技类</option>
                            <option value="社科类">社科类</option>
                        </select>
                        <script>
                            $(".class_xuekefenlei21").val($(".class_xuekefenlei21").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        卷号

                        <input type="text" class="form-control" style="" name="juanhao" value="${param.juanhao}" />
                    </div>
                    <div class="form-group">
                        期号

                        <input type="text" class="form-control" style="" name="qihao" value="${param.qihao}" />
                    </div>
                    <div class="form-group">
                        添加人姓名

                        <input type="text" class="form-control" style="" name="tianjiarenxingming" value="${param.tianjiarenxingming}" />
                    </div>
                    <div class="form-group">
                        添加人

                        <input type="text" class="form-control" style="" name="tianjiaren" value="${param.tianjiaren}" />
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
                            <th>论文编号</th>
                            <th>论文题目</th>
                            <th>第一作者</th>
                            <th>通讯作者</th>
                            <th>发表刊物论文集</th>
                            <th>刊物类型</th>
                            <th>学科分类</th>
                            <th>卷号</th>
                            <th>期号</th>
                            <th>字数</th>
                            <th>页码范围</th>
                            <th>附件</th>
                            <th>简介</th>
                            <th>添加人姓名</th>
                            <th>添加人</th>
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
                                <td>${map.lunwenbianhao}</td>
                                <td>${map.lunwentimu}</td>
                                <td>${map.diyizuozhe}</td>
                                <td>${map.tongxunzuozhe}</td>
                                <td>${map.fabiaokanwulunwenji}</td>
                                <td>${map.addtime}</td>
                                <td>${map.xuekefenlei}</td>
                                <td>${map.juanhao}</td>
                                <td>${map.qihao}</td>
                                <td>${map.zishu}</td>
                                <td>${map.yemafanwei}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${map.fujian == '' }"> 无文件</c:when
                                        ><c:otherwise><a href="${map.fujian}" download="" target="_blank">下载</a></c:otherwise></c:choose
                                    >
                                </td>
                                <td>${map.jianjie}</td>
                                <td>${map.tianjiarenxingming}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${map.issh}</td>
                                <td align="center">
                                    <a href="lunwenchengguo_detail.do?id=${map.id}">详情</a>


                                    <c:choose>
                                        <c:when test="${map.issh == '否' }">

                                        <a href="lunwenchengguo_updt.do?id=${map.id}">编辑</a>

                                        <a href="lunwenchengguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>

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

