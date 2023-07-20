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

@Service("WuzifenleiService")
public class WuzifenleiServiceImpl implements WuzifenleiService {

    @Resource
    private WuzifenleiMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Wuzifenlei> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Wuzifenlei> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Wuzifenlei> list = dao.selectPage(example);

        PageInfo<Wuzifenlei> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Wuzifenlei wuzifenlei = new Wuzifenlei();
        wuzifenlei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(wuzifenlei);
    }

    @Override
    public Wuzifenlei find(Object id) {
        Wuzifenlei wuzifenlei = new Wuzifenlei();
        wuzifenlei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(wuzifenlei);
    }

    @Override
    public int insert(Wuzifenlei pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Wuzifenlei pojo) {
        return dao.update(pojo);
    }
}
