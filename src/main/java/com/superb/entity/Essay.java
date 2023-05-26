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
public class Essay implements Serializable {
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getEssayId() {
        return essayId;
    }

    public void setEssayId(Long essayId) {
        this.essayId = essayId;
    }

    public String getEssayTitle() {
        return essayTitle;
    }

    public void setEssayTitle(String essayTitle) {
        this.essayTitle = essayTitle;
    }

    public String getEssayLabel() {
        return essayLabel;
    }

    public void setEssayLabel(String essayLabel) {
        this.essayLabel = essayLabel;
    }

    public String getEssayText() {
        return essayText;
    }

    public void setEssayText(String essayText) {
        this.essayText = essayText;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getWybs() {
        return wybs;
    }

    public void setWybs(String wybs) {
        this.wybs = wybs;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    private static final long serialVersionUID = 1L;

    /**
     * 动态id
     */
    @TableId(value = "essay_id", type = IdType.AUTO)
    private Long essayId;

    /**
     * 动态标题
     */
    private String essayTitle;

    /**
     * 动态标签
     */
    private String essayLabel;

    /**
     * 动态正文
     */
    private String essayText;

    /**
     * 发布时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 用户id
     */
    private String wybs;

    /**
     * 视频路径
     */
    private String video;

    /**
     * 逻辑删除
     */
    private Boolean deleted;


}
