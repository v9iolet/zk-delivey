package com.cl.dao;

import com.cl.entity.WuliugongsiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WuliugongsiView;


/**
 * 物流公司
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface WuliugongsiDao extends BaseMapper<WuliugongsiEntity> {
	
	List<WuliugongsiView> selectListView(@Param("ew") Wrapper<WuliugongsiEntity> wrapper);

	List<WuliugongsiView> selectListView(Pagination page,@Param("ew") Wrapper<WuliugongsiEntity> wrapper);
	
	WuliugongsiView selectView(@Param("ew") Wrapper<WuliugongsiEntity> wrapper);


}
