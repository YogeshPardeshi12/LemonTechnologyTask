USE [TreeView]
GO
/****** Object:  Table [dbo].[tbl_treeViewNodes]    Script Date: 16-01-2024 12.34.02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_treeViewNodes](
	[NodeId] [int] IDENTITY(1,1) NOT NULL,
	[NodeName] [nvarchar](255) NOT NULL,
	[ParentNodeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_treeViewNodes] ON 

INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (1, N'languages', 0)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (2, N'Frontend', 1)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (3, N'html', 2)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (4, N'html5', 3)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (5, N'XML', 3)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (6, N'Backend', 1)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (7, N'java', 5)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (8, N'spring', 6)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (9, N'hibernate', 6)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (10, N'DotNet', 1)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (11, N'Core', 9)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (12, N'webApp', 10)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (13, N'API', 10)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (14, N'Fruits', 1)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (15, N'apple', 13)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (16, N'mango', 13)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (17, N'banana', 13)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (18, N'Vegetables', 1)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (19, N'potato', 17)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (20, N'mushroom', 17)
INSERT [dbo].[tbl_treeViewNodes] ([NodeId], [NodeName], [ParentNodeId]) VALUES (21, N'salad', 17)
SET IDENTITY_INSERT [dbo].[tbl_treeViewNodes] OFF
GO
