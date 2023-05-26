package com.superb.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
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
public class Attention implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 关注id
     */
    private Long thatId;

    /**
     * 用户id
     */
    private Long thisId;

    /**
     * 关注时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;


    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Long getThatId() {
        return thatId;
    }

    public void setThatId(Long thatId) {
        this.thatId = thatId;
    }

    public Long getThisId() {
        return thisId;
    }

    public void setThisId(Long thisId) {
        this.thisId = thisId;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
