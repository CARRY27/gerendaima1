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

@Service("JingfeiService")
public class JingfeiServiceImpl implements JingfeiService {

    @Resource
    private JingfeiMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Jingfei> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Jingfei> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Jingfei> list = dao.selectPage(example);

        PageInfo<Jingfei> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Jingfei jingfei = new Jingfei();
        jingfei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(jingfei);
    }

    @Override
    public Jingfei find(Object id) {
        Jingfei jingfei = new Jingfei();
        jingfei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(jingfei);
    }

    @Override
    public int insert(Jingfei pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Jingfei pojo) {
        return dao.update(pojo);
    }
}
