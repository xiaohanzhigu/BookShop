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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>搜索部分</title>
    <script type="text/javascript">
        /**
         * my_click和my_blur均是用于前台页面搜索框的函数
         */
//鼠标点击搜索框时执行
        function my_click(obj, myid){
            //点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
            if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
                document.getElementById(myid).value = '';
                obj.style.color='#000';
            }
        }
        //鼠标不聚焦在搜索框时执行
        function my_blur(obj, myid){
            //鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
            if (document.getElementById(myid).value == ''){
                document.getElementById(myid).value = document.getElementById(myid).defaultValue;
                obj.style.color='#999';
            }
        }

        /**
         * 点击搜索按钮执行的函数
         */
        function search(){
            document.getElementById("searchform").submit();
        }
    </script>

</head>
<body>
<div id="divmenu">
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("文学","utf-8")%>">文学</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("生活","utf-8")%>">生活</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("计算机","utf-8")%>">计算机</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("外语","utf-8")%>">外语</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("经管","utf-8")%>">经管</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("励志","utf-8")%>">励志</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("社科","utf-8")%>">社科</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("学术","utf-8")%>">学术</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("少儿","utf-8")%>">少儿</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("艺术","utf-8")%>">艺术</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("原版","utf-8")%>">原版</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("科技","utf-8")%>">科技</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("考试","utf-8")%>">考试</a>
    <a href="${pageContext.request.contextPath}/showProduct?category=<%=java.net.URLEncoder.encode("生活百科","utf-8")%>">生活百科</a>
    <a href="${pageContext.request.contextPath}/showProduct" style="color:#b4d76d">全部商品目录</a>
</div>
<div id="divsearch">
    <form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
        <table width="100%" border="0" cellspacing="0">
            <tr>
                <td style="text-align:right; padding-right:220px">
                    Search
                    <input type="text" name="textfield" class="inputtable" id="textfield" value="请输入书名"
                           onmouseover="this.focus();"
                           onclick="my_click(this, 'textfield');"
                           onBlur="my_blur(this, 'textfield');"
                    />
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/>
                    </a>

                </td>
            </tr>
        </table>
    </form>
</div>

</body>;
</html>
