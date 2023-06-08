package com.ch.test.servlet;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;


@WebServlet("/changeCart")
public class ChangeCartItemServlet extends HttpServlet {
    private ProductDao productDao = new ProductDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id =req.getParameter("id");
        int count = Integer.parseInt(req.getParameter("count"));
        HttpSession session = req.getSession();
        Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
        if (count != 0) {
            cart.get(id).setBuyNum(count);
        } else {
            cart.remove(id);
        }
        resp.sendRedirect(req.getContextPath() + "/cart.jsp");
    }
}
