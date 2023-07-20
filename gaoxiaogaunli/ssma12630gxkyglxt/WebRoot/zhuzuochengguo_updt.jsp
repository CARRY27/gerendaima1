<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑著作成果:</div>
            <div class="panel-body">
                <form action="zhuzuochengguoupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">作者姓名<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入作者姓名"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写作者姓名"
                                    id="zuozhexingming"
                                    name="zuozhexingming"
                                    value="${Info.html(mmm.zuozhexingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">著作名称<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入著作名称"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写著作名称"
                                    id="zhuzuomingcheng"
                                    name="zhuzuomingcheng"
                                    value="${Info.html(mmm.zhuzuomingcheng)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学科类别<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入学科类别"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写学科类别"
                                    id="xuekeleibie"
                                    name="xuekeleibie"
                                    value="${Info.html(mmm.xuekeleibie)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">依托项目<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <textarea
                                    style="width: 80%; height: 120px"
                                    class="form-control"
                                    placeholder="输入依托项目"
                                    data-rule-required="true"
                                    data-msg-required="请填写依托项目"
                                    id="yituoxiangmu"
                                    name="yituoxiangmu"
                                >
${Info.html(mmm.yituoxiangmu)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">著作数字(千字)</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入著作数字"
                                    style="width: 150px"
                                    step="0.01"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="zhuzuoshuzi"
                                    name="zhuzuoshuzi"
                                    value="${Info.html(mmm.zhuzuoshuzi)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">出版社<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入出版社"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写出版社"
                                    id="chubanshe"
                                    name="chubanshe"
                                    value="${Info.html(mmm.chubanshe)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">ISBN号<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入ISBN号"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写ISBN号"
                                    id="isbnhao"
                                    name="isbnhao"
                                    value="${Info.html(mmm.isbnhao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">出版社类别<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_chubansheleibie37"
                                    data-value="${Info.html(mmm.chubansheleibie)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写出版社类别"
                                    id="chubansheleibie"
                                    name="chubansheleibie"
                                    style="width: 250px"
                                >
                                    <option value="A类">A类</option>
                                    <option value="B类">B类</option>
                                </select>
                                <script>
                                    $(".class_chubansheleibie37").val($(".class_chubansheleibie37").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">著作类别<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_zhuzuoleibie38"
                                    data-value="${Info.html(mmm.zhuzuoleibie)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写著作类别"
                                    id="zhuzuoleibie"
                                    name="zhuzuoleibie"
                                    style="width: 250px"
                                >
                                    <option value="学术专著">学术专著</option>
                                    <option value="其他编著">其他编著</option>
                                </select>
                                <script>
                                    $(".class_zhuzuoleibie38").val($(".class_zhuzuoleibie38").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">分值<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_fenzhi39"
                                    data-value="${Info.html(mmm.fenzhi)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写分值"
                                    id="fenzhi"
                                    name="fenzhi"
                                    style="width: 250px"
                                >
                                    <option value="120">120</option>
                                    <option value="80">80</option>
                                    <option value="30">30</option>
                                    <option value="20">20</option>
                                </select>
                                <script>
                                    $(".class_fenzhi39").val($(".class_fenzhi39").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">本人排序<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_benrenpaixu40"
                                    data-value="${Info.html(mmm.benrenpaixu)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写本人排序"
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
                                    $(".class_benrenpaixu40").val($(".class_benrenpaixu40").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">是否第一作者<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_shifoudiyizuozhe41"
                                    data-value="${Info.html(mmm.shifoudiyizuozhe)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写是否第一作者"
                                    id="shifoudiyizuozhe"
                                    name="shifoudiyizuozhe"
                                    style="width: 250px"
                                >
                                    <option value="是">是</option>
                                    <option value="否">否</option>
                                </select>
                                <script>
                                    $(".class_shifoudiyizuozhe41").val($(".class_shifoudiyizuozhe41").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">折算后分值<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入折算后分值"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写折算后分值"
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
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">分值分配<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入分值分配"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写分值分配"
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
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">归档号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入归档号"
                                    style="width: 150px"
                                    id="guidanghao"
                                    name="guidanghao"
                                    value="${Info.html(mmm.guidanghao)}"
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

