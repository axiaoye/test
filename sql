select t2.id,t1.vehicle_plate,
case when t2.day01 = '0' then GROUP_CONCAT(t1.day01) else null end as day01，
case when t2.day02 = '0' then GROUP_CONCAT(t1.day02) else null end as day02，
case when t2.day03 = '0' then GROUP_CONCAT(t1.day03) else null end as day03，
case when t2.day04 = '0' then GROUP_CONCAT(t1.day04) else null end as day04，
case when t2.day05 = '0' then GROUP_CONCAT(t1.day05) else null end as day05，
case when t2.day06 = '0' then GROUP_CONCAT(t1.day06) else null end as day06，
case when t2.day07 = '0' then GROUP_CONCAT(t1.day07) else null end as day07，
case when t2.day08 = '0' then GROUP_CONCAT(t1.day08) else null end as day08，
case when t2.day09 = '0' then GROUP_CONCAT(t1.day09) else null end as day09，
case when t2.day10 = '0' then GROUP_CONCAT(t1.day10) else null end as day10，
case when t2.day11 = '0' then GROUP_CONCAT(t1.day11) else null end as day11，
case when t2.day12 = '0' then GROUP_CONCAT(t1.day12) else null end as day12，
case when t2.day13 = '0' then GROUP_CONCAT(t1.day13) else null end as day13，
case when t2.day14 = '0' then GROUP_CONCAT(t1.day14) else null end as day14，
case when t2.day15 = '0' then GROUP_CONCAT(t1.day15) else null end as day15，
case when t2.day16 = '0' then GROUP_CONCAT(t1.day16) else null end as day16，
case when t2.day17 = '0' then GROUP_CONCAT(t1.day17) else null end as day17，
case when t2.day18 = '0' then GROUP_CONCAT(t1.day18) else null end as day18，
case when t2.day19 = '0' then GROUP_CONCAT(t1.day19) else null end as day19，
case when t2.day20 = '0' then GROUP_CONCAT(t1.day20) else null end as day20，
case when t2.day21 = '0' then GROUP_CONCAT(t1.day21) else null end as day21，
case when t2.day22 = '0' then GROUP_CONCAT(t1.day22) else null end as day22，
case when t2.day23 = '0' then GROUP_CONCAT(t1.day23) else null end as day23，
case when t2.day24 = '0' then GROUP_CONCAT(t1.day24) else null end as day24，
case when t2.day25 = '0' then GROUP_CONCAT(t1.day25) else null end as day25，
case when t2.day26 = '0' then GROUP_CONCAT(t1.day26) else null end as day26，
case when t2.day27 = '0' then GROUP_CONCAT(t1.day27) else null end as day27，
case when t2.day28 = '0' then GROUP_CONCAT(t1.day28) else null end as day28
from 
(
select vehicle_plate,
case when trans_time = '2023-02-01' then province else null end as 'day01',
case when trans_time = '2023-02-02' then province else null end as 'day02',
case when trans_time = '2023-02-03' then province else null end as 'day03',
case when trans_time = '2023-02-04' then province else null end as 'day04',
case when trans_time = '2023-02-05' then province else null end as 'day05',
case when trans_time = '2023-02-06' then province else null end as 'day06',
case when trans_time = '2023-02-07' then province else null end as 'day07',
case when trans_time = '2023-02-08' then province else null end as 'day08',
case when trans_time = '2023-02-09' then province else null end as 'day09',
case when trans_time = '2023-02-10' then province else null end as 'day10',
case when trans_time = '2023-02-11' then province else null end as 'day11',
case when trans_time = '2023-02-12' then province else null end as 'day12',
case when trans_time = '2023-02-13' then province else null end as 'day13',
case when trans_time = '2023-02-14' then province else null end as 'day14',
case when trans_time = '2023-02-15' then province else null end as 'day15',
case when trans_time = '2023-02-16' then province else null end as 'day16',
case when trans_time = '2023-02-17' then province else null end as 'day17',
case when trans_time = '2023-02-18' then province else null end as 'day18',
case when trans_time = '2023-02-19' then province else null end as 'day19',
case when trans_time = '2023-02-20' then province else null end as 'day20',
case when trans_time = '2023-02-21' then province else null end as 'day21',
case when trans_time = '2023-02-22' then province else null end as 'day22',
case when trans_time = '2023-02-23' then province else null end as 'day23',
case when trans_time = '2023-02-24' then province else null end as 'day24',
case when trans_time = '2023-02-25' then province else null end as 'day25',
case when trans_time = '2023-02-26' then province else null end as 'day26',
case when trans_time = '2023-02-27' then province else null end as 'day27',
case when trans_time = '2023-02-28' then province else null end as 'day28'
from (
select vehicle_plate,trans_time,GROUP_CONCAT(province) as province from (
select distinct a.vehicle_plate,date(a.trans_time) as trans_time,
concat(r.road_name,'-',p.full_name,ts.region_name) as province
FROM tdts_gantry_free_trans a 
LEFT JOIN etc_toll_station ts on SUBSTR(a.id,1,11) = ts.toll_section_id
LEFT JOIN etc_province p on a.province_type = p.province
LEFT JOIN etc_road r on SUBSTR(a.id,1,7) = r.id
where a.trans_time >= '2023-02-01' and a.trans_time < '2023-03-01'
and a.vehicle_plate in (
'晋A14FR2_0',
'晋C17762_1',
'晋C27176_1',
'晋C16617_1',
'晋A70261_1',
'晋A72541_1',
'晋C33268_1',
'晋A72567_1',
'晋C20553_1',
'晋A72956_1',
'晋C3700S_0',
'晋A47777_1',
'晋A77064_1',
'晋A77278_1',
'晋C36673_1',
'晋C19038_1',
'晋C37271_1',
'晋A77908_1',
'晋C3298Q_0',
'晋C36182_1',
'晋A41ZF3_0',
'晋C32814_1',
'晋C37396_1',
'晋C3609H_0',
'晋C18929_1',
'晋C34500_1',
'晋A67034_1',
'晋A77289_1',
'晋A71974_1',
'晋A67031_1',
'晋C33969_1',
'晋A72556_1',
'晋A27QV7_0',
'晋C3028L_0',
'晋C29597_1',
'晋A72558_1',
'晋A67048_1',
'晋C1703M_0',
'晋A77286_1',
'晋A72930_1',
'晋C23988_1',
'晋A07KJ3_0',
'晋A72873_1',
'晋C36157_1',
'晋C3590M_0',
'晋C36509_1',
'晋C27175_1',
'晋A08RR2_0',
'晋A77929_1',
'晋A050SP_0',
'晋C26770_1',
'晋C2905A_0',
'晋A08KF4_0',
'晋C33445_1',
'晋A67023_1',
'晋A1WT58_0',
'晋A16GB6_0',
'晋A72931_1',
'晋C23379_1',
'晋C32999_1',
'晋C20171_1',
'晋A67032_1',
'晋A67027_1',
'晋C33852_1',
'晋A69438_1',
'晋C36206_1',
'晋A67039_1',
'晋C36829_1',
'晋C1852M_0',
'晋C29670_1',
'晋A40XF5_0',
'晋A69448_1',
'晋A70736_1',
'晋C15967_1',
'晋A67052_1',
'晋A77063_1',
'晋C35388_1',
'晋C36786_1',
'晋A67037_1',
'晋A72915_1',
'晋C34189_1',
'晋A0QL30_0',
'晋C28320_1',
'晋A0PV57_0',
'晋C27127_1',
'晋C34788_1',
'晋C22042_1',
'晋A58299_1',
'晋C33436_1',
'晋A72059_1',
'晋A47LQ5_0',
'晋C32805_1',
'晋A47222_1',
'晋A60692_1',
'晋C37412_1',
'晋C37400_1',
'晋A6KA53_0',
'晋A70214_1',
'晋C3798K_0',
'晋C33006_1'
)and a.province_type != 'SHAN_XI' -- 排除本省
)group by vehicle_plate,trans_time
)
) as t1
RIGHT JOIN tmp_wyf_20230328 t2 on t2.vehicle_id = t1.vehicle_plate
group by t2.id,t1.vehicle_plate
;
