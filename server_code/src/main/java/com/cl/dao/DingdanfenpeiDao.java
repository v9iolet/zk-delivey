package com.cl.dao;

import com.cl.entity.DingdanfenpeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanfenpeiView;


/**
 * 订单分配
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanfenpeiDao extends BaseMapper<DingdanfenpeiEntity> {
	
	List<DingdanfenpeiView> selectListView(@Param("ew") Wrapper<DingdanfenpeiEntity> wrapper);

	List<DingdanfenpeiView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanfenpeiEntity> wrapper);
	
	DingdanfenpeiView selectView(@Param("ew") Wrapper<DingdanfenpeiEntity> wrapper);


}
