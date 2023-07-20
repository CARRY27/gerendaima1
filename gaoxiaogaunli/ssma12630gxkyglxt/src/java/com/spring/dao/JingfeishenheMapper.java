package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface JingfeishenheMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Jingfeishenhe> selectAll(SelectExample example);

    // 按分页查询数据
    List<Jingfeishenhe> selectPage(SelectExample example);
    // 删除数据
    int delete(Jingfeishenhe pojo);
    // 查询一行数据
    Jingfeishenhe find(Jingfeishenhe pojo);
    // 插入数据
    int insert(Jingfeishenhe pojo);
    // 更新数据
    int update(Jingfeishenhe pojo);
}
