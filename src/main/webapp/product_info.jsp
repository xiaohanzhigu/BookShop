<%@ page language="java" contentType="text/html; charset=UTF-8"
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
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td>
        <div style="text-align:right; margin:5px 10px 5px 0px">
          <a href="${pageContext.request.contextPath }/index.jsp">首页</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;
          <a href="${pageContext.request.contextPath}/showProductByPage?category=${p.category}">&nbsp;${p.category}</a>
          &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;${p.name}
        </div>
        <table cellspacing="0" class="infocontent">
          <tr>
            <td><img src="${pageContext.request.contextPath }/static/ad/page_ad.jpg" width="900" height="84" />
              <table width="100%%" border="0" cellspacing="0">
                <tr>
                  <td width="30%">
                    <div class="divbookcover">
                      <p>
                        <img src="${pageContext.request.contextPath}${p.imgUrl}" width="213" height="269" border="0" />
                      </p>
                    </div>
                    <div style="text-align:center; margin-top:10px">
                      <a href="${pageContext.request.contextPath}/addCart?id=${p.id}">
                        <img src="${pageContext.request.contextPath }/static/images/buybutton.gif" border="0" width="100" height="25" />
                      </a>
                    </div>
                  </td>
                  <td style="padding:20px 5px 5px 5px">
                    <img src="${pageContext.request.contextPath }/static/images/miniicon3.gif" width="16" height="16" />
                    <font class="bookname">&nbsp;${p.name}</font>
                    <hr />售价：<font color="#FF0000">￥${p.price}</font>
                    <hr /> 类别：${p.category }
                    <hr />
                    <p>
                      <b>内容简介：</b>
                    </p> ${p.description}
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
