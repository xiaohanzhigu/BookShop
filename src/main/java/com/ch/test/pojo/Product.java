package com.ch.test.pojo;

import lombok.Data;

@Data
public class Product {
    private String id;
    private String name;
    private Double price;
    private String category;
    private Integer pnum;
    private String imgUrl;
    private String description;

}
