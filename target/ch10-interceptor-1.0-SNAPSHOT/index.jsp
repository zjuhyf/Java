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

<button id="bt1">点击</button>
<br/>
<br/>
<div id="msg" style="width: 200px;height: 200px;background-color: pink">
</div>
123123123abc
<div id="msg1" style="width: 200px;height: 200px;background-color: pink">
</div>
</body>
</html>
