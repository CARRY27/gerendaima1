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

@Service("XiangmuService")
public class XiangmuServiceImpl implements XiangmuService {

    @Resource
    private XiangmuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Xiangmu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Xiangmu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xiangmu> list = dao.selectPage(example);

        PageInfo<Xiangmu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Xiangmu xiangmu = new Xiangmu();
        xiangmu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(xiangmu);
    }

    @Override
    public Xiangmu find(Object id) {
        Xiangmu xiangmu = new Xiangmu();
        xiangmu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(xiangmu);
    }

    @Override
    public int insert(Xiangmu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Xiangmu pojo) {
        return dao.update(pojo);
    }
}
