package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Wuzifenlei implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String fenleimingcheng;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFenleimingcheng() {
        return fenleimingcheng;
    }

    public void setFenleimingcheng(String fenleimingcheng) {
        this.fenleimingcheng = fenleimingcheng;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
