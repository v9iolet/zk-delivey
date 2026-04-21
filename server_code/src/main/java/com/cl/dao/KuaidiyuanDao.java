package com.cl.dao;

import com.cl.entity.KuaidiyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.KuaidiyuanView;


/**
 * 快递员
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface KuaidiyuanDao extends BaseMapper<KuaidiyuanEntity> {
	
	List<KuaidiyuanView> selectListView(@Param("ew") Wrapper<KuaidiyuanEntity> wrapper);

	List<KuaidiyuanView> selectListView(Pagination page,@Param("ew") Wrapper<KuaidiyuanEntity> wrapper);
	
	KuaidiyuanView selectView(@Param("ew") Wrapper<KuaidiyuanEntity> wrapper);


}
