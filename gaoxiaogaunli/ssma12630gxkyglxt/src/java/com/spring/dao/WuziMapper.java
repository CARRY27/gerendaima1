package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface WuziMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Wuzi> selectAll(SelectExample example);

    // 按分页查询数据
    List<Wuzi> selectPage(SelectExample example);
    // 删除数据
    int delete(Wuzi pojo);
    // 查询一行数据
    Wuzi find(Wuzi pojo);
    // 插入数据
    int insert(Wuzi pojo);
    // 更新数据
    int update(Wuzi pojo);
}
