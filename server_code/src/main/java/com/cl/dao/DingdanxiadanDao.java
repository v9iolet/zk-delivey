package com.cl.dao;

import com.cl.entity.DingdanxiadanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanxiadanView;


/**
 * 订单下单
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanxiadanDao extends BaseMapper<DingdanxiadanEntity> {
	
	List<DingdanxiadanView> selectListView(@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);

	List<DingdanxiadanView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);
	
	DingdanxiadanView selectView(@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);


    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DingdanxiadanEntity> wrapper);



}
