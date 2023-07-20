package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface TonggaoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Tonggao> selectAll(SelectExample example);

    // 按分页查询数据
    List<Tonggao> selectPage(SelectExample example);
    // 删除数据
    int delete(Tonggao pojo);
    // 查询一行数据
    Tonggao find(Tonggao pojo);
    // 插入数据
    int insert(Tonggao pojo);
    // 更新数据
    int update(Tonggao pojo);
}
