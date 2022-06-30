select * from citizen where name like CONCAT('%',?,'%')
select * from citizen where id= ?
select * from citizen where name like CONCAT('%',?,'%') and id=?

select id,name,city,situation,phone_num,stay.days from citizen natural join city natural join stay where name like CONCAT('%',?,'%')
select id,name,city,situation,phone_num,stay.days from citizen natural join city natural join stay where id=?
select id,name,city,situation,phone_num,stay.days from citizen natural join city natural join stay where name like CONCAT('%',?,'%') and id=?

select id,name,vname,time,company from citizen natural join takein natural join vaccines where name like CONCAT('%',?,'%')
select id,name,vname,time,company from citizen natural join takein natural join vaccines where id=?
select id,name,vname,time,company from citizen natural join takein natural join vaccines where id=? and name like CONCAT('%',?,'%')

select id,name,time,result from citizen natural join natest where name like CONCAT('%',?,'%')
select id,name,time,result from citizen natural join natest where id=?
select id,name,time,result from citizen natural join natest where id=? and name like CONCAT('%',?,'%')

其中CONCAT('%',?,'%')为字符串模糊查询参数
？为数字参数
