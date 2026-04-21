package com.cl.dao;

import com.cl.entity.DingdanqianshouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanqianshouView;


/**
 * 订单签收
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanqianshouDao extends BaseMapper<DingdanqianshouEntity> {
	
	List<DingdanqianshouView> selectListView(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);

	List<DingdanqianshouView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
	
	DingdanqianshouView selectView(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);


}
