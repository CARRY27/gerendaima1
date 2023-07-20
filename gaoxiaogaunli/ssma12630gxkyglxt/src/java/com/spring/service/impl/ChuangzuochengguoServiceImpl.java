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

@Service("ChuangzuochengguoService")
public class ChuangzuochengguoServiceImpl implements ChuangzuochengguoService {

    @Resource
    private ChuangzuochengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Chuangzuochengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Chuangzuochengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Chuangzuochengguo> list = dao.selectPage(example);

        PageInfo<Chuangzuochengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Chuangzuochengguo chuangzuochengguo = new Chuangzuochengguo();
        chuangzuochengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(chuangzuochengguo);
    }

    @Override
    public Chuangzuochengguo find(Object id) {
        Chuangzuochengguo chuangzuochengguo = new Chuangzuochengguo();
        chuangzuochengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(chuangzuochengguo);
    }

    @Override
    public int insert(Chuangzuochengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Chuangzuochengguo pojo) {
        return dao.update(pojo);
    }
}
