package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Xueshuhuodong implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer xiangmuid;
    private String xiangmubianhao;
    private String xiangmumingcheng;
    private String qiriqi;
    private String zhiriqi;
    private String kaifarenyuan;
    private String kaifarenyuanxingming;
    private Integer huodongshumu;
    private String beizhu;
    private String tianjiaren;
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

    public Integer getHuodongshumu() {
        return huodongshumu;
    }

    public void setHuodongshumu(Integer huodongshumu) {
        this.huodongshumu = huodongshumu;
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
}
