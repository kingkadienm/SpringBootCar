package com.superb.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 *
 * </p>
 *
 * @author Superb
 * @since 2020-11-11
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Message implements Serializable {

    private static final long serialVersionUID = 1L;


    /**
     * 消息id
     */
    @TableId(value = "message_id", type = IdType.AUTO)
    private Long messageId;

    /**
     * 消息标题
     */
    private String messageTitle;

    /**
     * 消息正文
     */
    private String messageText;

    /**
     * 发送者id
     */
    private Long thatId;

    /**
     * 点赞者id
     */
    private Long userId;

    /**
     * 接收者id
     */
    private Long thisId;

    /**
     * 动态id
     */
    private Long essayId;

    /**
     * 评论id
     */
    private Integer commentId;

    /**
     * 消息类型 0系统 1动态 2私信 3评论
     */
    private Integer messageType;

    /**
     * 发送时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getMessageId() {
        return messageId;
    }

    public void setMessageId(Long messageId) {
        this.messageId = messageId;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle;
    }

    public String getMessageText() {
        return messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    public Long getThatId() {
        return thatId;
    }

    public void setThatId(Long thatId) {
        this.thatId = thatId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getThisId() {
        return thisId;
    }

    public void setThisId(Long thisId) {
        this.thisId = thisId;
    }

    public Long getEssayId() {
        return essayId;
    }

    public void setEssayId(Long essayId) {
        this.essayId = essayId;
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getMessageType() {
        return messageType;
    }

    public void setMessageType(Integer messageType) {
        this.messageType = messageType;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }
}
