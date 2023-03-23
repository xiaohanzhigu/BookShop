<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>电子书城</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" type="text/css" />
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/my.js"></script>
</head>

<body class="main">
<jsp:include page="head.jsp" />
<jsp:include page="menu_search.jsp" />

<div id="divcontent">
  <table width="850px" border="0" cellspacing="0">
    <tr>
      <td style="padding:30px; text-align:center">
        <table width="60%" border="0" cellspacing="0" style="margin-top:70px">
          <tr>
            <td style="width:98px">
              <img src="${pageContext.request.contextPath}/static/images/IconTexto_WebDev_009.jpg" width="128" height="128" />
            </td>
            <td style="padding-top:30px">
              <font style="font-weight:bold; color:#FF0000">注册成功！</font><br />
              <br />
              <a href="${pageContext.request.contextPath }/index.jsp">
                <span id="second"></span>转跳回首页
              </a>
            </td>
          </tr>
        </table>
        <h1>&nbsp;</h1></td>
    </tr>
  </table>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>

