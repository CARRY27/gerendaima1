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

@Service("ZhuzuochengguoService")
public class ZhuzuochengguoServiceImpl implements ZhuzuochengguoService {

    @Resource
    private ZhuzuochengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Zhuzuochengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhuzuochengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhuzuochengguo> list = dao.selectPage(example);

        PageInfo<Zhuzuochengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhuzuochengguo zhuzuochengguo = new Zhuzuochengguo();
        zhuzuochengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhuzuochengguo);
    }

    @Override
    public Zhuzuochengguo find(Object id) {
        Zhuzuochengguo zhuzuochengguo = new Zhuzuochengguo();
        zhuzuochengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhuzuochengguo);
    }

    @Override
    public int insert(Zhuzuochengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhuzuochengguo pojo) {
        return dao.update(pojo);
    }
}
