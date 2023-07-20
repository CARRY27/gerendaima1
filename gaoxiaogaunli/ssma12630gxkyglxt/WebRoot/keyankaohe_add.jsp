<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link href="js/tags/tags.css" rel="stylesheet" />
<script src="js/tags/tags.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">添加科研考核:</div>
            <div class="panel-body">
                <form action="keyankaoheinsert.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="xiangmuid" value="${param.id}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目编号</label>
                            <div class="col-sm-10">
                                ${readMap.xiangmubianhao}<input type="hidden" id="xiangmubianhao" name="xiangmubianhao" value="${Info.html(readMap.xiangmubianhao)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目名称</label>
                            <div class="col-sm-10">
                                ${readMap.xiangmumingcheng}<input type="hidden" id="xiangmumingcheng" name="xiangmumingcheng" value="${Info.html(readMap.xiangmumingcheng)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">起日期</label>
                            <div class="col-sm-10">${readMap.qiriqi}<input type="hidden" id="qiriqi" name="qiriqi" value="${Info.html(readMap.qiriqi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">止日期</label>
                            <div class="col-sm-10">${readMap.zhiriqi}<input type="hidden" id="zhiriqi" name="zhiriqi" value="${Info.html(readMap.zhiriqi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成果形式</label>
                            <div class="col-sm-10">
                                ${readMap.chengguoxingshi}<input type="hidden" id="chengguoxingshi" name="chengguoxingshi" value="${Info.html(readMap.chengguoxingshi)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员</label>
                            <div class="col-sm-10">
                                ${readMap.kaifarenyuan}<input type="hidden" id="kaifarenyuan" name="kaifarenyuan" value="${Info.html(readMap.kaifarenyuan)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员姓名</label>
                            <div class="col-sm-10">
                                ${readMap.kaifarenyuanxingming}<input
                                    type="hidden"
                                    id="kaifarenyuanxingming"
                                    name="kaifarenyuanxingming"
                                    value="${Info.html(readMap.kaifarenyuanxingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">考核结果</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入考核结果" id="kaohejieguo" name="kaohejieguo"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">获得奖励<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input data-rule-required="true" data-msg-required="请填写获得奖励" id="huodejiangli" name="huodejiangli" value="" type="text" />
                                <script>
                                    $(function () {
                                        $("#huodejiangli").tagInput();
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">获得积分<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入获得积分"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写获得积分"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="huodejifen"
                                    name="huodejifen"
                                    value=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">考核人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入考核人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="kaoheren"
                                    name="kaoheren"
                                    value="${sessionScope.username}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="referer" id="referers" class="referers" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <script>
                                    $(function () {
                                        $("input.referers").val(document.referrer);
                                    });
                                </script>

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

