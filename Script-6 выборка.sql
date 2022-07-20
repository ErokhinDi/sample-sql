---1

select count(*), genres .name from singer 
 join genres 
 on genres.id=singer.id_genres
group by genres.name;

---2
select count (*), track .name,
from album a  
join track t 
on a.id=t.id_album 
where  date_realese between '2019-01-01' and '2020-01-01'
;
---3
select avg (t .duration),a.name from track t
  join album a 
  on a.id=t.id_album 
  group by  a.name ;
  
 ---4
 
 select  s.name from singer s 
 join album a 
 on s.id=a.id_singer 
 where date_realese != '01/01/2020';
 
---5
select c. name  from collections c 
join collect_track on c.id=collect_track.id_collections 
join track t on c.id_track=t.id 
join album a on a.id=t.id_album
join singer s on a.id_singer=s.id 
where s. name like 'scooter';

---6
select a.name from album a 
join album_singer as2 on a.id=as2.id_singer 
join singer s  on as2.id_singer =s.id
join singer_genres sg  on s.id=sg.id_genres 
group by a.name
having count (s.id)>1;

---7
select t. name from track t 
left join collect_track ct  on t.id=ct.id_track 
where ct.id_track is null
;

---8
select s.name,t.duration  from singer s 
join album_singer as2 on s.id=as2.id_singer 
join album a  on as2.id_singer =a.id
join track t on a.id=t.id_album
where t.duration in (select min(duration) from track)  ;

---9
select a. name,count (t.name)  from album a 
join track t on a.id=t.id_album 
group  by a.name 
where  min (t.id) 
select min(track )from album 


;
