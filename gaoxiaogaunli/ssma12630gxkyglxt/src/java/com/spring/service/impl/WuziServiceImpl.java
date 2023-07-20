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

@Service("WuziService")
public class WuziServiceImpl implements WuziService {

    @Resource
    private WuziMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Wuzi> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Wuzi> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Wuzi> list = dao.selectPage(example);

        PageInfo<Wuzi> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Wuzi wuzi = new Wuzi();
        wuzi.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(wuzi);
    }

    @Override
    public Wuzi find(Object id) {
        Wuzi wuzi = new Wuzi();
        wuzi.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(wuzi);
    }

    @Override
    public int insert(Wuzi pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Wuzi pojo) {
        return dao.update(pojo);
    }
}
