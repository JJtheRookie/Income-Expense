

-- Grouping income by month

select month(Date) as "month", format(sum(amt), 'N2') as total_income
from checking_2023
where (Description like '%Oasis%' 
or Description like '%ATM Cash%')
group by month(date)

--Laundry Money

select month(Date) as "month", format(sum(amt), 'N2') as laundry_expense
from checking_2023
where Description like '%CSC%' 
group by month(date)

--Shopping Expense

select month(Date) as "month", format(sum(amt), 'N2') as shopping_expense
from checking_2023
where (Description like '%Wal-mart%'
or description like '%FreshFi%')
group by month(date)

--Conveience of Publix nearby expense

select month(Date) as "month", format(sum(amt), 'N2') as shopping_expense
from checking_2023
where Description like '%Publix%'
group by month(date)

--Aldi
select month(Date) as "month", format(sum(amt), 'N2') as shopping_expense
from checking_2023
where Description like '%Aldi%'
group by month(date)

--Clothing

select month(Date) as "month", format(sum(amt), 'N2') as shopping_expense
from checking_2023
where Description like '%Plato%'
group by month(date)


-- Gas Expense
select month(Date) as "month", format(sum(amt), 'N2') as gas_expense
from checking_2023
where (Description like '%WaWA%'
or description like '%Race%'
or Description like '%7-Eleven%'
or Description like '%Shell%'
or Description like '%Exxon%'
or description like '%Gas%')
group by month(date)

