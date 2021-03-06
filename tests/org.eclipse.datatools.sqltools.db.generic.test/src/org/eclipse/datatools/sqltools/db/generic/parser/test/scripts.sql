--use

use master
go

--select

select * from dbo.ijdbc_function_escapes

select * from master.dbo.sysobjects	where name = "test1"

/* display the information of the config parameter */
select "Parameter Name" = convert(char(30), name),
	"Default" = convert(char(11), space(11-char_length(
	  convert(varchar(11), defvalue))) +
	  convert(varchar(11), defvalue)),
	"Memory Used" = convert(char(11), space(11-char_length(
	  convert(varchar(11), c.comment))) +
	  convert(varchar(11), c.comment)),
	"Config Value" = convert(char(11), space(11-char_length(
 	  isnull(b.value2, convert(char(32), b.value)))) +
 	  isnull(b.value2, convert(char(32), b.value))),
	"Run Value"  = convert(char(11), space(11-char_length(
	  isnull(c.value2, convert(char(32), c.value)))) +
	  isnull(c.value2, convert(char(32), c.value))),
	"Unit" = convert(char(20), c.unit),
	"Type" = convert(char(10), c.type)
from master.dbo.sysconfigures b,
	master.dbo.syscurconfigs c
where 
	b.config *= c.config
	and name like "%" + @configname + "%"
	and b.config != 19
	and parent != 19

select date,
       sales.ord_num,
       qty,
       salesdetail.title_id,
       discount,
       price,
       total = qty * price * (1 - discount/100)
from sales, salesdetail, titles
where sales.stor_id = @stor_id
and sales.ord_num = salesdetail.ord_num
and titles.title_id = salesdetail.title_id
order by date desc, sales.ord_num

select pub_id, total = sum (total_sales)
into #advance_rpt
from titles
where advance < $10000
and total_sales is not null
group by pub_id
having count(*) > 1


select type, price, advance from titles
order by type desc
compute avg(price), sum(advance) by type
compute sum(price), sum(advance)

select au_id, titles.title_id, title, price
from titleauthor inner join titles
on titleauthor.title_id = titles.title_id
and price > 15


select au_fname, au_lname, pub_name
from authors left join publishers
on authors.city = publishers.city


select x = convert(datetime null, getdate()) into
mytable


--compound
	
begin
	select * from master.dbo.sysdatabases
		where name = "pubs2"
end
go

--insert

insert authors
values('722-51-5454', 'DeFrance', 'Michel',
'219 547-9982', '3 Balding Pl.', 'Gary', 'IN', 'USA', '46403')

insert advances
select pub_id, isnull(advance, 0) from titles

insert titles
(title_id, title, type, pub_id, notes, pubdate,
contract)
values ('BU1237', 'Get Going!', 'business',
'1389', 'great', '06/18/86', 1)

insert newauthors
select *
from authors
where city = "San Francisco"


go

--update

/* add all the new values */
/* use isnull:  a null value in the titles table means 
**              "no sales yet" not "sales unknown"
*/
update titles
        set total_sales = isnull(total_sales, 0) + (select sum(qty)
		from inserted
		where titles.title_id = inserted.title_id)
	where title_id in (select title_id from inserted)

/* remove all values being deleted or updated */
update titles
        set total_sales = isnull(total_sales, 0) - (select sum(qty)
		from deleted
		where titles.title_id = deleted.title_id)
	where title_id in (select title_id from deleted)

update titles set total_sales = total_sales +
(select isnull(sum(qty),0)
from salesdetail sd
where t.title_id = sd.title_id)
from titles t



--delete

delete authors

delete from authors
where au_lname = "McBadden"

delete titles
from titles, authors, titleauthor
where authors.au_lname = 'Bennet'
and authors.au_id = titleauthor.au_id
and titleauthor.title_id = titles.title_id

delete titles where current of title_crsr


--if, print

if (@partition_number <= 0) OR
	(@partition_number > 64)
begin
	select @cache_part_temp = 2
	print @msg,  @fullconfigname
end

if exists (select postalcode from authors
where postalcode = "94705")
print "Berkeley author"

if (select max(id) from sysobjects) < 100
print "No user-created objects in this database"
else
begin
print "These are the user-created objects"
select name, type, id
from sysobjects
where id > 100
end

