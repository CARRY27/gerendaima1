
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.spring.util.Request" %>
<%@ page import="com.spring.util.Query" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/datepicker/WdatePicker.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>
</head>
<body>

<%--<form action="?" method="get">--%>
<%--    开始日期:<input sype="text" name="kaishiriqi" value="<%=Request.get("kaishiriqi")%>"--%>
<%--                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">--%>
<%--    结束日期:<input sype="text" name="jieshuriqi" value="<%=Request.get("jieshuriqi")%>"--%>
<%--                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">--%>
<%--    <button type="submit">提交</button>--%>
<%--    &lt;%&ndash;  <button onclick="window.print()" class="btn btn-default">打印</button>&ndash;%&gt;--%>
<%--</form>--%>

<%
//    String where = "1=1 ";
//    if (!Request.get("kaishiriqi").equals("")) {
//        where += " and addtime>='" + Request.get("kaishiriqi") + " 00:00:00' ";
//    }
//    if (!Request.get("jieshuriqi").equals("")) {
//        where += " and addtime<='" + Request.get("jieshuriqi") + " 23:59:59' ";
//    }
    List<HashMap> list = Query.make("keyankaohe").field("kaifarenyuan,kaifarenyuanxingming, COALESCE(sum(huodejifen),0) sumjf")
            .group("kaifarenyuan")
            .order("sumjf desc")
            .select();
%>
<h1>报表</h1>
<table class="table">
    <thead>
    <tr>
        <th>用户名</th>
        <th>姓名</th>
        <th>获得积分</th>
    </tr>
    </thead>
    <tbody>
    <%for (HashMap map:list)  {%>
    <tr>
        <td><%=map.get("kaifarenyuan")%></td>
        <td><%=map.get("kaifarenyuanxingming")%></td>
        <td><%=map.get("sumjf")%></td>
    </tr>
    <% } %>
    </tbody>



</table>
<h1>统计图</h1>
<div id="container" style="min-width:400px;height:400px"></div>
<script>
    var chart = Highcharts.chart('container', {
        chart: {
            type: 'bar'
        },
        title: {
            text: '考核积分统计'
        },
        subtitle: {
            text: ''
        },
        xAxis: {
            categories: [
                <% for(HashMap map : list){ %>
                '<%=map.get("kaifarenyuanxingming")%>',
                <% } %>],
            title: {
                text: null
            }
        },
        yAxis: {
            min: 0,
            title: {
                text: '积分',
                align: 'high'
            },
            labels: {
                overflow: 'justify'
            }
        },
        tooltip: {
            valueSuffix: ' 分'
        },
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true,
                    allowOverlap: true // 允许数据标签重叠
                }
            }
        },
        legend: {
            layout: 'vertical',
            align: 'right',
            verticalAlign: 'top',
            x: -40,
            y: 100,
            floating: true,
            borderWidth: 1,
            backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
            shadow: true
        },
        series: [{
            name: '积分',
            data: [<% for(HashMap map : list){ %>
                <%=map.get("sumjf")%>,
                <% } %>]
        },]
    });
</script>

</body>
</html>
