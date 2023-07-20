package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface WuzifenleiMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Wuzifenlei> selectAll(SelectExample example);

    // 按分页查询数据
    List<Wuzifenlei> selectPage(SelectExample example);
    // 删除数据
    int delete(Wuzifenlei pojo);
    // 查询一行数据
    Wuzifenlei find(Wuzifenlei pojo);
    // 插入数据
    int insert(Wuzifenlei pojo);
    // 更新数据
    int update(Wuzifenlei pojo);
}
