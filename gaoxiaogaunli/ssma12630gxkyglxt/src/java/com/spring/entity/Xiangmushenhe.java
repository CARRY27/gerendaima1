package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Xiangmushenhe implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer xiangmuid;
    private String xiangmubianhao;
    private String xiangmumingcheng;
    private String kaifarenyuan;
    private String kaifarenyuanxingming;
    private String shenhe;
    private String beizhu;
    private String shenheren;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getXiangmuid() {
        return xiangmuid;
    }

    public void setXiangmuid(Integer xiangmuid) {
        this.xiangmuid = xiangmuid;
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

    public String getShenhe() {
        return shenhe;
    }

    public void setShenhe(String shenhe) {
        this.shenhe = shenhe;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getShenheren() {
        return shenheren;
    }

    public void setShenheren(String shenheren) {
        this.shenheren = shenheren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
