<%--
  Created by IntelliJ IDEA.
  User: cheng
  Date: 2023/3/9
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <!-- 导入 main.css、首页轮播图 css 和 js 脚本 -->
    <link rel="stylesheet" href="static/css/main.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/autoplay.css" type="text/css"/>
    <script type="text/javascript" src="static/js/autoplay.js"></script>
</head>
<body>
<div class="main">
    <!-- 导入头部 -->
    <%@ include file="head.jsp" %>

<%--    导入搜索框--%>
    <%@ include file="menu_seach.jsp" %>

    <!--登录开始-->
    <div id="divcontent">
        <form action="" method="post">
            <table width="900px" border="0" cellspacing="0">
                <tr>
                    <td style="padding:30px"><div style="height:470px">
                        <b>&nbsp;&nbsp;首页&nbsp;&raquo;&nbsp;个人用户登录</b>
                        <div>
                            <table width="85%" border="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <div id="logindiv">
                                            <table width="100%" border="0" cellspacing="0">
                                                <tr>
                                                    <td style="text-align:center; padding-top:20px">
                                                        <img src="static/images/logintitle.gif" width="150" height="30" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center;padding-top:20px;"><font
<%--                                                            color="#ff0000">${requestScope["register_message"]}</font>--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align:center">
                                                        <table width="80%" border="0" cellspacing="0"
                                                               style="margin-top:15px ;margin-left:auto; margin-right:auto">
                                                            <tr>
                                                                <td
                                                                        style="text-align:right; padding-top:5px; width:25%">用户名：</td>
                                                                <td style="text-align:left"><input name="username"
                                                                                                   type="text"class="textinput" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align:right; padding-top:5px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                                                                <td style="text-align:left"><input name="password"
                                                                                                   type="password" class="textinput" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2" style="text-align:center">
                                                                    <input type="checkbox" name="checkbox" value="checkbox01" />记住用户名
                                                                    &nbsp;&nbsp;
                                                                    <input type="checkbox" name="autologin" value="checkbox02" />两周内自动登录
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2"
                                                                    style="padding-top:10px; text-align:center">
                                                                    <input name="image" type="image" onclick="return formcheck()"
                                                                           src="static/images/loginbutton.gif" width="90" height="30" />
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" style="padding-top:10px">
                                                                    <img src="static/images/loginline.gif" width="241" height="10" />
                                                                </td>
                                                            </tr>
                                                             <tr>
                                                                <td colspan="2"
                                                                    style="padding-top:10px; text-align:center"><a
                                                                    href="register.jsp"><img name="image"
                                                                        src="static/images/signupbutton.gif" width="135" height="33" />
                                                                </a></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div></td>
                                    <td style="text-align:left; padding-top:30px; width:60%"><h1>您还没有注册？</h1>
                                        <p>注册新用户，享受更优惠价格!</p>
                                        <p>千种图书，供你挑选！注册即享受丰富折扣和优惠，便宜有好货！超过万本图书任您选。</p>
                                        <p>超人气社区！精彩活动每一天。买卖更安心！支付宝交易超安全。</p>
                                        <p style="text-align:left">
                                            <a href="static/register.jsp">
                                                <img src="static/images/signupbutton.gif" width="135" height="33" />
                                            </a>
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <!--登录结束-->

    <%@include file="footer.jsp" %>
</div>
</body>
</html>
