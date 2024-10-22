USE [SingaporeEmigration]
GO
/****** Object:  Table [dbo].[DimCostOfLiving]    Script Date: 7/31/2018 1:16:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCostOfLiving](
	[CostID] [int] IDENTITY(1,1) NOT NULL,
	[CostOfLivingIndex] [real] NULL,
	[RentIndex] [real] NULL,
	[GroceriesIndex] [real] NULL,
	[RestaurantPriceIndex] [real] NULL,
	[LocalPurchasingPowerIndex] [real] NULL,
	[countryid] [int] NULL,
	[timeid] [int] NULL,
 CONSTRAINT [PK_DimCostOfLiving] PRIMARY KEY CLUSTERED 
(
	[CostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DimCostOfLiving] ON 

INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (1, 37.88, 7.33, 30.87, 29.08, 37.03, 11, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (2, 32.13, 6.05, 33.8, 17.6, 35.98, 12, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (3, 53.74, 13.84, 44.64, 53.69, 60.15, 17, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (4, 33.45, 8.81, 27.75, 31.21, 31.78, 18, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (5, 84.3, 41.85, 80.66, 81.57, 122.98, 3, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (6, 81.47, 29.28, 76.77, 75.85, 98.69, 19, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (7, 30.62, 9.5, 27.43, 30.59, 28.71, 20, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (8, 100.68, 35.31, 88.38, 102.08, 71.4, 21, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (9, 59.63, 31.05, 57.99, 54.16, 72.29, 22, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (10, 31.99, 5.55, 30.25, 21.2, 39.57, 23, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (11, 34.06, 10.58, 27.91, 35.76, 41.32, 25, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (12, 83.35, 28.05, 72.79, 93.25, 98.91, 26, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (13, 144.88, 100.71, 143.42, 151.59, 104.24, 29, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (14, 36.53, 9.87, 28.84, 28.52, 44.68, 31, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (15, 51.33, 13.89, 39.69, 41.21, 41.56, 34, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (16, 41.21, 9.81, 35.2, 33.61, 54.44, 36, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (17, 45.92, 13.55, 49.33, 23.07, 14.94, 40, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (18, 72.48, 30.82, 71.44, 68.7, 118.92, 2, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (19, 55.24, 16.61, 47.8, 51.4, 54.53, 46, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (20, 44.56, 18.38, 47.73, 29.59, 72.28, 47, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (21, 35.29, 10.13, 29.52, 26.68, 38.59, 48, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (22, 56.2, 17.65, 55.56, 45.89, 54.7, 51, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (23, 55.06, 12.02, 46.33, 43.42, 59.77, 52, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (24, 60.32, 15.44, 49.67, 65.36, 94.78, 54, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (25, 50.09, 19.07, 43.62, 36.03, 76.35, 55, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (26, 93.3, 36.62, 72.46, 113.39, 117.53, 57, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (27, 47.9, 10.3, 41.87, 43.65, 27.43, 60, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (28, 44.28, 11.18, 42.85, 30.82, 39.39, 61, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (29, 25.69, 5.07, 23.01, 21.02, 24.67, 62, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (30, 47.87, 11.45, 46.79, 36.16, 30.92, 63, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (31, 57.65, 15.81, 43.8, 56.8, 74.82, 66, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (32, 47.55, 24.02, 39.15, 20.21, 14.98, 67, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (33, 81.7, 29.72, 68.78, 86.89, 119.42, 69, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (34, 83.86, 28.62, 78.06, 81.87, 101.21, 70, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (35, 29.66, 9.76, 24.59, 29.15, 35.5, 74, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (36, 74.35, 29.06, 58.87, 71.21, 125.01, 75, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (37, 59.79, 32.79, 54.89, 37.39, 15.95, 76, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (38, 63.15, 11.82, 50.87, 61.7, 53.8, 77, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (39, 46.87, 14.59, 44.62, 36.81, 41.3, 80, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (40, 44.28, 10.64, 36.58, 32.99, 34.86, 85, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (41, 48.6, 15.37, 38.61, 37.38, 50.62, 86, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (42, 123.96, 54.63, 118.95, 132.59, 87.84, 87, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (43, 26.88, 6.77, 27.46, 18.34, 79.27, 88, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (44, 39.74, 8.5, 43.52, 19.5, 37.49, 9, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (45, 34.56, 15.9, 31, 27.27, 45.6, 89, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (46, 43.88, 12.84, 37.67, 38.4, 51.2, 90, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (47, 79.06, 23.14, 68.05, 84.74, 81.07, 92, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (48, 60.62, 12.47, 60.25, 39.67, 35.26, 94, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (49, 86.58, 25.6, 91.58, 49.16, 107.35, 95, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (50, 55.09, 12.07, 46.54, 52.66, 43.43, 96, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (51, 34.25, 11.23, 28.06, 35.41, 40.75, 97, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (52, 38.72, 8.67, 36.57, 31.61, 32.06, 98, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (53, 56.9, 36.33, 43.97, 48.48, 100.58, 100, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (54, 53.42, 13.35, 42.47, 48.05, 53.1, 103, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (55, 60.23, 27.93, 46.15, 58.7, 56.36, 104, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (56, 53.24, 15.21, 41.74, 48.86, 57.29, 109, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (57, 96.56, 59.87, 84.98, 107.94, 116.73, 110, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (58, 44.73, 11.52, 48.21, 23.22, 72.98, 8, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (59, 70.92, 29.33, 59.82, 75.14, 66.24, 116, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (60, 55.04, 13.33, 49.51, 39.37, 46.66, 119, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (61, 33.56, 9.51, 32.18, 29.48, 58.18, 121, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (62, 44.41, 10.85, 35.75, 38.08, 48.68, 125, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (63, 37.12, 11.46, 33.26, 25.76, 45.07, 127, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (64, 32.62, 4.43, 30.18, 19.03, 25.33, 130, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (65, 82.69, 36.21, 65.83, 92.73, 109.48, 131, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (66, 83.41, 33.79, 76.98, 79.05, 98.61, 4, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (67, 34.65, 15.97, 35.8, 22.06, 19.56, 134, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (68, 113.7, 40.85, 106.52, 125.04, 107.95, 136, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (69, 49.31, 20.31, 46.71, 46.17, 99.24, 137, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (70, 25.08, 5.29, 23.81, 19.02, 41.11, 139, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (71, 52.41, 26.59, 53.04, 44.3, 39.12, 140, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (72, 39.64, 14.4, 35.87, 26.29, 37.07, 143, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (73, 35.99, 8.04, 34.3, 20.94, 34.02, 144, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (74, 45.2, 16.63, 35.85, 37.7, 74.42, 145, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (75, 55.86, 20.39, 45.47, 46.83, 61.97, 146, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (76, 66.99, 18.69, 66.25, 55.72, 103.77, 147, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (77, 65.37, 65.33, 57.5, 64.8, 125.05, 148, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (78, 39.71, 10.85, 32.83, 33.28, 66.2, 150, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (79, 47.86, 13.5, 42.04, 32.03, 131.46, 158, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (80, 39.59, 8.44, 29.95, 31.45, 41.81, 160, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (81, 91.4, 71.89, 83.64, 64.4, 95.89, 1, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (82, 59.65, 15.5, 50.78, 48.93, 80.33, 164, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (83, 48.05, 17.91, 40.66, 45.74, 99.83, 167, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (84, 61.75, 22.23, 51.28, 60.56, 90.67, 170, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (85, 34.32, 8.33, 38.38, 19.69, 29.56, 171, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (86, 83.7, 28.01, 76.1, 86.67, 113.01, 175, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (87, 131.39, 53.84, 133.34, 131.86, 126.15, 176, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (88, 27.81, 5.12, 26.23, 22.16, 11.32, 177, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (89, 44.97, 19, 34.48, 29.36, 23.1, 179, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (90, 48.91, 17.1, 54.9, 23.94, 38.59, 7, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (91, 27.67, 5.81, 26.41, 17.05, 38.23, 183, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (92, 41.8, 10.38, 36.17, 31.23, 53.78, 184, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (93, 32.67, 6.83, 28.32, 23.17, 21.39, 187, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (94, 25.98, 8.85, 20.38, 18.62, 30.24, 188, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (95, 67.21, 60.72, 55.59, 63.33, 124.78, 189, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (96, 75.85, 33.4, 60.96, 83.87, 108.54, 6, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (97, 72.95, 38.52, 73.93, 69.95, 127.62, 5, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (98, 66.88, 20.03, 54.51, 69.18, 34.31, 190, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (99, 32.21, 7.62, 33.83, 26.7, 4, 192, 19)
GO
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (100, 39.44, 15.11, 39.09, 19.96, 30.09, 193, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (101, 46.49, 19.5, 40.41, 33.5, 101.26, 197, 19)
INSERT [dbo].[DimCostOfLiving] ([CostID], [CostOfLivingIndex], [RentIndex], [GroceriesIndex], [RestaurantPriceIndex], [LocalPurchasingPowerIndex], [countryid], [timeid]) VALUES (102, 49.54, 12.29, 44.3, 37.66, 27.29, 198, 19)
SET IDENTITY_INSERT [dbo].[DimCostOfLiving] OFF
