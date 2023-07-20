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

@Service("TonggaoService")
public class TonggaoServiceImpl implements TonggaoService {

    @Resource
    private TonggaoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Tonggao> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Tonggao> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Tonggao> list = dao.selectPage(example);

        PageInfo<Tonggao> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Tonggao tonggao = new Tonggao();
        tonggao.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(tonggao);
    }

    @Override
    public Tonggao find(Object id) {
        Tonggao tonggao = new Tonggao();
        tonggao.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(tonggao);
    }

    @Override
    public int insert(Tonggao pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Tonggao pojo) {
        return dao.update(pojo);
    }
}
