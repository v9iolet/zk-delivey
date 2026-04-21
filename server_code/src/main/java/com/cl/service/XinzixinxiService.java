package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.XinzixinxiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.XinzixinxiView;


/**
 * 薪资信息
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface XinzixinxiService extends IService<XinzixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XinzixinxiView> selectListView(Wrapper<XinzixinxiEntity> wrapper);
   	
   	XinzixinxiView selectView(@Param("ew") Wrapper<XinzixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XinzixinxiEntity> wrapper);
   	
   
}

