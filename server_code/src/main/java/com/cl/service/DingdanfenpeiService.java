package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DingdanfenpeiEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DingdanfenpeiView;


/**
 * 订单分配
 *
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
public interface DingdanfenpeiService extends IService<DingdanfenpeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DingdanfenpeiView> selectListView(Wrapper<DingdanfenpeiEntity> wrapper);
   	
   	DingdanfenpeiView selectView(@Param("ew") Wrapper<DingdanfenpeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DingdanfenpeiEntity> wrapper);
   	
   
}

