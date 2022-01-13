<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%--%>
<%--    String basePath = request.getScheme() + "://" +--%>
<%--            request.getServerName() + ":" + request.getServerPort() +--%>
<%--            request.getContextPath() + "/";--%>
<%--%>--%>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.6.0.js"></script>
    <script>
        $(function () {
            alert(123);
            $("#msg1").html(456); //加载页面执行
            // 绑定事件
            $("#bt1").click(function() {
                $.ajax({
                    url:"myServlet02.do",
                    type:"get",
                    dataType:"json",
                    async:true, // true为异步
                    success:function (data){
                        // 回调函数,后台执行完毕后,该函数执行
                        // $("#msg").html(data);
                        alert(data.str1);
                    }
                })
            })
        })

    </script>
</head>
<body>
<br/><br/>
<a href="student/save.do">添加操作</a><br/><br/>
<a href="student/unpdate.do">修改操作</a><br/><br/>
<a href="student/delete.do">删除操作</a><br/><br/>
<a href="student/select.do">查询操作</a><br/><br/>

</body>
</html>
