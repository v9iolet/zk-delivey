package com.cl.dao;

import com.cl.entity.ShensuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShensuxinxiView;


/**
 * 申诉信息
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface ShensuxinxiDao extends BaseMapper<ShensuxinxiEntity> {
	
	List<ShensuxinxiView> selectListView(@Param("ew") Wrapper<ShensuxinxiEntity> wrapper);

	List<ShensuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ShensuxinxiEntity> wrapper);
	
	ShensuxinxiView selectView(@Param("ew") Wrapper<ShensuxinxiEntity> wrapper);


}
