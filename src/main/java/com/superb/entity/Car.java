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
 * @since 2021-04-14
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Car implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 车唯一id
     */
    @TableId(value = "car_id", type = IdType.AUTO)
    private Integer carId;

    private String carName;

    /**
     * 所属车型
     */
    private Integer styleId;

    /**
     * 厂商指导价(万)
     */
    private String cszdj;

    /**
     * 最大扭矩
     */
    private String zdnj;

    /**
     * 车长
     */
    private String cc;

    /**
     * 车宽
     */
    private String ck;

    /**
     * 车高
     */
    private String cg;

    /**
     * 轴距
     */
    private String zj;

    /**
     * 油箱容积
     */
    private String yxrj;

    /**
     * 发动机型号
     */
    private String fdjxh;

    /**
     * 排量
     */
    private String pl;

    /**
     * 进气方式-Map
     */
    private Integer jqfs;

    /**
     * 最大马力
     */
    private String zdml;

    /**
     * 最大功率
     */
    private String zdgl;

    /**
     * 驱动类型-Map
     */
    private Integer qdfs;

    /**
     * 驻车制动类型-Map
     */
    private Integer zdlx;

    /**
     * 百公里加速时间
     */
    private String bgljs;

    /**
     * 百公里油耗
     */
    private String bglyh;

    /**
     * 最高车速
     */
    private String zgcs;

    /**
     * 燃油标号
     */
    private Integer rybh;

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

    private Integer deleted;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public Integer getStyleId() {
        return styleId;
    }

    public void setStyleId(Integer styleId) {
        this.styleId = styleId;
    }

    public String getCszdj() {
        return cszdj;
    }

    public void setCszdj(String cszdj) {
        this.cszdj = cszdj;
    }

    public String getZdnj() {
        return zdnj;
    }

    public void setZdnj(String zdnj) {
        this.zdnj = zdnj;
    }

    public String getCc() {
        return cc;
    }

    public void setCc(String cc) {
        this.cc = cc;
    }

    public String getCk() {
        return ck;
    }

    public void setCk(String ck) {
        this.ck = ck;
    }

    public String getCg() {
        return cg;
    }

    public void setCg(String cg) {
        this.cg = cg;
    }

    public String getZj() {
        return zj;
    }

    public void setZj(String zj) {
        this.zj = zj;
    }

    public String getYxrj() {
        return yxrj;
    }

    public void setYxrj(String yxrj) {
        this.yxrj = yxrj;
    }

    public String getFdjxh() {
        return fdjxh;
    }

    public void setFdjxh(String fdjxh) {
        this.fdjxh = fdjxh;
    }

    public String getPl() {
        return pl;
    }

    public void setPl(String pl) {
        this.pl = pl;
    }

    public Integer getJqfs() {
        return jqfs;
    }

    public void setJqfs(Integer jqfs) {
        this.jqfs = jqfs;
    }

    public String getZdml() {
        return zdml;
    }

    public void setZdml(String zdml) {
        this.zdml = zdml;
    }

    public String getZdgl() {
        return zdgl;
    }

    public void setZdgl(String zdgl) {
        this.zdgl = zdgl;
    }

    public Integer getQdfs() {
        return qdfs;
    }

    public void setQdfs(Integer qdfs) {
        this.qdfs = qdfs;
    }

    public Integer getZdlx() {
        return zdlx;
    }

    public void setZdlx(Integer zdlx) {
        this.zdlx = zdlx;
    }

    public String getBgljs() {
        return bgljs;
    }

    public void setBgljs(String bgljs) {
        this.bgljs = bgljs;
    }

    public String getBglyh() {
        return bglyh;
    }

    public void setBglyh(String bglyh) {
        this.bglyh = bglyh;
    }

    public String getZgcs() {
        return zgcs;
    }

    public void setZgcs(String zgcs) {
        this.zgcs = zgcs;
    }

    public Integer getRybh() {
        return rybh;
    }

    public void setRybh(Integer rybh) {
        this.rybh = rybh;
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

    public Integer getDeleted() {
        return deleted;
    }

    public void setDeleted(Integer deleted) {
        this.deleted = deleted;
    }
}
