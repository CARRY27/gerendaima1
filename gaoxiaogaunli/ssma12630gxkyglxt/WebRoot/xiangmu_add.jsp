<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css" />
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">添加项目:</div>
            <div class="panel-body">
                <form action="xiangmuinsert.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目编号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入项目编号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="xiangmubianhao"
                                    name="xiangmubianhao"
                                    value="${Info.getID()}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目名称<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入项目名称"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写项目名称"
                                    id="xiangmumingcheng"
                                    name="xiangmumingcheng"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">起日期</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" readonly="readonly"
                                id="qiriqi" name="qiriqi" value="${Info.date("yyyy-MM-dd")}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">止日期</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" readonly="readonly"
                                id="zhiriqi" name="zhiriqi" value="${Info.date("yyyy-MM-dd")}"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成果形式</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入成果形式" style="width: 250px" id="chengguoxingshi" name="chengguoxingshi" value="" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入开发人员"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="kaifarenyuan"
                                    name="kaifarenyuan"
                                    value="${sessionScope.username}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员姓名<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入开发人员姓名"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写开发人员姓名"
                                    id="kaifarenyuanxingming"
                                    name="kaifarenyuanxingming"
                                    value="${sessionScope.xingming}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">申请经费<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入申请经费"
                                    style="width: 150px"
                                    step="0.01"
                                    data-rule-required="true"
                                    data-msg-required="请填写申请经费"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="shenqingjingfei"
                                    name="shenqingjingfei"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目组主要成员</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_xiangmuzuzhuyaochengyuan9"
                                    data-value=""
                                    id="xiangmuzuzhuyaochengyuan"
                                    name="xiangmuzuzhuyaochengyuan"
                                    multiple="multiple"
                                    style="height: 150px; width: 250px"
                                >
                                    <ssm:sql var="select" type="select">SELECT * FROM keyanrenyuan ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.yonghuming}">${m.yonghuming}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目详情说明</label>
                            <div class="col-sm-10">
                                <textarea id="xiangmuxiangqingshuoming" name="xiangmuxiangqingshuoming" style="max-width: 750px; width: 100%; height: 300px"></textarea>
                                <script>
                                    (function () {
                                        var um = UM.getEditor("xiangmuxiangqingshuoming");
                                    })();
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input type="hidden" name="zhuangtai" id="zhuangtai" value="待审核" />

                                <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                                <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            </div>
                        </div>
                    </div>

                    <!--form标签结束-->
                </form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>

    <script>
        $(function () {
            $("#form1").validate();
        });
    </script>
</div>
<%@ include file="foot.jsp" %>

