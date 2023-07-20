package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Huojiangchengguo implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String chengguomingcheng;
    private String huojiangjibie;
    private String huojiangdengji;
    private String huojiangchengyuan;
    private String pizhundanwei;
    private String tianjiaren;
    private String addtime;
    private String issh;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChengguomingcheng() {
        return chengguomingcheng;
    }

    public void setChengguomingcheng(String chengguomingcheng) {
        this.chengguomingcheng = chengguomingcheng;
    }

    public String getHuojiangjibie() {
        return huojiangjibie;
    }

    public void setHuojiangjibie(String huojiangjibie) {
        this.huojiangjibie = huojiangjibie;
    }

    public String getHuojiangdengji() {
        return huojiangdengji;
    }

    public void setHuojiangdengji(String huojiangdengji) {
        this.huojiangdengji = huojiangdengji;
    }

    public String getHuojiangchengyuan() {
        return huojiangchengyuan;
    }

    public void setHuojiangchengyuan(String huojiangchengyuan) {
        this.huojiangchengyuan = huojiangchengyuan;
    }

    public String getPizhundanwei() {
        return pizhundanwei;
    }

    public void setPizhundanwei(String pizhundanwei) {
        this.pizhundanwei = pizhundanwei;
    }

    public String getTianjiaren() {
        return tianjiaren;
    }

    public void setTianjiaren(String tianjiaren) {
        this.tianjiaren = tianjiaren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getIssh() {
        return issh;
    }

    public void setIssh(String issh) {
        this.issh = issh;
    }
}
