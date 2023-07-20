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

@Service("KeyanrenyuanService")
public class KeyanrenyuanServiceImpl implements KeyanrenyuanService {

    @Resource
    private KeyanrenyuanMapper dao;

    public Keyanrenyuan login(String username, String password) {
        Keyanrenyuan user = new Keyanrenyuan();
        user.setYonghuming(username);
        user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Keyanrenyuan user = new Keyanrenyuan();
        user.setId(id);
        user.setMima(newPassword);
        int i = this.dao.update(user);
        return i == 1;
    }

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Keyanrenyuan> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Keyanrenyuan> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Keyanrenyuan> list = dao.selectPage(example);

        PageInfo<Keyanrenyuan> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Keyanrenyuan keyanrenyuan = new Keyanrenyuan();
        keyanrenyuan.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(keyanrenyuan);
    }

    @Override
    public Keyanrenyuan find(Object id) {
        Keyanrenyuan keyanrenyuan = new Keyanrenyuan();
        keyanrenyuan.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(keyanrenyuan);
    }

    @Override
    public int insert(Keyanrenyuan pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Keyanrenyuan pojo) {
        return dao.update(pojo);
    }
}
