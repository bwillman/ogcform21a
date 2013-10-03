CREATE TABLE [Accreditation].[WebForm21](
	[Form21ID] [uniqueidentifier] NOT NULL,
	[FormType] [nvarchar](3) NULL,
	[FirstName] [nvarchar](150) NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NULL,
	[OrganizationName] [nvarchar](200) NULL,
	[IsGoodStanding] [bit] NULL,
	[IsPaidMinRequirements] [bit] NULL,
	[IsPaidAllRequirements] [bit] NULL,
	[WorkAddressLine1] [nvarchar](100) NULL,
	[WorkAddressLine2] [nvarchar](100) NULL,
	[WorkCity] [nvarchar](100) NULL,
	[WorkState] [nchar](2) NULL,
	[WorkZipCode] [nchar](10) NULL,
	[IsProcessed] [bit] NULL,
 CONSTRAINT [PK_tForm21] PRIMARY KEY CLUSTERED 
(
	[Form21ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_tForm21_ID]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21] ADD  CONSTRAINT [DF_tForm21_ID]  DEFAULT (newid()) FOR [Form21ID]
GO
/****** Object:  Default [DF_WebForm21_IsProcessed]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21] ADD  CONSTRAINT [DF_WebForm21_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]