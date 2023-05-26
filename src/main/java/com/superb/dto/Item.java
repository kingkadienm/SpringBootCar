package com.superb.dto;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 个人资料
 * @author Superb
 * @date 2020/11/18 - 13:13
 * @E_mail superb12580@163.com
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Item implements Serializable {
    /**
     * 用户id
     */
    private Long userId;

    /**
     * 用户名
     */
    private String userName;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 头像
     */
    private String photo;

    /**
     * 签名
     */
    private String sign;

    /**
     * 性别 0 1 2
     */
    private Integer gender;

    /**
     * 出生日期
     */
    private String dateBirth;

    /**
     * 注册时间
     */
    private String createTime;

    /**
     * 用户等级
     */
    private Integer grade;

    /**
     * 是否已签到
     */
    private Integer graded;

    /**
     * 私信条数
     */
    private Integer sxts;


    /**
     * 是否认证公众号
     */
    private Integer sfrz;

    /**
     * 是否已关注
     */
    private Integer flagAttention;

    /**
     * 收藏数
     */
    private Integer collectionCount;

    /**
     * 文章数
     */
    private Integer newsCount;

    /**
     * 视频数
     */
    private Integer videoCount;


    /**
     * 关注数
     */
    private Integer attentionCount;


    /**
     * 粉丝数
     */
    private Integer fansCount;

    /**
     * 收藏数
     */
    private Integer essayCount;


    /**
     * 关注数
     */
    private Integer forwardCount;


    /**
     * 粉丝数
     */
    private Integer commentCount;

    /**
     * 消息数
     */
    private Integer messageCount;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(String dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getGraded() {
        return graded;
    }

    public void setGraded(Integer graded) {
        this.graded = graded;
    }

    public Integer getSxts() {
        return sxts;
    }

    public void setSxts(Integer sxts) {
        this.sxts = sxts;
    }

    public Integer getSfrz() {
        return sfrz;
    }

    public void setSfrz(Integer sfrz) {
        this.sfrz = sfrz;
    }

    public Integer getFlagAttention() {
        return flagAttention;
    }

    public void setFlagAttention(Integer flagAttention) {
        this.flagAttention = flagAttention;
    }

    public Integer getCollectionCount() {
        return collectionCount;
    }

    public void setCollectionCount(Integer collectionCount) {
        this.collectionCount = collectionCount;
    }

    public Integer getNewsCount() {
        return newsCount;
    }

    public void setNewsCount(Integer newsCount) {
        this.newsCount = newsCount;
    }

    public Integer getVideoCount() {
        return videoCount;
    }

    public void setVideoCount(Integer videoCount) {
        this.videoCount = videoCount;
    }

    public Integer getAttentionCount() {
        return attentionCount;
    }

    public void setAttentionCount(Integer attentionCount) {
        this.attentionCount = attentionCount;
    }

    public Integer getFansCount() {
        return fansCount;
    }

    public void setFansCount(Integer fansCount) {
        this.fansCount = fansCount;
    }

    public Integer getEssayCount() {
        return essayCount;
    }

    public void setEssayCount(Integer essayCount) {
        this.essayCount = essayCount;
    }

    public Integer getForwardCount() {
        return forwardCount;
    }

    public void setForwardCount(Integer forwardCount) {
        this.forwardCount = forwardCount;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    public Integer getMessageCount() {
        return messageCount;
    }

    public void setMessageCount(Integer messageCount) {
        this.messageCount = messageCount;
    }
}
