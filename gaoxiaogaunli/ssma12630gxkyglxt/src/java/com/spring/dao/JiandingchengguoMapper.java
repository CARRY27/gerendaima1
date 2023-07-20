package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface JiandingchengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Jiandingchengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Jiandingchengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Jiandingchengguo pojo);
    // 查询一行数据
    Jiandingchengguo find(Jiandingchengguo pojo);
    // 插入数据
    int insert(Jiandingchengguo pojo);
    // 更新数据
    int update(Jiandingchengguo pojo);
}
