package com.ch.test.servlet;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( name = "findProductByIdServlet", urlPatterns = "/FindProductByIdServlet")
public class FindProductByIdServlet extends HttpServlet {
    private ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        String id = req.getParameter("id");
        Product book;
        book = productDao.findBookById(id);
        if (book == null) {
            req.setAttribute("msg", "没有找到该商品");
            req.getRequestDispatcher("/msg.jsp").forward(req, resp);
            return;
        }
        req.setAttribute("p", book);
        req.getRequestDispatcher("/product_info.jsp").forward(req, resp);
    }
}
