<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.ch.test.pojo.User"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>电子书城</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/main.css" type="text/css" />
</head>
<body class="main">
<jsp:include page="head.jsp" />
<jsp:include page="menu_search.jsp" />
<div id="divpagecontent">
    <form action="${pageContext.request.contextPath}/update" method="post" onsubmit="return checkForm();">
        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td width="25%">
                    <table width="100%" border="0" cellspacing="0"
                           style="margin-top:30px">
                        <tr>
                            <td class="listtitle">我的帐户</td>
                        </tr>
                        <tr>
                            <td class="listtd">
                                <img src="${pageContext.request.contextPath }/static/images/icon1.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath }/static/modifyuserinfo.jsp">用户信息修改</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtd">
                                <img src="${pageContext.request.contextPath }/static/images/icon2.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/findOrderByUser">订单查询</a>
                            </td>
                        </tr>
                        <tr>
                            <td class="listtd">
                                <img src="${pageContext.request.contextPath }/static/images/icon3.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/logout">用戶退出</a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <div style="text-align:right; margin:5px 10px 5px 0px">
                        <a href="${pageContext.request.contextPath }/index.jsp">首页</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath }/static/myAccount.jsp">&nbsp;我的帐户</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;用户信息修改
                    </div>
                    <table cellspacing="0" class="infocontent">
                        <tr>
                            <td>
                                <table width="100%" border="0" cellspacing="2" class="upline">
                                    <tr>
                                        <td style="text-align:right">会员名：</td>
                                        <td style="padding-left:20px">${user.username}</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">会员邮箱：</td>
                                        <td colspan="2">
                                            <input name="email" type="text" value="${sessionScope.user.email}" class="textinput" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">修改密码：</td>
                                        <td><input type="password" name="password" class="textinput" /></td>
                                        <td><font color="#999999">密码设置至少6位，请区分大小写</font></td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">重复密码：</td>
                                        <td><input type="password" name="repassword" class="textinput" /></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">性别：</td>
                                        <td colspan="2">&nbsp;&nbsp;
                                            <input type="radio" name="sex" value="男" ${user.sex =='男'?'checked':'' }/> 男
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="sex" value="女"  ${user.sex =='女'?'checked':'' }/> 女
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">联系方式：</td>
                                        <td colspan="2">
                                            <input name="telephone" type="text" value="${user.telephone}" class="textinput" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">个人介绍：</td>
                                        <td colspan="2">
										<textarea class="textarea" name="introduce">
                                            ${user.introduce}
                                        </textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <table width="70%" border="0" cellspacing="0">
                                    <tr>
                                        <td style="padding-top: 20px; text-align: center">
                                            <input type="image" src="${pageContext.request.contextPath }/static/images/botton_gif_025.gif" name="submit" border="0"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
