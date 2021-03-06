<%@page contentType="text/html;UTF-8" pageEncoding="UTF-8" isErrorPage="false" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<%--受限资源--%>
<h1>系统主页</h1>
<a href="${pageContext.request.contextPath}/user/logout">退出登录</a>
<ul>
    <shiro:hasRole name="user">
        <li><a href="#">用户管理</a></li>
        <ul>
            <shiro:hasPermission name="user:save:*">
                <li><a href="#">增加</a></li>
            </shiro:hasPermission>
            <shiro:hasPermission name="user:delete:*">
                <li><a href="#">删除</a></li>
            </shiro:hasPermission>
            <shiro:hasPermission name="user:update:*">
                <li><a href="#">修改</a></li>
            </shiro:hasPermission>
            <shiro:hasPermission name="user:find:*">
                <li><a href="#">查询</a></li>
            </shiro:hasPermission>
        </ul>
    </shiro:hasRole>
    <shiro:hasRole name="admin">
        <li><a href="#">商品管理</a></li>
        <li><a href="#">订单管理</a></li>
        <li><a href="#">物流管理</a></li>
    </shiro:hasRole>

</ul>
</body>
</html>
