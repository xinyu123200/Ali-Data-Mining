

##############品牌分析
 
 #cnmame <- c("brand_id","active_num","month_num","user_num","uer_active_ratio","buy_convert")
 
 #次数 
 SELECT brand_id,COUNT(1)AS active_num FROM t_alibaba_data GROUP BY brand_id LIMIT 100;
  
 #用户数
 SELECT brand_id,COUNT(DISTINCT(user_id))AS user_num FROM t_alibaba_data GROUP BY brand_id LIMIT 100;
 
 #月数
 SELECT brand_id,COUNT(DISTINCT(MONTH(visit_datetime)))AS month_num FROM t_alibaba_data GROUP BY brand_id LIMIT 100;
 
 #用户数/次数
user_active_ratio

#购买用户数
SELECT brand_id,
 COUNT(DISTINCT(user_id))AS buy_num 
 FROM t_alibaba_data 
 WHERE TYPE =1 
 GROUP BY brand_id 
 LIMIT 100;


#整体
SELECT brand_id,
 COUNT(1)AS active_num , 
 COUNT(DISTINCT(user_id))AS user_num , 
 COUNT(DISTINCT(MONTH(visit_datetime)))AS month_num,
 COUNT(DISTINCT(user_id))/COUNT(1) AS user_active_ratio
 FROM t_alibaba_data GROUP BY brand_id 
LIMIT 100