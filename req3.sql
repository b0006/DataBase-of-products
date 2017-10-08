--Поиск цены по наименованию блюда
select Recipes.BludoName, SUM(FoodTest.Price) AS Цена
from Recipes INNER JOIN 
     RF_Links ON RF_Links.Recipes_ID = Recipes.ID INNER JOIN
	 FoodTest ON FoodTest.ID = RF_Links.Food_ID
where Recipes.BludoName = 'Пирог'
group by Recipes.BludoName