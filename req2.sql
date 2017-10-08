-- Поиск цены по наименованию продукта
select FoodTest.ProductName, FoodTest.Price
from FoodTest
where FoodTest.ProductName = 'Курица'