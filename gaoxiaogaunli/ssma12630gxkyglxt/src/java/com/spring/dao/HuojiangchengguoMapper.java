package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface HuojiangchengguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Huojiangchengguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Huojiangchengguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Huojiangchengguo pojo);
    // 查询一行数据
    Huojiangchengguo find(Huojiangchengguo pojo);
    // 插入数据
    int insert(Huojiangchengguo pojo);
    // 更新数据
    int update(Huojiangchengguo pojo);
}
