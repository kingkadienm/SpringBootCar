package com.superb.dto;

import com.superb.entity.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

/**
 * @author Superb
 * @date 2020/11/19 - 12:27
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class EssayDto extends Essay implements Serializable {
    /**
     * 管理员查询时 连接显示用户
     */
    private User user;
    /**
     * 多标签
     */
    private List<Label> label;

    /**
     * 标签序号
     */
    private String essayLabel = "";
    /**
     * 展示个人动态或管理员查询时 连接显示评论
     */
    private List<Comment> comment;


    /**
     * 展示个人动态或管理员查询时 连接显示评论
     */
    private List<Forward> forward;

    /**
     * 展示个人动态或管理员查询时 连接显示点赞
     */
    private List<Agree> agree;

    /**
     * 展示个人动态或管理员查询时 连接显示转发数
     */
    private Integer forwardCount;

    /**
     * 展示个人动态或管理员查询时 连接显示点赞数
     */
    private Integer agreeCount;

    /**
     * 展示个人动态或管理员查询时 连接显示评论数
     */
    private Integer commentCount;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Label> getLabel() {
        return label;
    }

    public void setLabel(List<Label> label) {
        this.label = label;
    }

    @Override
    public String getEssayLabel() {
        return essayLabel;
    }

    @Override
    public void setEssayLabel(String essayLabel) {
        this.essayLabel = essayLabel;
    }

    public List<Comment> getComment() {
        return comment;
    }

    public void setComment(List<Comment> comment) {
        this.comment = comment;
    }

    public List<Forward> getForward() {
        return forward;
    }

    public void setForward(List<Forward> forward) {
        this.forward = forward;
    }

    public List<Agree> getAgree() {
        return agree;
    }

    public void setAgree(List<Agree> agree) {
        this.agree = agree;
    }

    public Integer getForwardCount() {
        return forwardCount;
    }

    public void setForwardCount(Integer forwardCount) {
        this.forwardCount = forwardCount;
    }

    public Integer getAgreeCount() {
        return agreeCount;
    }

    public void setAgreeCount(Integer agreeCount) {
        this.agreeCount = agreeCount;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }
}
