package com.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import com.spring.util.SelectExample;
import java.util.*;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("ZhuanlichengguoService")
public class ZhuanlichengguoServiceImpl implements ZhuanlichengguoService {

    @Resource
    private ZhuanlichengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Zhuanlichengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhuanlichengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhuanlichengguo> list = dao.selectPage(example);

        PageInfo<Zhuanlichengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhuanlichengguo zhuanlichengguo = new Zhuanlichengguo();
        zhuanlichengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhuanlichengguo);
    }

    @Override
    public Zhuanlichengguo find(Object id) {
        Zhuanlichengguo zhuanlichengguo = new Zhuanlichengguo();
        zhuanlichengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhuanlichengguo);
    }

    @Override
    public int insert(Zhuanlichengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhuanlichengguo pojo) {
        return dao.update(pojo);
    }
}
