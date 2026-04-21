package com.cl.entity.view;

import com.cl.entity.DingdanxiadanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 订单下单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@TableName("dingdanxiadan")
public class DingdanxiadanView  extends DingdanxiadanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DingdanxiadanView(){
	}
 
 	public DingdanxiadanView(DingdanxiadanEntity dingdanxiadanEntity){
 	try {
			BeanUtils.copyProperties(this, dingdanxiadanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
