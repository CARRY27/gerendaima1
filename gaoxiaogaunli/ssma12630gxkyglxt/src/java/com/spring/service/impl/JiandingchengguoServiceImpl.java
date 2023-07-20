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

@Service("JiandingchengguoService")
public class JiandingchengguoServiceImpl implements JiandingchengguoService {

    @Resource
    private JiandingchengguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Jiandingchengguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Jiandingchengguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Jiandingchengguo> list = dao.selectPage(example);

        PageInfo<Jiandingchengguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Jiandingchengguo jiandingchengguo = new Jiandingchengguo();
        jiandingchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(jiandingchengguo);
    }

    @Override
    public Jiandingchengguo find(Object id) {
        Jiandingchengguo jiandingchengguo = new Jiandingchengguo();
        jiandingchengguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(jiandingchengguo);
    }

    @Override
    public int insert(Jiandingchengguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Jiandingchengguo pojo) {
        return dao.update(pojo);
    }
}
