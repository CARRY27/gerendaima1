package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface LunwenchengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Lunwenchengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Lunwenchengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Lunwenchengguo pojo);
    // 查询一行数据
    Lunwenchengguo find(Lunwenchengguo pojo);
    // 插入数据
    int insert(Lunwenchengguo pojo);
    // 更新数据
    int update(Lunwenchengguo pojo);
}
