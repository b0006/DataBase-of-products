-- Вывод списка продуктов и сметы для данного блюда
select FoodTest.ProductName, FoodTest.Price
from FoodTest INNER JOIN
     RF_Links ON RF_Links.Food_ID = FoodTest.ID INNER JOIN
	 Recipes ON Recipes.ID = RF_Links.Recipes_ID
where Recipes.BludoName = 'Пирог'
group by FoodTest.Price, FoodTest.ProductName

select Recipes.Persons 
from Recipes
where Recipes.BludoName = 'Пирог'
group by Recipes.Persons