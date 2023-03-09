<%--
  Created by IntelliJ IDEA.
  User: cheng
  Date: 2023/3/9
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <!-- 导入 main.css、首页轮播图 css 和 js 脚本 -->
    <link rel="stylesheet" href="static/css/main.css" type="text/css"/>
    <link rel="stylesheet" href="static/css/autoplay.css" type="text/css"/>
    <script type="text/javascript" src="static/js/autoplay.js"></script>
</head>
<body>
<!-- 1.网上书城顶部 start -->
<%@ include file="head.jsp" %>
<!-- 网上书城顶部 end -->

<!--2. 网上书城菜单列表 start -->
<%@ include file="menu_seach.jsp" %>
<!-- 网上书城菜单列表 end -->

<!-- 3.网上书城首页轮播图 start -->
<div id="box_autoplay">
    <div class="list">
        <ul>
            <li><img src="static/ad/index_ad1.jpg" width="900" height="335"/></li>
            <li><img src="static/ad/index_ad2.jpg" width="900" height="335"/></li>
            <li><img src="static/ad/index_ad3.jpg" width="900" height="335"/></li>
            <li><img src="static/ad/index_ad4.jpg" width="900" height="335"/></li>
            <li><img src="static/ad/index_ad5.jpg" width="900" height="335"/></li>
        </ul>
    </div>
</div>
<!-- 网上书城首页轮播图 end -->

<!--4. 公告板和本周热卖 start -->
<div id="divcontent">
    <table width="900px" border="0" cellspacing="0">
        <tr>
            <td width="497">
                <img src="static/images/billboard.gif" width="497" height="38"/>
                <table cellspacing="0" class="ctl">
                    <tr>
                        <td width="485" height="29">
                            尊敬的网上书城用户， <br/>
                            为了让大家有更好的购物体验，3 月 25 日起，当日达业务关小黑屋回炉升级！<br/>具体开放
                            时间请留意公告，感谢大家的支持与理解，祝大家购物愉快！<br/>
                            3 月 23 日<br/>
                            传智播客 网上书城系统管理部<br/>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="padding:5px 15px 10px 40px">
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td>
                            <img src="static/images/hottitle.gif" width="126"
                                 height="29"/>
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td style="width:80%; text-align:center">
                            <a href="#">
                                <img src="static/bookcover/105.jpg" width="102"
                                     height="130" border="0"/>
                            </a>
                            <br/>
                        </td>
                        <td style="width:80%; text-align:center">
                            <a href="#">
                                <img src="static/bookcover/106.jpg" width="102"
                                     height="130" border="0"/>
                            </a>
                            <br/>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<!-- 公告板和本周热卖 end -->

<!--5. 网上书城底部 start -->
<%@ include file="footer.jsp" %>
<!-- 网上书城底部 end -->
</body>
</html>
