-- 1）建表语句
drop table if exists ads_wastage_count;
create external table ads_wastage_count( 
    `dt` string COMMENT '统计日期',
    `wastage_count` bigint COMMENT '流失设备数'
) 
row format delimited fields terminated by '\t'
location '/warehouse/gmall/ads/ads_wastage_count';
-- 2）导入2019-02-20数据
insert into table ads_wastage_count
select
     '2019-02-20',
     count(*)
from 
(
    select mid_id
from dws_uv_detail_day
    group by mid_id
    having max(dt)<=date_add('2019-02-20',-7)
)t1;
