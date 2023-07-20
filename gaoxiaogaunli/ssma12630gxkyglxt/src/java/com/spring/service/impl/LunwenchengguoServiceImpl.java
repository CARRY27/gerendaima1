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

@Service("LunwenchengguoService")
public class LunwenchengguoServiceImpl implements LunwenchengguoService {

    @Resource
    private LunwenchengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Lunwenchengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Lunwenchengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Lunwenchengguo> list = dao.selectPage(example);

        PageInfo<Lunwenchengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Lunwenchengguo lunwenchengguo = new Lunwenchengguo();
        lunwenchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(lunwenchengguo);
    }

    @Override
    public Lunwenchengguo find(Object id) {
        Lunwenchengguo lunwenchengguo = new Lunwenchengguo();
        lunwenchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(lunwenchengguo);
    }

    @Override
    public int insert(Lunwenchengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Lunwenchengguo pojo) {
        return dao.update(pojo);
    }
}
