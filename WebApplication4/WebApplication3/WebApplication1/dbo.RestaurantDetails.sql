CREATE TABLE [dbo].[RestaurantDetails]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(50) NULL, 
    [FoodStyle] NCHAR(50) NULL, 
    [Hours] NCHAR(10) NULL, 
    [Capacity] INT NULL, 
    [Tables] INT NULL, 
    [Chairs] NCHAR(10) NULL, 
    [Booth] NCHAR(10) NULL, 
    [Bar] NCHAR(10) NULL, 
    [Delivery] NCHAR(10) NULL, 
    [Address] NCHAR(50) NULL, 
    [PhoneNumber] NCHAR(50) NULL, 
    [DistanceAway] NCHAR(50) NULL, 
    [PlaceHolder] NCHAR(50) NULL, 
    [Rating] NCHAR(50) NULL, 
    [Description] NCHAR(50) NULL, 
    [PriceRange] NCHAR(10) NULL, 
    [VeganOption] NCHAR(10) NULL, 
    [CateringOption] NCHAR(10) NULL, 
    [Outdoor] NCHAR(10) NULL, 
    [SpecialConcern] NCHAR(10) NULL
)
