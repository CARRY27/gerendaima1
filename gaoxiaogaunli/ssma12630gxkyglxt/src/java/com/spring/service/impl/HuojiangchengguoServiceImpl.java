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

@Service("HuojiangchengguoService")
public class HuojiangchengguoServiceImpl implements HuojiangchengguoService {

    @Resource
    private HuojiangchengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Huojiangchengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Huojiangchengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Huojiangchengguo> list = dao.selectPage(example);

        PageInfo<Huojiangchengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Huojiangchengguo huojiangchengguo = new Huojiangchengguo();
        huojiangchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(huojiangchengguo);
    }

    @Override
    public Huojiangchengguo find(Object id) {
        Huojiangchengguo huojiangchengguo = new Huojiangchengguo();
        huojiangchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(huojiangchengguo);
    }

    @Override
    public int insert(Huojiangchengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Huojiangchengguo pojo) {
        return dao.update(pojo);
    }
}
