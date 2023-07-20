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

@Service("KeyankaoheService")
public class KeyankaoheServiceImpl implements KeyankaoheService {

    @Resource
    private KeyankaoheMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Keyankaohe> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Keyankaohe> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Keyankaohe> list = dao.selectPage(example);

        PageInfo<Keyankaohe> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Keyankaohe keyankaohe = new Keyankaohe();
        keyankaohe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(keyankaohe);
    }

    @Override
    public Keyankaohe find(Object id) {
        Keyankaohe keyankaohe = new Keyankaohe();
        keyankaohe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(keyankaohe);
    }

    @Override
    public int insert(Keyankaohe pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Keyankaohe pojo) {
        return dao.update(pojo);
    }
}
