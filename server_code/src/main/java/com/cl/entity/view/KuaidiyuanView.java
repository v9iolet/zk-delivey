package com.cl.entity.view;

import com.cl.entity.KuaidiyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.cl.utils.EncryptUtil;
 

/**
 * 快递员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@TableName("kuaidiyuan")
public class KuaidiyuanView  extends KuaidiyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public KuaidiyuanView(){
	}
 
 	public KuaidiyuanView(KuaidiyuanEntity kuaidiyuanEntity){
 	try {
			BeanUtils.copyProperties(this, kuaidiyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}



}
