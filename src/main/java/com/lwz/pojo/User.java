package com.lwz.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 生成getter和setter方法
 */
@Data
/**
 * 生成全参数构造方法
 */
@AllArgsConstructor
/**
 * 生成无参数构造方法
 */
@NoArgsConstructor

public class User {
    private Long id;
    private String nickname;
    private String username;
    private String password;
    private String email;
    private String avatar;
    private Integer type;
    private Date createTime;
    private Date updateTime;

    private List<Anime> anime =new ArrayList<>();
}
