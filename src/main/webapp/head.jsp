<%--
  Created by IntelliJ IDEA.
  User: cheng
  Date: 2023/3/9
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>head</title>
    <!-- 导入 main.css、首页轮播图 css 和 js 脚本 -->
    <%--    <link rel="stylesheet" href="static/css/main.css" type="text/css"/>--%>
    <%--    <link rel="stylesheet" href="static/css/autoplay.css" type="text/css"/>--%>
    <%--    <script type="text/javascript" src="static/js/autoplay.js"></script>--%>
</head>
<body>
<div id="divhead">
    <table cellspacing="0" class="headtable">
        <tr>
            <td>
                <a href="#">
                    <img src="static/images/logo.png" width="200" height="60" border="0"
                    />
                </a>
            </td>
            <td style="text-align:right">
                <img src="static/images/cart.gif" width="26" height="23"
                     style="margin-bottom:-4px"/>&nbsp;<a href="#">购物车</a>
                | <a href="#">帮助中心</a>
                | <a href="#">我的帐户</a>
                | <a href="register.jsp">新用户注册</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
