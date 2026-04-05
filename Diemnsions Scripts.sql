--Create Room Type Dim (View)
Create view RoomTypeDim_VW
as
select ROW_NUMBER() over( order by [room_type_reserved]) as roomTypePK ,room_type_reserved from
(
select
distinct [room_type_reserved] from [HotelDWs].[dbo].[MainTable]
)t

select * from RoomTypeDim_VW

--Create Meal Plan Dim (View)
Create view MealPlanDim_VW
as
select ROW_NUMBER() over( order by type_of_meal_plan) as mealPlanPK ,type_of_meal_plan from
(
select
distinct type_of_meal_plan from [HotelDWs].[dbo].[MainTable]
)t

select * from MealPlanDim_VW

--Create Market Segamnet Dim (View)
Create view MarketSegmentDim_VW
as
select ROW_NUMBER() over( order by [market_segment_type]) as marketSegamentPK ,[market_segment_type] from
(
select
distinct [market_segment_type] from [HotelDWs].[dbo].[MainTable]
)t

select * from MarketSegmentDim_VW