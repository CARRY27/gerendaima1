<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 专利成果 </span>
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
                        成果类别

                        <select class="form-control class_chengguoleibie50" data-value="${param.chengguoleibie}" id="chengguoleibie" name="chengguoleibie">
                            <option value="">请选择</option>
                            <option value="发明专利">发明专利</option>
                            <option value="实用新型">实用新型</option>
                            <option value="计算机软件著作权登记">计算机软件著作权登记</option>
                            <option value="外观设计">外观设计</option>
                            <option value="注册商标专利">注册商标专利</option>
                            <option value="集成电路版样登记">集成电路版样登记</option>
                        </select>
                        <script>
                            $(".class_chengguoleibie50").val($(".class_chengguoleibie50").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        依托项目

                        <input type="text" class="form-control" name="yituoxiangmu" value="${param.yituoxiangmu}" />
                    </div>
                    <div class="form-group">
                        专利技术分值

                        <select class="form-control class_zhuanlijishufenzhi51" data-value="${param.zhuanlijishufenzhi}" id="zhuanlijishufenzhi" name="zhuanlijishufenzhi">
                            <option value="">请选择</option>
                            <option value="100">100</option>
                            <option value="30">30</option>
                            <option value="15">15</option>
                        </select>
                        <script>
                            $(".class_zhuanlijishufenzhi51").val($(".class_zhuanlijishufenzhi51").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        本人排序

                        <select class="form-control class_benrenpaixu52" data-value="${param.benrenpaixu}" id="benrenpaixu" name="benrenpaixu">
                            <option value="">请选择</option>
                            <option value="第一">第一</option>
                            <option value="第二">第二</option>
                            <option value="第三">第三</option>
                            <option value="第四">第四</option>
                        </select>
                        <script>
                            $(".class_benrenpaixu52").val($(".class_benrenpaixu52").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        是否第一单位

                        <select class="form-control class_shifoudiyidanwei53" data-value="${param.shifoudiyidanwei}" id="shifoudiyidanwei" name="shifoudiyidanwei">
                            <option value="">请选择</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                        <script>
                            $(".class_shifoudiyidanwei53").val($(".class_shifoudiyidanwei53").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        添加人

                        <input type="text" class="form-control" style="" name="tianjiaren" value="${param.tianjiaren}" />
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

                    <button type="button" class="btn btn-default" onclick="exportXls()">导出</button>
                    <script>
                        function exportXls() {
                            var param = $("#formSearch").serialize();
                            var url = "zhuanlichengguo_export.do";
                            url += (url.indexOf("?") == -1 ? "?" : "&") + param;
                            location.href = url;
                        }
                    </script>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>成果名称</th>
                            <th>成果类别</th>
                            <th>依托项目</th>
                            <th>专利技术分值</th>
                            <th>本人排序</th>
                            <th>是否第一单位</th>
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
                                <td>${map.chengguoleibie}</td>
                                <td>${map.yituoxiangmu}</td>
                                <td>${map.zhuanlijishufenzhi}</td>
                                <td>${map.benrenpaixu}</td>
                                <td>${map.shifoudiyidanwei}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td>${map.issh}</td>
                                <td align="center">
                                    <a href="zhuanlichengguo_detail.do?id=${map.id}">详情</a>


                                    <c:choose>
                                        <c:when test="${map.issh == '否' }">

                                            <a href="zhuanlichengguo_updt.do?id=${map.id}">编辑</a>

                                            <a href="zhuanlichengguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

