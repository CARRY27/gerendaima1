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
            <div class="panel-heading">编辑专利成果:</div>
            <div class="panel-body">
                <form action="zhuanlichengguoupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成果名称</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入成果名称"
                                    style="width: 250px"
                                    id="chengguomingcheng"
                                    name="chengguomingcheng"
                                    value="${Info.html(mmm.chengguomingcheng)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成果类别</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_chengguoleibie58"
                                    data-value="${Info.html(mmm.chengguoleibie)}"
                                    id="chengguoleibie"
                                    name="chengguoleibie"
                                    style="width: 250px"
                                >
                                    <option value="发明专利">发明专利</option>
                                    <option value="实用新型">实用新型</option>
                                    <option value="计算机软件著作权登记">计算机软件著作权登记</option>
                                    <option value="外观设计">外观设计</option>
                                    <option value="注册商标专利">注册商标专利</option>
                                    <option value="集成电路版样登记">集成电路版样登记</option>
                                </select>
                                <script>
                                    $(".class_chengguoleibie58").val($(".class_chengguoleibie58").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">所属学科</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入所属学科"
                                    style="width: 150px"
                                    id="suoshuxueke"
                                    name="suoshuxueke"
                                    value="${Info.html(mmm.suoshuxueke)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">依托项目</label>
                            <div class="col-sm-10">
                                <input id="yituoxiangmu" name="yituoxiangmu" value="${Info.html(mmm.yituoxiangmu)}" type="text" />
                                <script>
                                    $(function () {
                                        $("#yituoxiangmu").tagInput();
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专利号<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入专利号"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写专利号"
                                    id="zhuanlihao"
                                    name="zhuanlihao"
                                    value="${Info.html(mmm.zhuanlihao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专利技术分值</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_zhuanlijishufenzhi59"
                                    data-value="${Info.html(mmm.zhuanlijishufenzhi)}"
                                    id="zhuanlijishufenzhi"
                                    name="zhuanlijishufenzhi"
                                    style="width: 250px"
                                >
                                    <option value="100">100</option>
                                    <option value="30">30</option>
                                    <option value="15">15</option>
                                </select>
                                <script>
                                    $(".class_zhuanlijishufenzhi59").val($(".class_zhuanlijishufenzhi59").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">本人排序</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_benrenpaixu60"
                                    data-value="${Info.html(mmm.benrenpaixu)}"
                                    id="benrenpaixu"
                                    name="benrenpaixu"
                                    style="width: 250px"
                                >
                                    <option value="第一">第一</option>
                                    <option value="第二">第二</option>
                                    <option value="第三">第三</option>
                                    <option value="第四">第四</option>
                                </select>
                                <script>
                                    $(".class_benrenpaixu60").val($(".class_benrenpaixu60").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">是否第一单位</label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_shifoudiyidanwei61"
                                    data-value="${Info.html(mmm.shifoudiyidanwei)}"
                                    id="shifoudiyidanwei"
                                    name="shifoudiyidanwei"
                                    style="width: 250px"
                                >
                                    <option value="是">是</option>
                                    <option value="否">否</option>
                                </select>
                                <script>
                                    $(".class_shifoudiyidanwei61").val($(".class_shifoudiyidanwei61").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">折算后分值</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入折算后分值"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="zhesuanhoufenzhi"
                                    name="zhesuanhoufenzhi"
                                    value="${Info.html(mmm.zhesuanhoufenzhi)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">分值分配</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入分值分配"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="fenzhifenpei"
                                    name="fenzhifenpei"
                                    value="${Info.html(mmm.fenzhifenpei)}"
                                />
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
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">添加人</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入添加人"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="tianjiaren"
                                    name="tianjiaren"
                                    value="${mmm.tianjiaren}"
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

