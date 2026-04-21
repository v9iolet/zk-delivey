package com.cl.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 岗前培训
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2025-04-23 16:07:38
 */
@TableName("gangqianpeixun")
public class GangqianpeixunEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public GangqianpeixunEntity() {
		
	}
	
	public GangqianpeixunEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId(type = IdType.AUTO)
	private Long id;
	/**
	 * 培训主题
	 */
					
	private String peixunzhuti;
	
	/**
	 * 培训时间
	 */
					
	private String peixunshijian;
	
	/**
	 * 培训视频
	 */
					
	private String peixunshipin;
	
	/**
	 * 培训材料
	 */
					
	private String peixuncailiao;
	
	/**
	 * 培训内容
	 */
					
	private String peixunneirong;
	

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：培训主题
	 */
	public void setPeixunzhuti(String peixunzhuti) {
		this.peixunzhuti = peixunzhuti;
	}
	/**
	 * 获取：培训主题
	 */
	public String getPeixunzhuti() {
		return peixunzhuti;
	}
	/**
	 * 设置：培训时间
	 */
	public void setPeixunshijian(String peixunshijian) {
		this.peixunshijian = peixunshijian;
	}
	/**
	 * 获取：培训时间
	 */
	public String getPeixunshijian() {
		return peixunshijian;
	}
	/**
	 * 设置：培训视频
	 */
	public void setPeixunshipin(String peixunshipin) {
		this.peixunshipin = peixunshipin;
	}
	/**
	 * 获取：培训视频
	 */
	public String getPeixunshipin() {
		return peixunshipin;
	}
	/**
	 * 设置：培训材料
	 */
	public void setPeixuncailiao(String peixuncailiao) {
		this.peixuncailiao = peixuncailiao;
	}
	/**
	 * 获取：培训材料
	 */
	public String getPeixuncailiao() {
		return peixuncailiao;
	}
	/**
	 * 设置：培训内容
	 */
	public void setPeixunneirong(String peixunneirong) {
		this.peixunneirong = peixunneirong;
	}
	/**
	 * 获取：培训内容
	 */
	public String getPeixunneirong() {
		return peixunneirong;
	}

}
