package com.lwz.pojo;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
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

public class Comment {

    @Id
    @GeneratedValue
    private Long id;
    private String nickname;
    private String email;
    private String content;
    private boolean adminComment;  //是否为管理员评论

    //头像
    private String avatar;
    private Date createTime;

    private Long blogId;
    private Long parentCommentId;  //父评论id
    private String parentNickname;

    //回复评论
    private List<Comment> replyComments = new ArrayList<>();

    //父评论
    private Comment parentComment;


}
