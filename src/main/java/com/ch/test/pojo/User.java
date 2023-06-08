package com.ch.test.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String sex;
    private String telephone;
    private String introduce;   // 用户介绍
    private String role;    // 用户角色
    private Date registerTime;  // 注册时间
    private String activeCode;
    private Integer state;
}