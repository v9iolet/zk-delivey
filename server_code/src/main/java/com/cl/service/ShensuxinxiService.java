package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.ShensuxinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.ShensuxinxiView;


/**
 * 申诉信息
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface ShensuxinxiService extends IService<ShensuxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShensuxinxiView> selectListView(Wrapper<ShensuxinxiEntity> wrapper);
   	
   	ShensuxinxiView selectView(@Param("ew") Wrapper<ShensuxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShensuxinxiEntity> wrapper);
   	
   
}

