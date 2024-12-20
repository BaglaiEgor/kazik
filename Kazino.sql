USE [KazinoXD]
GO
/****** Object:  Table [dbo].[Bets]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bets](
	[BetID] [int] IDENTITY(1,1) NOT NULL,
	[SessionID] [int] NULL,
	[GameID] [int] NULL,
	[BetAmount] [int] NULL,
	[BetTime] [date] NULL,
 CONSTRAINT [PK_Bets] PRIMARY KEY CLUSTERED 
(
	[BetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameHistory]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameHistory](
	[HistoryID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[GameID] [int] NULL,
	[BetID] [int] NULL,
	[ResultID] [int] NULL,
	[PlayedAt] [date] NULL,
 CONSTRAINT [PK_GameHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[GameName] [nvarchar](50) NULL,
	[GameType] [nvarchar](50) NULL,
	[CreatedAt] [date] NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ResultID] [int] IDENTITY(1,1) NOT NULL,
	[BetID] [int] NULL,
	[WinAmount] [int] NULL,
	[ResultTime] [date] NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sessions]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sessions](
	[SessionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[StartTime] [date] NULL,
	[EndTime] [date] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sessions] PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[TransactionAmount] [int] NULL,
	[TransactionType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22.11.2024 6:11:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreatedAt] [date] NULL,
	[Balance] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bets] ON 

INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1, NULL, NULL, 1234, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1002, 1008, 1002, 31, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1003, 1010, 1003, 13, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1004, 1011, 1004, 321, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1005, 1012, 1005, 31321, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1006, 1012, 1006, 31321, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1007, 1012, 1007, 31321, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1008, 1013, 1008, 312, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1009, 1013, 1009, 312, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1010, 1014, 1010, 1234, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1011, 1014, 1011, 1234, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1012, 1014, 1012, 1234, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1013, 1017, 1013, 3123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1014, 1017, 1014, 3123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1015, 1017, 1015, 3123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1016, 1024, 1016, 312, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1017, 1025, 1017, 13, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1018, 1025, 1018, 13, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1019, 1025, 1019, 13, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1020, 1027, 1020, 123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1021, 1027, 1021, 123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1022, 1027, 1022, 123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1023, 1030, 1023, 123, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (1024, 1030, 1024, 123, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2023, 2030, 2023, 2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2024, 2030, 2024, 2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2025, 2030, 2025, 2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2026, 2030, 2026, 2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2027, 2030, 2027, 2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Bets] ([BetID], [SessionID], [GameID], [BetAmount], [BetTime]) VALUES (2028, 2031, 2028, 1231, CAST(N'2024-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Bets] OFF
GO
SET IDENTITY_INSERT [dbo].[GameHistory] ON 

INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1002, 1, 1002, 1002, 1002, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1003, 1, 1003, 1003, 1003, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1004, 1, 1004, 1004, 1004, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1005, 1, 1005, 1005, 1005, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1006, 1, 1006, 1006, 1006, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1007, 1, 1007, 1007, 1007, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1008, 1, 1008, 1008, 1008, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1009, 1, 1009, 1009, 1009, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1010, 1, 1010, 1010, 1010, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1011, 1, 1011, 1011, 1011, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1012, 1, 1012, 1012, 1012, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1013, 1, 1013, 1013, 1013, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1014, 1, 1014, 1014, 1014, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1015, 1, 1015, 1015, 1015, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1016, 2, 1016, 1016, 1016, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1017, 2, 1017, 1017, 1017, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1018, 2, 1018, 1018, 1018, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1019, 2, 1019, 1019, 1019, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1020, 2, 1020, 1020, 1020, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1021, 2, 1021, 1021, 1021, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1022, 2, 1022, 1022, 1022, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1023, 2, 1023, 1023, 1023, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (1024, 2, 1024, 1024, 1024, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2023, 2, 2023, 2023, 2023, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2024, 2, 2024, 2024, 2024, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2025, 2, 2025, 2025, 2025, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2026, 2, 2026, 2026, 2026, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2027, 2, 2027, 2027, 2027, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[GameHistory] ([HistoryID], [UserID], [GameID], [BetID], [ResultID], [PlayedAt]) VALUES (2028, 5, 2028, 2028, 2028, CAST(N'2024-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[GameHistory] OFF
GO
SET IDENTITY_INSERT [dbo].[Games] ON 

INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1002, N'Рулеточка', N'Рулетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1003, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1004, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1005, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1006, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1007, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1008, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1009, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1010, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1011, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1012, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1013, N'Рулеточка', N'Рулетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1014, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1015, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1016, N'Рулеточка', N'Рулетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1017, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1018, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1019, N'Рулеточка', N'Рулетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1020, N'Рулеточка', N'Рулетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1021, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1022, N'Монеточка', N'Монетка', CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1023, N'Рулеточка', N'Рулетка', CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (1024, N'Монеточка', N'Монетка', CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2023, N'Рулеточка', N'Рулетка', CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2024, N'Монеточка', N'Монетка', CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2025, N'Монеточка', N'Монетка', CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2026, N'Монеточка', N'Монетка', CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2027, N'Монеточка', N'Монетка', CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Games] ([GameID], [GameName], [GameType], [CreatedAt]) VALUES (2028, N'Рулеточка', N'Рулетка', CAST(N'2024-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Games] OFF
GO
SET IDENTITY_INSERT [dbo].[Results] ON 

INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1002, 1002, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1003, 1003, 26, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1004, 1004, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1005, 1005, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1006, 1006, 62642, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1007, 1007, 62642, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1008, 1008, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1009, 1009, 624, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1010, 1010, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1011, 1011, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1012, 1012, 2468, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1013, 1013, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1014, 1014, 6246, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1015, 1015, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1016, 1016, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1017, 1017, 26, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1018, 1018, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1019, 1019, -13, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1020, 1020, -123, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1021, 1021, 0, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1022, 1022, 246, CAST(N'2024-09-20' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1023, 1023, -123, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (1024, 1024, 246, CAST(N'2024-09-24' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2023, 2023, -2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2024, 2024, -2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2025, 2025, -2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2026, 2026, -2, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2027, 2027, 4, CAST(N'2024-10-01' AS Date))
INSERT [dbo].[Results] ([ResultID], [BetID], [WinAmount], [ResultTime]) VALUES (2028, 2028, -1231, CAST(N'2024-10-01' AS Date))
SET IDENTITY_INSERT [dbo].[Results] OFF
GO
SET IDENTITY_INSERT [dbo].[Sessions] ON 

INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1, 1, CAST(N'2024-09-20' AS Date), NULL, NULL)
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (2, 1, CAST(N'2024-09-20' AS Date), NULL, NULL)
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (3, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), NULL)
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (4, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (5, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (6, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (7, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (8, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (9, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (10, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (11, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (12, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (13, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (14, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (15, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (16, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (17, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (18, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (19, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (20, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (21, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1002, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1003, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1004, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1005, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1006, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1007, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1008, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1009, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1010, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1011, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1012, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1013, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1014, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1015, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1016, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1017, 1, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1018, 2, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1019, 2, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1020, 2, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1021, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1022, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1023, 1, CAST(N'2024-09-20' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1024, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1025, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1026, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1027, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1028, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1029, 2, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (1030, 2, CAST(N'2024-09-24' AS Date), NULL, N'Онлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (2030, 2, CAST(N'2024-10-01' AS Date), CAST(N'2024-10-01' AS Date), N'Оффлайн')
INSERT [dbo].[Sessions] ([SessionID], [UserID], [StartTime], [EndTime], [Status]) VALUES (2031, 5, CAST(N'2024-10-01' AS Date), CAST(N'2024-10-01' AS Date), N'Оффлайн')
SET IDENTITY_INSERT [dbo].[Sessions] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 

INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (1, NULL, 1234, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (2, NULL, 32, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (3, NULL, 32, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (4, NULL, 32, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (5, NULL, 32, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (6, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (7, NULL, 1231, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (8, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (9, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (10, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (11, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (12, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (13, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (14, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (15, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (16, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (17, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (18, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (19, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (20, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (21, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (22, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (23, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (24, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (25, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (26, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (27, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (28, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (29, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (30, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (31, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (32, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (33, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (34, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (35, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (36, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (37, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (38, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (39, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (40, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (41, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (42, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (43, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (44, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (45, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (46, NULL, 3232, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (47, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (48, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (49, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (50, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (51, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (52, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (53, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (54, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (55, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (56, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (57, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (58, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (59, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (60, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (61, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (62, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (63, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (64, NULL, 3123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (65, NULL, 3123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (66, NULL, 3123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (67, NULL, 3123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (68, NULL, 1132, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (69, NULL, 1132, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (70, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (71, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (72, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (73, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (74, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (75, NULL, 123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (76, NULL, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (77, 2, 2134, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (78, 2, 2134, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (79, 2, 2134, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (80, 1, 213312, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (81, 1, 122, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (82, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (83, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (84, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (85, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (86, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (87, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (88, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (89, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (90, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (91, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (92, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (93, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (94, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (95, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (96, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (97, 1, 4124, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (98, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (99, 1, 4124, N'Пополнение')
GO
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (100, 1, 4124, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (101, 1, 13123, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (102, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (103, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (104, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (105, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (106, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (107, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (108, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (109, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (110, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (111, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (112, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (113, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (114, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (115, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (116, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (117, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (118, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (119, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (120, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (121, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (122, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (123, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (124, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (125, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (126, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (127, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (128, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (129, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (130, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (131, 1, 42141, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (132, 1, 42141, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (133, 1, 123, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (134, 2, 321, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (135, 2, 321, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (136, 2, 321, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (137, 2, 321, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (138, 2, 32, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (139, 2, 32, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (140, 2, 13, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (141, 2, 13, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (142, 2, 13, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (143, 2, 13, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (144, 2, 13, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (145, 5, 2134213, N'Пополнение')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (146, 5, 213, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (147, 5, 213, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (148, 5, 213, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (149, 5, 213, N'Вывод')
INSERT [dbo].[Transactions] ([TransactionID], [UserID], [TransactionAmount], [TransactionType]) VALUES (150, 5, 213, N'Вывод')
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [Username], [Password], [Email], [CreatedAt], [Balance]) VALUES (1, N'cat', N'***', N'zxc@mail.ru', CAST(N'2024-09-17' AS Date), 102140)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [Email], [CreatedAt], [Balance]) VALUES (2, N'qwe', N'***', N'qwe@gmail.com', CAST(N'2024-09-17' AS Date), 967)
INSERT [dbo].[Users] ([UserID], [Username], [Password], [Email], [CreatedAt], [Balance]) VALUES (5, N'123', N'***', N'123@mail.ru', CAST(N'2024-10-01' AS Date), 2131917)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreatedAt]  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD  CONSTRAINT [FK_Bets_Games] FOREIGN KEY([GameID])
REFERENCES [dbo].[Games] ([GameID])
GO
ALTER TABLE [dbo].[Bets] CHECK CONSTRAINT [FK_Bets_Games]
GO
ALTER TABLE [dbo].[Bets]  WITH CHECK ADD  CONSTRAINT [FK_Bets_Sessions] FOREIGN KEY([SessionID])
REFERENCES [dbo].[Sessions] ([SessionID])
GO
ALTER TABLE [dbo].[Bets] CHECK CONSTRAINT [FK_Bets_Sessions]
GO
ALTER TABLE [dbo].[GameHistory]  WITH CHECK ADD  CONSTRAINT [FK_GameHistory_Bets] FOREIGN KEY([BetID])
REFERENCES [dbo].[Bets] ([BetID])
GO
ALTER TABLE [dbo].[GameHistory] CHECK CONSTRAINT [FK_GameHistory_Bets]
GO
ALTER TABLE [dbo].[GameHistory]  WITH CHECK ADD  CONSTRAINT [FK_GameHistory_Games] FOREIGN KEY([GameID])
REFERENCES [dbo].[Games] ([GameID])
GO
ALTER TABLE [dbo].[GameHistory] CHECK CONSTRAINT [FK_GameHistory_Games]
GO
ALTER TABLE [dbo].[GameHistory]  WITH CHECK ADD  CONSTRAINT [FK_GameHistory_Results] FOREIGN KEY([ResultID])
REFERENCES [dbo].[Results] ([ResultID])
GO
ALTER TABLE [dbo].[GameHistory] CHECK CONSTRAINT [FK_GameHistory_Results]
GO
ALTER TABLE [dbo].[GameHistory]  WITH CHECK ADD  CONSTRAINT [FK_GameHistory_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[GameHistory] CHECK CONSTRAINT [FK_GameHistory_Users]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Bets] FOREIGN KEY([BetID])
REFERENCES [dbo].[Bets] ([BetID])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Bets]
GO
ALTER TABLE [dbo].[Sessions]  WITH CHECK ADD  CONSTRAINT [FK_Sessions_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Sessions] CHECK CONSTRAINT [FK_Sessions_Users]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_Users]
GO
