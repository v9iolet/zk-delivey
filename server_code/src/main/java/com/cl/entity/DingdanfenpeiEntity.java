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
 * 订单分配
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2025-04-23 16:07:37
 */
@TableName("dingdanfenpei")
public class DingdanfenpeiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public DingdanfenpeiEntity() {
		
	}
	
	public DingdanfenpeiEntity(T t) {
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
	 * 封面
	 */
					
	private String fengmian;
	
	/**
	 * 服务名称
	 */
					
	private String fuwumingcheng;
	
	/**
	 * 服务类型
	 */
					
	private String fuwuleixing;
	
	/**
	 * 服务价格
	 */
					
	private Double fuwujiage;
	
	/**
	 * 公司账号
	 */
					
	private String gongsizhanghao;
	
	/**
	 * 公司名称
	 */
					
	private String gongsimingcheng;
	
	/**
	 * 联系方式
	 */
					
	private String lianxifangshi;
	
	/**
	 * 订单编号
	 */
					
	private String dingdanbianhao;
	
	/**
	 * 下单账号
	 */
					
	private String xiadanzhanghao;
	
	/**
	 * 下单人
	 */
					
	private String xiadanren;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 货物名称
	 */
					
	private String huowumingcheng;
	
	/**
	 * 发货地址
	 */
					
	private String fahuodizhi;
	
	/**
	 * 收货地址
	 */
					
	private String shouhuodizhi;
	
	/**
	 * 货物描述
	 */
					
	private String huowumiaoshu;
	
	/**
	 * 收件人姓名
	 */
					
	private String shoujianrenxingming;
	
	/**
	 * 手机号码
	 */
					
	private String shoujihaoma;
	
	/**
	 * 分配时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date fenpeishijian;
	
	/**
	 * 快递员账号
	 */
					
	private String kuaidiyuanzhanghao;
	
	/**
	 * 快递员姓名
	 */
					
	private String kuaidiyuanxingming;
	
	/**
	 * 订单状态
	 */
					
	private String dingdanzhuangtai;
	

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
	 * 设置：封面
	 */
	public void setFengmian(String fengmian) {
		this.fengmian = fengmian;
	}
	/**
	 * 获取：封面
	 */
	public String getFengmian() {
		return fengmian;
	}
	/**
	 * 设置：服务名称
	 */
	public void setFuwumingcheng(String fuwumingcheng) {
		this.fuwumingcheng = fuwumingcheng;
	}
	/**
	 * 获取：服务名称
	 */
	public String getFuwumingcheng() {
		return fuwumingcheng;
	}
	/**
	 * 设置：服务类型
	 */
	public void setFuwuleixing(String fuwuleixing) {
		this.fuwuleixing = fuwuleixing;
	}
	/**
	 * 获取：服务类型
	 */
	public String getFuwuleixing() {
		return fuwuleixing;
	}
	/**
	 * 设置：服务价格
	 */
	public void setFuwujiage(Double fuwujiage) {
		this.fuwujiage = fuwujiage;
	}
	/**
	 * 获取：服务价格
	 */
	public Double getFuwujiage() {
		return fuwujiage;
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
	/**
	 * 设置：联系方式
	 */
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
	/**
	 * 设置：订单编号
	 */
	public void setDingdanbianhao(String dingdanbianhao) {
		this.dingdanbianhao = dingdanbianhao;
	}
	/**
	 * 获取：订单编号
	 */
	public String getDingdanbianhao() {
		return dingdanbianhao;
	}
	/**
	 * 设置：下单账号
	 */
	public void setXiadanzhanghao(String xiadanzhanghao) {
		this.xiadanzhanghao = xiadanzhanghao;
	}
	/**
	 * 获取：下单账号
	 */
	public String getXiadanzhanghao() {
		return xiadanzhanghao;
	}
	/**
	 * 设置：下单人
	 */
	public void setXiadanren(String xiadanren) {
		this.xiadanren = xiadanren;
	}
	/**
	 * 获取：下单人
	 */
	public String getXiadanren() {
		return xiadanren;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：货物名称
	 */
	public void setHuowumingcheng(String huowumingcheng) {
		this.huowumingcheng = huowumingcheng;
	}
	/**
	 * 获取：货物名称
	 */
	public String getHuowumingcheng() {
		return huowumingcheng;
	}
	/**
	 * 设置：发货地址
	 */
	public void setFahuodizhi(String fahuodizhi) {
		this.fahuodizhi = fahuodizhi;
	}
	/**
	 * 获取：发货地址
	 */
	public String getFahuodizhi() {
		return fahuodizhi;
	}
	/**
	 * 设置：收货地址
	 */
	public void setShouhuodizhi(String shouhuodizhi) {
		this.shouhuodizhi = shouhuodizhi;
	}
	/**
	 * 获取：收货地址
	 */
	public String getShouhuodizhi() {
		return shouhuodizhi;
	}
	/**
	 * 设置：货物描述
	 */
	public void setHuowumiaoshu(String huowumiaoshu) {
		this.huowumiaoshu = huowumiaoshu;
	}
	/**
	 * 获取：货物描述
	 */
	public String getHuowumiaoshu() {
		return huowumiaoshu;
	}
	/**
	 * 设置：收件人姓名
	 */
	public void setShoujianrenxingming(String shoujianrenxingming) {
		this.shoujianrenxingming = shoujianrenxingming;
	}
	/**
	 * 获取：收件人姓名
	 */
	public String getShoujianrenxingming() {
		return shoujianrenxingming;
	}
	/**
	 * 设置：手机号码
	 */
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
	/**
	 * 设置：分配时间
	 */
	public void setFenpeishijian(Date fenpeishijian) {
		this.fenpeishijian = fenpeishijian;
	}
	/**
	 * 获取：分配时间
	 */
	public Date getFenpeishijian() {
		return fenpeishijian;
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
	 * 设置：订单状态
	 */
	public void setDingdanzhuangtai(String dingdanzhuangtai) {
		this.dingdanzhuangtai = dingdanzhuangtai;
	}
	/**
	 * 获取：订单状态
	 */
	public String getDingdanzhuangtai() {
		return dingdanzhuangtai;
	}

}
