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
 * @since 2021-03-25
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class News implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 封面(可为空)
     */
    private String newsPhoto;

    /**
     * 标题
     */
    private String title;

    /**
     * 正文
     */
    private String text1;

    /**
     * 正文
     */
    private String text2;

    /**
     * 正文
     */
    private String text3;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNewsPhoto() {
        return newsPhoto;
    }

    public void setNewsPhoto(String newsPhoto) {
        this.newsPhoto = newsPhoto;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText1() {
        return text1;
    }

    public void setText1(String text1) {
        this.text1 = text1;
    }

    public String getText2() {
        return text2;
    }

    public void setText2(String text2) {
        this.text2 = text2;
    }

    public String getText3() {
        return text3;
    }

    public void setText3(String text3) {
        this.text3 = text3;
    }

    public String getText4() {
        return text4;
    }

    public void setText4(String text4) {
        this.text4 = text4;
    }

    public String getText5() {
        return text5;
    }

    public void setText5(String text5) {
        this.text5 = text5;
    }

    public String getText6() {
        return text6;
    }

    public void setText6(String text6) {
        this.text6 = text6;
    }

    public String getText7() {
        return text7;
    }

    public void setText7(String text7) {
        this.text7 = text7;
    }

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public String getWybs() {
        return wybs;
    }

    public void setWybs(String wybs) {
        this.wybs = wybs;
    }

    public Integer getZt() {
        return zt;
    }

    public void setZt(Integer zt) {
        this.zt = zt;
    }

    public String getSscmc() {
        return sscmc;
    }

    public void setSscmc(String sscmc) {
        this.sscmc = sscmc;
    }

    public String getSssj() {
        return sssj;
    }

    public void setSssj(String sssj) {
        this.sssj = sssj;
    }

    /**
     * 正文
     */
    private String text4;

    /**
     * 正文
     */
    private String text5;

    /**
     * 正文
     */
    private String text6;

    /**
     * 正文
     */
    private String text7;

    /**
     * 相关车系id
     */
    private Integer styleId;

    /**
     * 公众号id
     */
    private Long userId;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 点击量
     */
    private Long count;

    /**
     * 唯一标识
     */
    private String wybs;

    /**
     * 状态  0已编辑 1上传图集 2待审核 3已通过
     */
    private Integer zt;


    /**
     * 上市车名称
     */
    private String sscmc;

    /**
     * 上市时间
     */
    private String sssj;

}
