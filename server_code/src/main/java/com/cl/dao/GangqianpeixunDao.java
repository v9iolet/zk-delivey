package com.cl.dao;

import com.cl.entity.GangqianpeixunEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.GangqianpeixunView;


/**
 * 岗前培训
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:38
 */
public interface GangqianpeixunDao extends BaseMapper<GangqianpeixunEntity> {
	
	List<GangqianpeixunView> selectListView(@Param("ew") Wrapper<GangqianpeixunEntity> wrapper);

	List<GangqianpeixunView> selectListView(Pagination page,@Param("ew") Wrapper<GangqianpeixunEntity> wrapper);
	
	GangqianpeixunView selectView(@Param("ew") Wrapper<GangqianpeixunEntity> wrapper);


}
