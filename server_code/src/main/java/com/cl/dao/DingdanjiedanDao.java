package com.cl.dao;

import com.cl.entity.DingdanjiedanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanjiedanView;


/**
 * 订单接单
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanjiedanDao extends BaseMapper<DingdanjiedanEntity> {
	
	List<DingdanjiedanView> selectListView(@Param("ew") Wrapper<DingdanjiedanEntity> wrapper);

	List<DingdanjiedanView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanjiedanEntity> wrapper);
	
	DingdanjiedanView selectView(@Param("ew") Wrapper<DingdanjiedanEntity> wrapper);


}
