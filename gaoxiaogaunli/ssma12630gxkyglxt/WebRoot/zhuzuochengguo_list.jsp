<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 著作成果 </span>
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
                        作者姓名

                        <input type="text" class="form-control" style="" name="zuozhexingming" value="${param.zuozhexingming}" />
                    </div>
                    <div class="form-group">
                        出版社

                        <input type="text" class="form-control" style="" name="chubanshe" value="${param.chubanshe}" />
                    </div>
                    <div class="form-group">
                        ISBN号

                        <input type="text" class="form-control" style="" name="isbnhao" value="${param.isbnhao}" />
                    </div>
                    <div class="form-group">
                        出版社类别

                        <select
                            class="form-control class_chubansheleibie24"
                            data-value="${param.chubansheleibie}"
                            data-rule-required="true"
                            data-msg-required="请填写出版社类别"
                            id="chubansheleibie"
                            name="chubansheleibie"
                        >
                            <option value="">请选择</option>
                            <option value="A类">A类</option>
                            <option value="B类">B类</option>
                        </select>
                        <script>
                            $(".class_chubansheleibie24").val($(".class_chubansheleibie24").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        著作类别

                        <select
                            class="form-control class_zhuzuoleibie25"
                            data-value="${param.zhuzuoleibie}"
                            data-rule-required="true"
                            data-msg-required="请填写著作类别"
                            id="zhuzuoleibie"
                            name="zhuzuoleibie"
                        >
                            <option value="">请选择</option>
                            <option value="学术专著">学术专著</option>
                            <option value="其他编著">其他编著</option>
                        </select>
                        <script>
                            $(".class_zhuzuoleibie25").val($(".class_zhuzuoleibie25").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        分值

                        <select class="form-control class_fenzhi26" data-value="${param.fenzhi}" data-rule-required="true" data-msg-required="请填写分值" id="fenzhi" name="fenzhi">
                            <option value="">请选择</option>
                            <option value="120">120</option>
                            <option value="80">80</option>
                            <option value="30">30</option>
                            <option value="20">20</option>
                        </select>
                        <script>
                            $(".class_fenzhi26").val($(".class_fenzhi26").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        本人排序

                        <select
                            class="form-control class_benrenpaixu27"
                            data-value="${param.benrenpaixu}"
                            data-rule-required="true"
                            data-msg-required="请填写本人排序"
                            id="benrenpaixu"
                            name="benrenpaixu"
                        >
                            <option value="">请选择</option>
                            <option value="第一">第一</option>
                            <option value="第二">第二</option>
                            <option value="第三">第三</option>
                            <option value="第四">第四</option>
                        </select>
                        <script>
                            $(".class_benrenpaixu27").val($(".class_benrenpaixu27").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        添加人

                        <input type="text" class="form-control" style="" name="tianjiaren" value="${param.tianjiaren}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="zhuzuoshuzi">按著作数字</option>
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
                            <th>作者姓名</th>
                            <th>著作名称</th>
                            <th>出版社</th>
                            <th>ISBN号</th>
                            <th>出版社类别</th>
                            <th>著作类别</th>
                            <th>分值</th>
                            <th>本人排序</th>
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
                                <td>${map.zuozhexingming}</td>
                                <td>${map.zhuzuomingcheng}</td>
                                <td>${map.chubanshe}</td>
                                <td>${map.isbnhao}</td>
                                <td>${map.chubansheleibie}</td>
                                <td>${map.zhuzuoleibie}</td>
                                <td>${map.fenzhi}</td>
                                <td>${map.benrenpaixu}</td>
                                <td>${map.tianjiaren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td>
                                    ${map.issh}
                                    <a href="sh.do?id=${map.id}&yuan=${map.issh}&tablename=zhuzuochengguo">
                                        <c:choose> <c:when test="${map.issh == '是' }"> 取消审核 </c:when><c:otherwise> 审核 </c:otherwise></c:choose>
                                    </a>
                                </td>
                                <td align="center">
                                    <a href="zhuzuochengguo_detail.do?id=${map.id}">详情</a>

                                    <a href="zhuzuochengguo_updt.do?id=${map.id}">编辑</a>

                                    <a href="zhuzuochengguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

