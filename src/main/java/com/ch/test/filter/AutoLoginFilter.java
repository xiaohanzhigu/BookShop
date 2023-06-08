package com.ch.test.filter;

import com.ch.test.dao.UserDao;
import com.ch.test.pojo.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AutoLoginFilter", urlPatterns = "/login.jsp")
public class AutoLoginFilter implements Filter {
    private UserDao userDao = new UserDao();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        Cookie[] cookies = request.getCookies();
        String information = null;
        if (cookies != null && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                if ("autoLogin".equals(cookie.getName())) {
                    information = cookie.getValue();
                    break;
                }
            }
        }
        if (information != null && !"null".equals(information)) {
            String[] split = information.split(":");
            Integer id = Integer.parseInt(split[0]);
            String username = split[1];
            String password = split[2];
            User user = userDao.getUserByUnameAndPassword(username, password);
            if (user != null) {
                //User user = new User();
                //user.setId(id);
                //user.setUsername(username);
                //user.setPassword(password);
                request.getSession().setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/account");
            }
        }
        filterChain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }
}
