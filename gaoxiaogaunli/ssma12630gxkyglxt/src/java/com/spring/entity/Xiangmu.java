package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Xiangmu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String xiangmubianhao;
    private String xiangmumingcheng;
    private String qiriqi;
    private String zhiriqi;
    private String chengguoxingshi;
    private String kaifarenyuan;
    private String kaifarenyuanxingming;
    private Double shenqingjingfei;
    private String xiangmuzuzhuyaochengyuan;
    private String xiangmuxiangqingshuoming;
    private String zhuangtai;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXiangmubianhao() {
        return xiangmubianhao;
    }

    public void setXiangmubianhao(String xiangmubianhao) {
        this.xiangmubianhao = xiangmubianhao;
    }

    public String getXiangmumingcheng() {
        return xiangmumingcheng;
    }

    public void setXiangmumingcheng(String xiangmumingcheng) {
        this.xiangmumingcheng = xiangmumingcheng;
    }

    public String getQiriqi() {
        return qiriqi;
    }

    public void setQiriqi(String qiriqi) {
        this.qiriqi = qiriqi;
    }

    public String getZhiriqi() {
        return zhiriqi;
    }

    public void setZhiriqi(String zhiriqi) {
        this.zhiriqi = zhiriqi;
    }

    public String getChengguoxingshi() {
        return chengguoxingshi;
    }

    public void setChengguoxingshi(String chengguoxingshi) {
        this.chengguoxingshi = chengguoxingshi;
    }

    public String getKaifarenyuan() {
        return kaifarenyuan;
    }

    public void setKaifarenyuan(String kaifarenyuan) {
        this.kaifarenyuan = kaifarenyuan;
    }

    public String getKaifarenyuanxingming() {
        return kaifarenyuanxingming;
    }

    public void setKaifarenyuanxingming(String kaifarenyuanxingming) {
        this.kaifarenyuanxingming = kaifarenyuanxingming;
    }

    public Double getShenqingjingfei() {
        return shenqingjingfei;
    }

    public void setShenqingjingfei(Double shenqingjingfei) {
        this.shenqingjingfei = shenqingjingfei;
    }

    public String getXiangmuzuzhuyaochengyuan() {
        return xiangmuzuzhuyaochengyuan;
    }

    public void setXiangmuzuzhuyaochengyuan(String xiangmuzuzhuyaochengyuan) {
        this.xiangmuzuzhuyaochengyuan = xiangmuzuzhuyaochengyuan;
    }

    public String getXiangmuxiangqingshuoming() {
        return xiangmuxiangqingshuoming;
    }

    public void setXiangmuxiangqingshuoming(String xiangmuxiangqingshuoming) {
        this.xiangmuxiangqingshuoming = xiangmuxiangqingshuoming;
    }

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
