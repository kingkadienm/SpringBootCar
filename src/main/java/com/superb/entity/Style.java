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
public class Style implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 车型id
     */
    @TableId(value = "style_id", type = IdType.AUTO)
    private Integer styleId;

    /**
     * 价格区间
     */
    private String jgqj;

    /**
     * 数据字典-厂商
     */
    private Integer cs;

    /**
     * 车型名称
     */
    private String styleName;

    /**
     * 轮播图
     */
    private String imgLbt;

    /**
     * 车型头像
     */
    private String stylePhoto;

    /**
     * 数据字典-级别-头部筛选
     */
    private Integer jb;

    /**
     * 数据字典-国别-头部筛选
     */
    private Integer gb;

    /**
     * 上市时间
     */
    private String sssj;

    /**
     * 环保标准-Map
     */
    private Integer hbbz;

    /**
     * 数据字典-能源类型
     */
    private Integer nylx;

    /**
     * 评分人数
     */
    private Integer pfrs;

    /**
     * 总评分
     */
    private Integer zpf;

    /**
     * 点击量
     */
    private Long djl;

    /**
     * 销量
     */
    private Integer xl;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private String createTime;

    /**
     * 修改时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private String updateTime;

    /**
     * 用户id
     */
    private String wybs;

    /**
     * 逻辑删除
     */
    private Integer deleted;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public String getJgqj() {
        return jgqj;
    }

    public void setJgqj(String jgqj) {
        this.jgqj = jgqj;
    }

    public Integer getCs() {
        return cs;
    }

    public void setCs(Integer cs) {
        this.cs = cs;
    }

    public String getStyleName() {
        return styleName;
    }

    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }

    public String getImgLbt() {
        return imgLbt;
    }

    public void setImgLbt(String imgLbt) {
        this.imgLbt = imgLbt;
    }

    public String getStylePhoto() {
        return stylePhoto;
    }

    public void setStylePhoto(String stylePhoto) {
        this.stylePhoto = stylePhoto;
    }

    public Integer getJb() {
        return jb;
    }

    public void setJb(Integer jb) {
        this.jb = jb;
    }

    public Integer getGb() {
        return gb;
    }

    public void setGb(Integer gb) {
        this.gb = gb;
    }

    public String getSssj() {
        return sssj;
    }

    public void setSssj(String sssj) {
        this.sssj = sssj;
    }

    public Integer getHbbz() {
        return hbbz;
    }

    public void setHbbz(Integer hbbz) {
        this.hbbz = hbbz;
    }

    public Integer getNylx() {
        return nylx;
    }

    public void setNylx(Integer nylx) {
        this.nylx = nylx;
    }

    public Integer getPfrs() {
        return pfrs;
    }

    public void setPfrs(Integer pfrs) {
        this.pfrs = pfrs;
    }

    public Integer getZpf() {
        return zpf;
    }

    public void setZpf(Integer zpf) {
        this.zpf = zpf;
    }

    public Long getDjl() {
        return djl;
    }

    public void setDjl(Long djl) {
        this.djl = djl;
    }

    public Integer getXl() {
        return xl;
    }

    public void setXl(Integer xl) {
        this.xl = xl;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public String getWybs() {
        return wybs;
    }

    public void setWybs(String wybs) {
        this.wybs = wybs;
    }

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
