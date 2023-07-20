package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Chuangzuochengguo implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String niandu;
    private String xueke;
    private String huojiangzhe;
    private String chengguomingcheng;
    private String huojiangmingcheng;
    private String beizhu;
    private String tianjiaren;
    private String addtime;
    private String issh;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNiandu() {
        return niandu;
    }

    public void setNiandu(String niandu) {
        this.niandu = niandu;
    }

    public String getXueke() {
        return xueke;
    }

    public void setXueke(String xueke) {
        this.xueke = xueke;
    }

    public String getHuojiangzhe() {
        return huojiangzhe;
    }

    public void setHuojiangzhe(String huojiangzhe) {
        this.huojiangzhe = huojiangzhe;
    }

    public String getChengguomingcheng() {
        return chengguomingcheng;
    }

    public void setChengguomingcheng(String chengguomingcheng) {
        this.chengguomingcheng = chengguomingcheng;
    }

    public String getHuojiangmingcheng() {
        return huojiangmingcheng;
    }

    public void setHuojiangmingcheng(String huojiangmingcheng) {
        this.huojiangmingcheng = huojiangmingcheng;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
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
