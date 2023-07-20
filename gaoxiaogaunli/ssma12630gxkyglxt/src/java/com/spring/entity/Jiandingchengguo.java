package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Jiandingchengguo implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String chengguomingcheng;
    private String jiandinghao;
    private String jiandingxingshi;
    private String jiandingdanwei;
    private String jiandingriqi;
    private String jiandingpizhunriqi;
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

    public String getChengguomingcheng() {
        return chengguomingcheng;
    }

    public void setChengguomingcheng(String chengguomingcheng) {
        this.chengguomingcheng = chengguomingcheng;
    }

    public String getJiandinghao() {
        return jiandinghao;
    }

    public void setJiandinghao(String jiandinghao) {
        this.jiandinghao = jiandinghao;
    }

    public String getJiandingxingshi() {
        return jiandingxingshi;
    }

    public void setJiandingxingshi(String jiandingxingshi) {
        this.jiandingxingshi = jiandingxingshi;
    }

    public String getJiandingdanwei() {
        return jiandingdanwei;
    }

    public void setJiandingdanwei(String jiandingdanwei) {
        this.jiandingdanwei = jiandingdanwei;
    }

    public String getJiandingriqi() {
        return jiandingriqi;
    }

    public void setJiandingriqi(String jiandingriqi) {
        this.jiandingriqi = jiandingriqi;
    }

    public String getJiandingpizhunriqi() {
        return jiandingpizhunriqi;
    }

    public void setJiandingpizhunriqi(String jiandingpizhunriqi) {
        this.jiandingpizhunriqi = jiandingpizhunriqi;
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
