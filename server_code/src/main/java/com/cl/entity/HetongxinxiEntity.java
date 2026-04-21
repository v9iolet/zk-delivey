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
 * 合同信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@TableName("hetongxinxi")
public class HetongxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public HetongxinxiEntity() {
		
	}
	
	public HetongxinxiEntity(T t) {
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
	 * 合同编号
	 */
					
	private String hetongbianhao;
	
	/**
	 * 合同名称
	 */
					
	private String hetongmingcheng;
	
	/**
	 * 合同类型
	 */
					
	private String hetongleixing;
	
	/**
	 * 合同文件
	 */
					
	private String hetongwenjian;
	
	/**
	 * 签订时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date qiandingshijian;
	
	/**
	 * 终止时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date zhongzhishijian;
	
	/**
	 * 快递员账号
	 */
					
	private String kuaidiyuanzhanghao;
	
	/**
	 * 快递员姓名
	 */
					
	private String kuaidiyuanxingming;
	
	/**
	 * 确认时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date querenshijian;
	
	/**
	 * 合同状态
	 */
					
	private String hetongzhuangtai;
	
	/**
	 * 公司账号
	 */
					
	private String gongsizhanghao;
	
	/**
	 * 公司名称
	 */
					
	private String gongsimingcheng;
	

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
	 * 设置：合同编号
	 */
	public void setHetongbianhao(String hetongbianhao) {
		this.hetongbianhao = hetongbianhao;
	}
	/**
	 * 获取：合同编号
	 */
	public String getHetongbianhao() {
		return hetongbianhao;
	}
	/**
	 * 设置：合同名称
	 */
	public void setHetongmingcheng(String hetongmingcheng) {
		this.hetongmingcheng = hetongmingcheng;
	}
	/**
	 * 获取：合同名称
	 */
	public String getHetongmingcheng() {
		return hetongmingcheng;
	}
	/**
	 * 设置：合同类型
	 */
	public void setHetongleixing(String hetongleixing) {
		this.hetongleixing = hetongleixing;
	}
	/**
	 * 获取：合同类型
	 */
	public String getHetongleixing() {
		return hetongleixing;
	}
	/**
	 * 设置：合同文件
	 */
	public void setHetongwenjian(String hetongwenjian) {
		this.hetongwenjian = hetongwenjian;
	}
	/**
	 * 获取：合同文件
	 */
	public String getHetongwenjian() {
		return hetongwenjian;
	}
	/**
	 * 设置：签订时间
	 */
	public void setQiandingshijian(Date qiandingshijian) {
		this.qiandingshijian = qiandingshijian;
	}
	/**
	 * 获取：签订时间
	 */
	public Date getQiandingshijian() {
		return qiandingshijian;
	}
	/**
	 * 设置：终止时间
	 */
	public void setZhongzhishijian(Date zhongzhishijian) {
		this.zhongzhishijian = zhongzhishijian;
	}
	/**
	 * 获取：终止时间
	 */
	public Date getZhongzhishijian() {
		return zhongzhishijian;
	}
	/**
	 * 设置：快递员账号
	 */
	public void setKuaidiyuanzhanghao(String kuaidiyuanzhanghao) {
		this.kuaidiyuanzhanghao = kuaidiyuanzhanghao;
	}
	/**
	 * 获取：快递员账号
	 */
	public String getKuaidiyuanzhanghao() {
		return kuaidiyuanzhanghao;
	}
	/**
	 * 设置：快递员姓名
	 */
	public void setKuaidiyuanxingming(String kuaidiyuanxingming) {
		this.kuaidiyuanxingming = kuaidiyuanxingming;
	}
	/**
	 * 获取：快递员姓名
	 */
	public String getKuaidiyuanxingming() {
		return kuaidiyuanxingming;
	}
	/**
	 * 设置：确认时间
	 */
	public void setQuerenshijian(Date querenshijian) {
		this.querenshijian = querenshijian;
	}
	/**
	 * 获取：确认时间
	 */
	public Date getQuerenshijian() {
		return querenshijian;
	}
	/**
	 * 设置：合同状态
	 */
	public void setHetongzhuangtai(String hetongzhuangtai) {
		this.hetongzhuangtai = hetongzhuangtai;
	}
	/**
	 * 获取：合同状态
	 */
	public String getHetongzhuangtai() {
		return hetongzhuangtai;
	}
	/**
	 * 设置：公司账号
	 */
	public void setGongsizhanghao(String gongsizhanghao) {
		this.gongsizhanghao = gongsizhanghao;
	}
	/**
	 * 获取：公司账号
	 */
	public String getGongsizhanghao() {
		return gongsizhanghao;
	}
	/**
	 * 设置：公司名称
	 */
	public void setGongsimingcheng(String gongsimingcheng) {
		this.gongsimingcheng = gongsimingcheng;
	}
	/**
	 * 获取：公司名称
	 */
	public String getGongsimingcheng() {
		return gongsimingcheng;
	}

}
