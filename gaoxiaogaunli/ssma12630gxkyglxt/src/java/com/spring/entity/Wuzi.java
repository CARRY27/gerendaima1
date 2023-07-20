package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Wuzi implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String bianhao;
    private String wuzimingcheng;
    private String fenlei;
    private Integer kucunshuliang;
    private String wuziyongchu;
    private String miaoshu;
    private String caozuoren;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBianhao() {
        return bianhao;
    }

    public void setBianhao(String bianhao) {
        this.bianhao = bianhao;
    }

    public String getWuzimingcheng() {
        return wuzimingcheng;
    }

    public void setWuzimingcheng(String wuzimingcheng) {
        this.wuzimingcheng = wuzimingcheng;
    }

    public String getFenlei() {
        return fenlei;
    }

    public void setFenlei(String fenlei) {
        this.fenlei = fenlei;
    }

    public Integer getKucunshuliang() {
        return kucunshuliang;
    }

    public void setKucunshuliang(Integer kucunshuliang) {
        this.kucunshuliang = kucunshuliang;
    }

    public String getWuziyongchu() {
        return wuziyongchu;
    }

    public void setWuziyongchu(String wuziyongchu) {
        this.wuziyongchu = wuziyongchu;
    }

    public String getMiaoshu() {
        return miaoshu;
    }

    public void setMiaoshu(String miaoshu) {
        this.miaoshu = miaoshu;
    }

    public String getCaozuoren() {
        return caozuoren;
    }

    public void setCaozuoren(String caozuoren) {
        this.caozuoren = caozuoren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
