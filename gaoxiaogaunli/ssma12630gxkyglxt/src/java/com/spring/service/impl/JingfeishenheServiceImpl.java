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

@Service("JingfeishenheService")
public class JingfeishenheServiceImpl implements JingfeishenheService {

    @Resource
    private JingfeishenheMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Jingfeishenhe> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Jingfeishenhe> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Jingfeishenhe> list = dao.selectPage(example);

        PageInfo<Jingfeishenhe> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Jingfeishenhe jingfeishenhe = new Jingfeishenhe();
        jingfeishenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(jingfeishenhe);
    }

    @Override
    public Jingfeishenhe find(Object id) {
        Jingfeishenhe jingfeishenhe = new Jingfeishenhe();
        jingfeishenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(jingfeishenhe);
    }

    @Override
    public int insert(Jingfeishenhe pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Jingfeishenhe pojo) {
        return dao.update(pojo);
    }
}
