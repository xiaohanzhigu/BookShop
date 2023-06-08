<%@ page import="com.ch.test.pojo.PageBean" %>
<%@ page import="com.ch.test.pojo.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>bookStore列表</title>
  <%--导入css --%>
  <link rel="stylesheet" href="static/css/main.css" type="text/css" />
</head>
<body class="main">
<jsp:include page="head.jsp" />
<jsp:include page="menu_search.jsp" />
<div id="divpagecontent">
  <table width="100%" border="0" cellspacing="0">
    <tr>
      <td><div style="text-align:right; margin:5px 10px 5px 0px">
        <a href="index.jsp">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;全部商品&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;图书列表
      </div>
        <table cellspacing="0" class="listcontent">
          <tr>
            <td>
              <h1>商品目录</h1>
              <hr />
              <h1>全部商品</h1>&nbsp;&nbsp;&nbsp;&nbsp;共${bean.totalCount}种商品
              <hr />
              <div style="margin-top:20px; margin-bottom:5px">
                <img src="${pageContext.request.contextPath }/client/images/productlist.gif" width="100%" height="38" />
              </div>

              <table cellspacing="0" class="booklist">
                <tr>
                  <%
                    String productId="",productName="",productImgurl="";
                    double productPrice=0;
                    PageBean bean=null;
                    bean=(PageBean)request.getAttribute("bean");
                    List<Product> productList=new ArrayList<Product>();
                    productList=bean.getList();
                    for(int i=0;i<bean.getTotalCount();i++)
                    {
                      productId=productList.get(i).getId();
                      productName=productList.get(i).getName();
                      productPrice=productList.get(i).getPrice();
                      productImgurl=productList.get(i).getImgUrl();
                      //System.out.println("productImgurl="+productImgurl);
                  %>
                  <td>
                    <div class="divbookpic">
                      <p>
                        <a href="${pageContext.request.contextPath}/FindProductByIdServlet?id=<%=productId%>"><img
                                src="${pageContext.request.contextPath}<%=productImgurl%>"
                                width="115" height="129" border="0" /> </a>
                      </p>
                    </div>
                    <div class="divlisttitle">
                      <a href="${pageContext.request.contextPath}/FindProductByIdServlet?id=<%=productId%>">书名： <%=productName%><br />售价：￥<%=productPrice%> </a>
                    </div>
                  </td>
                  <% } %>
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
