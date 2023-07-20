package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhuzuochengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhuzuochengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhuzuochengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhuzuochengguo pojo);
    // 查询一行数据
    Zhuzuochengguo find(Zhuzuochengguo pojo);
    // 插入数据
    int insert(Zhuzuochengguo pojo);
    // 更新数据
    int update(Zhuzuochengguo pojo);
}
