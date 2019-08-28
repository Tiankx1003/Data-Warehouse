-- 1）建表语句
drop table if exists ads_continuity_uv_count;
create external table ads_continuity_uv_count( 
    `dt` string COMMENT '统计日期',
    `wk_dt` string COMMENT '最近7天日期',
    `continuity_count` bigint
) COMMENT '连续活跃设备数'
row format delimited fields terminated by '\t'
location '/warehouse/gmall/ads/ads_continuity_uv_count';
-- 2）写出导入数据的SQL语句
insert into table ads_continuity_uv_count
select
    '2019-02-12',
    concat(date_add('2019-02-12',-6),'_','2019-02-12'),
    count(*)
from
(
    select mid_id
    from
    (
        select mid_id      
        from
        (
            select 
                mid_id,
                date_sub(dt,rank) date_dif
            from
            (
                select 
                    mid_id,
                    dt,
                    rank() over(partition by mid_id order by dt) rank
                from dws_uv_detail_day
                where dt>=date_add('2019-02-12',-6) and dt<='2019-02-12'
            )t1
        )t2 
        group by mid_id,date_dif
        having count(*)>=3
    )t3 
    group by mid_id
)t4;
-- 3）查询
select * from ads_continuity_uv_count;
