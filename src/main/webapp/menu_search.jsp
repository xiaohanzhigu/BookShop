<%--
  Created by IntelliJ IDEA.
  User: cheng
  Date: 2023/3/9
  Time: 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>menu</title>
    <!-- 导入 main.css、首页轮播图 css 和 js 脚本 -->
    <%--    <link rel="stylesheet" href="static/css/main.css" type="text/css"/>--%>
    <%--    <link rel="stylesheet" href="static/css/autoplay.css" type="text/css"/>--%>
    <%--    <script type="text/javascript" src="static/js/autoplay.js"></script>--%>
</head>
<body>
<div id="divmenu">
    <a href="#">文学</a>
    <a href="#">生活</a>
    <a href="#">计算机</a>
    <a href="#">外语</a>
    <a href="#">经管</a>
    <a href="#">励志</a>
    <a href="#">社科</a>
    <a href="#">学术</a>
    <a href="#">少儿</a>
    <a href="#">艺术</a>
    <a href="#">原版</a>
    <a href="#">科技</a>
    <a href="#">考试</a>
    <a href="#">生活百科</a>
    <a href="#" style="color:#FFFF00">全部商品目录</a>
</div>
<div id="divsearch">
    <form action="#" id="searchform">
        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td style="text-align:right; padding-right:220px">
                    Search
                    <input type="text" name="textfield" class="inputtable"
                           id="textfield" value="请输入书名"
                           onmouseover="this.focus();"
                           onclick="my_click(this, 'textfield');"
                           onBlur="my_blur(this, 'textfield');"/>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/serchbutton.gif" border="0"
                             style="margin-bottom:-4px" onclick="search()"/>
                    </a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>;
</html>
