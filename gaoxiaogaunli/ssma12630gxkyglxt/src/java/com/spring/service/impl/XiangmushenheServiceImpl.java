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

@Service("XiangmushenheService")
public class XiangmushenheServiceImpl implements XiangmushenheService {

    @Resource
    private XiangmushenheMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Xiangmushenhe> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Xiangmushenhe> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xiangmushenhe> list = dao.selectPage(example);

        PageInfo<Xiangmushenhe> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Xiangmushenhe xiangmushenhe = new Xiangmushenhe();
        xiangmushenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(xiangmushenhe);
    }

    @Override
    public Xiangmushenhe find(Object id) {
        Xiangmushenhe xiangmushenhe = new Xiangmushenhe();
        xiangmushenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(xiangmushenhe);
    }

    @Override
    public int insert(Xiangmushenhe pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Xiangmushenhe pojo) {
        return dao.update(pojo);
    }
}
