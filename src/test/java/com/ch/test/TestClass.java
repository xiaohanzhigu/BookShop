package com.ch.test;

import com.ch.test.dao.ProductDao;
import com.ch.test.pojo.PageBean;
import org.junit.jupiter.api.Test;

public class TestClass {
    @Test
    public void testProductDao() {
        ProductDao productDao = new ProductDao();
        PageBean java = productDao.findBookByName("java");
        System.out.println(java.getList());

    }
}
