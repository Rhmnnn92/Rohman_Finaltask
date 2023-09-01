select "Marital Status", avg(age)As umur from customer c
group by "Marital Status" 

select gender, avg(age)As umur from customer c
group by gender  

select store.storename, 
sum(transaksi.qty) as qtyMaks
from store join transaksi 
on transaksi.storeid = store.storeid
group by transaksi.storeid, storename 
order by qtyMaks desc 
limit 1 ;

select produk."Product Name",
sum(transaksi.totalamount) as produkTerlaris
from produk join transaksi 
on transaksi.productid = produk.productid
group by produk.productid, "Product Name"
order by produkTerlaris desc 
limit 1;


