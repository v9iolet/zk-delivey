package com.cl.dao;

import com.cl.entity.XinzixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XinzixinxiView;


/**
 * 薪资信息
 * 
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface XinzixinxiDao extends BaseMapper<XinzixinxiEntity> {
	
	List<XinzixinxiView> selectListView(@Param("ew") Wrapper<XinzixinxiEntity> wrapper);

	List<XinzixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<XinzixinxiEntity> wrapper);
	
	XinzixinxiView selectView(@Param("ew") Wrapper<XinzixinxiEntity> wrapper);


}
