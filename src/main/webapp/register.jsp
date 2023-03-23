<%--
  Created by IntelliJ IDEA.
  User: cheng
  Date: 2023/3/9
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <!-- 导入 main.css、首页轮播图 css 和 js 脚本 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/autoplay.css" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/autoplay.js"></script>
</head>
<body>
<div class="main">
    <!-- 1.网上书城顶部 start -->
    <%@ include file="head.jsp" %>
    <!-- 网上书城顶部 end -->
    <!--2. 网上书城菜单列表 start -->
    <%@ include file="menu_seach.jsp" %>
    <!-- 网上书城菜单列表 end -->

    <!--用户注册-->
    <div id="divcontent" align="centent">
        <form action="/bookshop/register" method="post" ><%--onsubmit="return checkForm();"--%>
            <table width="850px" border="0" cellspacing="0">
                <tr>
                    <td style="padding: 30px"><h1>新用户注册</h1>
                        <table width="70%" border="0" cellspacing="2" class="upline">
                            <tr>
                                <td style="text-align: right; width: 20%">会员邮箱：</td>
                                <td styel="width:40%">
                                    <input type="text" class="textinput" id="email" name="email"
                                           onkeyup="checkEmail();"/>
                                </td>
                                <td colspan="2"><span id="emailMsg"></span><font
                                        color="#999999">请输入有效的邮箱地址</font>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">会员名：</td>
                                <td>
                                    <input type="text" class="textinput" id="username" name="username"
                                           onkeyup="checkUsername();"/>
                                </td>
                                <td colspan="2"><span id="usernameMsg"></span><font
                                        color="#999999">字母数字下滑线1到10位，不能是数字开头</font></td>
                            </tr>
                            <tr>
                                <td style="text-align: right">密码：</td>
                                <td>
                                    <input type="password" class="textinput" id="password" name="password"
                                           onkeyup="checkPassword();"/></td>
                                <td colspan="2"><span id="passwordMsg"></span><font
                                        color="#999999">字母请设置6-16位字符</font></td>
                            </tr>
                            <tr>
                                <td style="text-align: right">重复密码：</td>
                                <td>
                                    <input type="password" class="textinput" id="repassword" name="repassword"
                                           onkeyup="checkConfirm();"/>
                                <td>
                                    <sapn id="confirmMsg"></sapn>
                                    &nbsp
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:right">性别：</td>
                                <td colspan="2">&nbsp;&nbsp;
                                    <input type="radio" name="gender" value="男" checked="checked">男
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="gender" value="女">女
                                </td>
                                <td>&nbsp</td>
                            </tr>
                            <tr>
                                <td style="text-align: right">联系电话：</td>
                                <td colspan="2">
                                    <input type="text" class="textinput" style="width: 350px" name="telephone"/>
                                </td>
                                <td>&nbsp</td>
                            </tr>
                            <tr>
                                <td style="text-align: right">个人介绍：</td>
                                <td colspan="2">
                                    <textarea class="textarea" name="introduction"></textarea>
                                </td>
                                <td>&nbsp</td>
                            </tr>
                        </table>
                        <table width="70%" border="0" cellspacing="0">
                            <tr>
                                <td style="padding-top: 20px; text-aling: center">
                                    <input type="image" src="static/images/signup.gif" name="submit" border="0"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <!--5. 网上书城底部 start -->
    <%@ include file="footer.jsp" %>
    <!-- 网上书城底部 end -->
</div>
</body>
</html>
