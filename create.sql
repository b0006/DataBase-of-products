CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FoodTest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nchar](30) NOT NULL,
	[Price] [int] NOT NULL,
	[Energy] [int] NOT NULL,
 CONSTRAINT [PK_FoodTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Recipes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BludoName] [nchar](30) NOT NULL,
	[Persons] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Categories] FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Categories]
GO

CREATE TABLE [dbo].[RF_Links](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Food_ID] [int] NOT NULL,
	[Recipes_ID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_RF_Links] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RF_Links]  WITH CHECK ADD  CONSTRAINT [FK_RF_Links_FoodTest] FOREIGN KEY([Food_ID])
REFERENCES [dbo].[FoodTest] ([ID])
GO
ALTER TABLE [dbo].[RF_Links] CHECK CONSTRAINT [FK_RF_Links_FoodTest]
GO
ALTER TABLE [dbo].[RF_Links]  WITH CHECK ADD  CONSTRAINT [FK_RF_Links_Recipes] FOREIGN KEY([Recipes_ID])
REFERENCES [dbo].[Recipes] ([ID])
GO
ALTER TABLE [dbo].[RF_Links] CHECK CONSTRAINT [FK_RF_Links_Recipes]
GO
