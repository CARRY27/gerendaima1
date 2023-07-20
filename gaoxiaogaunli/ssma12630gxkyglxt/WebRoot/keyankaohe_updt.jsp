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
            <div class="panel-heading">编辑科研考核:</div>
            <div class="panel-body">
                <form action="keyankaoheupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="xiangmuid" value="${mmm.xiangmuid}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目编号</label>
                            <div class="col-sm-10">
                                ${mmm.xiangmubianhao}<input type="hidden" id="xiangmubianhao" name="xiangmubianhao" value="${Info.html(mmm.xiangmubianhao)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">项目名称</label>
                            <div class="col-sm-10">
                                ${mmm.xiangmumingcheng}<input type="hidden" id="xiangmumingcheng" name="xiangmumingcheng" value="${Info.html(mmm.xiangmumingcheng)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">起日期</label>
                            <div class="col-sm-10">${mmm.qiriqi}<input type="hidden" id="qiriqi" name="qiriqi" value="${Info.html(mmm.qiriqi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">止日期</label>
                            <div class="col-sm-10">${mmm.zhiriqi}<input type="hidden" id="zhiriqi" name="zhiriqi" value="${Info.html(mmm.zhiriqi)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成果形式</label>
                            <div class="col-sm-10">
                                ${mmm.chengguoxingshi}<input type="hidden" id="chengguoxingshi" name="chengguoxingshi" value="${Info.html(mmm.chengguoxingshi)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员</label>
                            <div class="col-sm-10">${mmm.kaifarenyuan}<input type="hidden" id="kaifarenyuan" name="kaifarenyuan" value="${Info.html(mmm.kaifarenyuan)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">开发人员姓名</label>
                            <div class="col-sm-10">
                                ${mmm.kaifarenyuanxingming}<input
                                    type="hidden"
                                    id="kaifarenyuanxingming"
                                    name="kaifarenyuanxingming"
                                    value="${Info.html(mmm.kaifarenyuanxingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">考核结果</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入考核结果" id="kaohejieguo" name="kaohejieguo">
${Info.html(mmm.kaohejieguo)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">获得奖励<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    data-rule-required="true"
                                    data-msg-required="请填写获得奖励"
                                    id="huodejiangli"
                                    name="huodejiangli"
                                    value="${Info.html(mmm.huodejiangli)}"
                                    type="text"
                                />
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
                                    value="${Info.html(mmm.huodejifen)}"
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
                                    value="${mmm.kaoheren}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="${mmm.id}" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="${updtself}" type="hidden" />

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

