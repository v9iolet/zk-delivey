package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.WuliugongsiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.WuliugongsiView;


/**
 * 物流公司
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface WuliugongsiService extends IService<WuliugongsiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WuliugongsiView> selectListView(Wrapper<WuliugongsiEntity> wrapper);
   	
   	WuliugongsiView selectView(@Param("ew") Wrapper<WuliugongsiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WuliugongsiEntity> wrapper);
   	
   
}

