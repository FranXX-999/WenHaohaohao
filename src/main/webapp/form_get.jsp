<%--
  Created by IntelliJ IDEA.
  User: 19802
  Date: 2020/11/1
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>
<%String tel = request.getParameter("phone");
    String text = request.getParameter("email");%>
<form class="layui-form" action="" method="get">
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">验证手机</label>
            <div class="layui-input-inline">
                <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input"
                       value="<%=tel%>">
            </div>
        </div>

        <div class="layui-inline">
            <label class="layui-form-label">验证邮箱</label>
            <div class="layui-input-inline">
                <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input"
                       value="<%=text%>">
            </div>
        </div>
    </div>
</form>

<script src="layui/layui.all.js"></script>
</body>
</html>