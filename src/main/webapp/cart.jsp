<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.io.PrintWriter"
         pageEncoding="UTF-8"%>
<%@ page import="com.ch.test.pojo.CartItem" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>电子书城</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/main.css" type="text/css" />
    <script>
        //当商品数量发生变化时触发该方法
        function changeProductNum(count,totalCount,id) {

            count = parseInt(count);
            totalCount = parseInt(totalCount);
            //alert("已达到商品最大购买量");
            //如果数量为0，判断是否要删除商品
            if (count == 0) {
                var flag = window.confirm("确认删除商品吗?");

                if (!flag) {
                    count = 1;
                }
            }
            if (count > totalCount) {
                alert("已达到商品最大购买量");
                count = totalCount;
            }

            //alert("ok");
            location.href = "${pageContext.request.contextPath}/changeCart?id="
                + id + "&count=" + count;

        }
        //删除购物车中的商品
        function cart_del() {
            var msg = "您确定要删除该商品吗？";
            if (confirm(msg)==true){
                return true;
            }else{
                return false;
            }
        }
    </script>
</head>
<body class="main">
<jsp:include page="head.jsp" />
<jsp:include page="menu_search.jsp" />
<div id="divpagecontent">
    <table width="100%" border="0" cellspacing="0">
        <tr>
            <td>
                <div style="text-align:right; margin:5px 10px 5px 0px">
                    <a href="${pageContext.request.contextPath }/main.jsp">首页</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;购物车
                </div>
                <table cellspacing="0" class="infocontent">
                    <tr>
                        <td>
                            <img src="${pageContext.request.contextPath}/static/ad/page_ad.jpg" width="900" height="89" />
                            <table width="100%" border="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <img src="${pageContext.request.contextPath}/static/images/buy1.gif" width="635" height="38" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td width="10%">序号</td>
                                                <td width="30%">商品名称</td>
                                                <td width="10%">价格</td>
                                                <td width="20%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数量</td>
                                                <td width="10%">库存</td>
                                                <td width="10%">小计</td>
                                                <td width="10%">取消</td>
                                            </tr>
                                        </table>
                                        <!-- 循环输出商品信息 -->
                                        <%
                                            int i=0;
                                            //1:将添加到购物车里面的物品显示出来
                                            Map<String,CartItem> cart=(Map<String,CartItem>)session.getAttribute("cart");
                                            //key:商品id,value:购物项
                                            if(cart==null){
                                                PrintWriter t=response.getWriter();
                                                t.print("<script>alert('请先购买商品');window.location.href='/bookshop/main.jsp'</script>");
                                                return;
                                            }
                                            //2:将购物车里面的内容遍历出来
                                            double total=0;//显示出总价格
                                            for(Map.Entry<String, CartItem> entry : cart.entrySet()){
                                                //计算出每一样的书籍一共花了多少钱
                                                int num=entry.getValue().getBuyNum();//entry.getValue()购物项cartItem
                                                double subtotal=entry.getValue().getP().getPrice()*num;
                                                //System.out.println("id="+entry.getValue().getP().getId());
                                                //System.out.println("pnum="+entry.getValue().getP().getPnum());
                                                //计算出一共花了多少钱
                                                total=total+subtotal;
                                                i++;
                                                //entry.getValue().getP().getPrice()*entry.getValue().getBuynum()
                                                //
                                        %>
                                        <table width="100%" border="0" cellspacing="0">
                                            <tr>
                                                <td width="10%"><%=i %></td>
                                                <td width="30%"><%=entry.getValue().getP().getName() %></td>
                                                <td width="10%"><%=entry.getValue().getP().getPrice()%></td>
                                                <td width="20%">
                                                    <!-- 减少商品数量 -->
                                                    <input type="button" value='-' style="width:20px"
                                                           onclick="changeProductNum('<%=num-1%>','<%=entry.getValue().getP().getPnum()%>','<%=entry.getValue().getP().getId()%>')">
                                                    <!-- 商品数量显示 -->
                                                    <input name="text" type="text" value=<%=entry.getValue().getBuyNum()%> style="width:40px;text-align:center" />
                                                    <!-- 增加商品数量 -->
                                                    <input type="button" value='+' style="width:20px"
                                                           onclick="changeProductNum('<%=num+1%>','<%=entry.getValue().getP().getPnum()%>','<%=entry.getValue().getP().getId()%>')">
                                                </td>
                                                <td width="10%"><%=entry.getValue().getP().getPnum()%></td>
                                                <td width="10%"><%=subtotal%></td>
                                                <td width="10%">
                                                    <!-- 删除商品 -->
                                                    <a href="${pageContext.request.contextPath}/changeCart?id=<%=entry.getValue().getP().getId()%>&count=0"
                                                       style="color:#FF0000; font-weight:bold" onclick="javascript:return cart_del()">X</a>
                                                </td>
                                            </tr>
                                        </table>
                                        <%} %>
                                        <table cellspacing="1" class="carttable">
                                            <tr>
                                                <td style="text-align:right; padding-right:40px;">
                                                    <font style="color:#FF6600; font-weight:bold">合计：&nbsp;&nbsp;<%=total %>元</font>
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="text-align:right; margin-top:10px">
                                            <!--继续购物 -->
                                            <a href="${pageContext.request.contextPath}/showProduct">
                                                <img src="${pageContext.request.contextPath}/static/images/gwc_jx.gif" border="0" />
                                            </a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <!--结账 -->
                                            <a href="${pageContext.request.contextPath}/order.jsp">
                                                <img src="${pageContext.request.contextPath}/static/images/gwc_buy.gif" border="0" />
                                            </a>
                                        </div>
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

