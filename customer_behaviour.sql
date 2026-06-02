select * from mytable limit 20;

/*1*/
select gender , sum(purchase_amount) as revenue 
from mytable 
group by gender ;

/*2*/

select customer_id , purchase_amount from mytable
where discount_applied = 'Yes' and 
purchase_amount > (select avg(purchase_amount) from mytable);


/*3*/

select item_purchased , round(avg(review_rating),2) as review from mytable 
group by item_purchased
order by avg(review_rating) desc
limit 5;

/*4*/


