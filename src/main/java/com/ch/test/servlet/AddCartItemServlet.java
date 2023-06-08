package com.ch.test.servlet;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.CartItem;
import com.ch.test.pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "AddCartItemServlet", urlPatterns = "/addCart")
public class AddCartItemServlet extends HttpServlet {
    private ProductDao productDao = new ProductDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");

        Product product = productDao.findBookById(id);
        HttpSession session = req.getSession();
        Map<String, CartItem> cart = (Map<String, CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
        }
        CartItem cartItem = cart.get(product.getId());
        if (cartItem == null) {
            cartItem = new CartItem();
            cartItem.setP(product);
            cartItem.setBuyNum(1);
        } else {
            cartItem.setBuyNum(cartItem.getBuyNum() + 1);
        }
        cart.put(product.getId(), cartItem);
        session.setAttribute("cart", cart);
        resp.sendRedirect(req.getContextPath() + "/cart.jsp");
    }
}
