package com.spring.service;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;

public interface KeyanrenyuanService {
    // 账号登录
    public Keyanrenyuan login(String username, String password);

    // 修改密码
    public boolean updatePassword(int id, String newPassword);

    // 查询总行数
    Integer count(SelectExample map);
    // 按分页查询数据
    List<Keyanrenyuan> selectPage(SelectExample example, int page, int pageSize);
    // 搜索全部数据
    List<Keyanrenyuan> selectAll(SelectExample example);
    // 按id删除一行数据
    int delete(Object id);
    // 查询一行数据
    Keyanrenyuan find(Object id);
    // 插入一行数据
    int insert(Keyanrenyuan pojo);
    // 更新一行数据
    int update(Keyanrenyuan pojo);
}
