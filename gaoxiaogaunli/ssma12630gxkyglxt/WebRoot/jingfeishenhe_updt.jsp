<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑经费审核:</div>
            <div class="panel-body">
                <form action="jingfeishenheupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="jingfeiid" value="${mmm.jingfeiid}" />
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
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">申请经费</label>
                            <div class="col-sm-10">
                                ${mmm.shenqingjingfei}<input type="hidden" id="shenqingjingfei" name="shenqingjingfei" value="${Info.html(mmm.shenqingjingfei)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">当前总额</label>
                            <div class="col-sm-10">${mmm.dangqianzonge}<input type="hidden" id="dangqianzonge" name="dangqianzonge" value="${Info.html(mmm.dangqianzonge)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">尚结余</label>
                            <div class="col-sm-10">${mmm.shangjieyu}<input type="hidden" id="shangjieyu" name="shangjieyu" value="${Info.html(mmm.shangjieyu)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">申请使用时间</label>
                            <div class="col-sm-10">
                                ${mmm.shenqingshiyongshijian}<input
                                    type="hidden"
                                    id="shenqingshiyongshijian"
                                    name="shenqingshiyongshijian"
                                    value="${Info.html(mmm.shenqingshiyongshijian)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">使用科研经费原因</label>
                            <div class="col-sm-10">
                                ${mmm.shiyongkeyanjingfeiyuanyin}<input
                                    type="hidden"
                                    id="shiyongkeyanjingfeiyuanyin"
                                    name="shiyongkeyanjingfeiyuanyin"
                                    value="${Info.html(mmm.shiyongkeyanjingfeiyuanyin)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">经费支出所属</label>
                            <div class="col-sm-10">
                                ${mmm.jingfeizhichusuoshu}<input type="hidden" id="jingfeizhichusuoshu" name="jingfeizhichusuoshu" value="${Info.html(mmm.jingfeizhichusuoshu)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">申请人</label>
                            <div class="col-sm-10">${mmm.shenqingren}<input type="hidden" id="shenqingren" name="shenqingren" value="${Info.html(mmm.shenqingren)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">审核</label>
                            <div class="col-sm-10">
                                <select class="form-control class_shenhe19" data-value="${Info.html(mmm.shenhe)}" id="shenhe" name="shenhe" style="width: 250px">
                                    <option value="通过">通过</option>
                                    <option value="驳回">驳回</option>
                                </select>
                                <script>
                                    $(".class_shenhe19").val($(".class_shenhe19").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">备注</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入备注" id="beizhu" name="beizhu">
${Info.html(mmm.beizhu)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">审核人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入审核人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="shenheren"
                                    name="shenheren"
                                    value="${mmm.shenheren}"
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

