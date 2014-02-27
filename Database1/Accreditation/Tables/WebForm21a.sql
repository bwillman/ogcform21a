CREATE TABLE [Accreditation].[WebForm21a](
	[Form21aID] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](150) NULL,
	[MiddleName] [nvarchar](150) NULL,	
	[LastName] [nvarchar](150) NULL,
	[HomeAddress1] [nvarchar](200) NULL,
	[HomeAddress2] [nvarchar](200) NULL,
	[HomeState] [nchar](2) NULL,
	[HomeCity] [nvarchar](200) NULL,
	[HomeZip] [nchar](10) NULL,
	[HomePhoneNo] [nvarchar](20) NULL,
	[HomeEmailAddr] [nvarchar](100) NULL,
	[EmploymentStatus] [int] NULL,
	[WorkAddress1] [nvarchar](200) NULL,
	[WorkAddress2] [nvarchar](200) NULL,
	[WorkCity] [nvarchar](200) NULL,
	[WorkState] [nvarchar](2) NULL,
	[WorkZip] [nvarchar](10) NULL,
	[BirthDate] [date] NULL,
	[BirthLocation] [nvarchar](150) NULL,
	[BranchOfService] [nvarchar](50) NULL,
	[IsBarMember] [bit] NULL,
	[IsPracticing] [bit] NULL,
	[WasConvicted] [bit] NULL,
	[ExplainConviction] [nvarchar](1000) NULL,
	[WasConvictedMilitary] [bit] NULL,
	[ExplainMilitaryConviction] [nvarchar](1000) NULL,
	[IsCharged] [bit] NULL,
	[ExplainCharges] [nvarchar](1000) NULL,
	[WasExpelled] [bit] NULL,
	[ExplainExpelled] [nvarchar](1000) NULL,
	[WasDisciplined] [bit] NULL,
	[ExplainDisciplined] [nvarchar](1000) NULL,
	[WasTerminated] [bit] NULL,
	[ExplainTerminated] [nvarchar](1000) NULL,
	[HasRepresentedGovt] [bit] NULL,
	[ExplainRepresented] [nvarchar](1000) NULL,
	[WasBarred] [bit] NULL,
	[ExplainBarred] [nvarchar](1000) NULL,
	[HaveAppliedForAccred] [bit] NULL,
	[ExplainApplied] [nvarchar](1000) NULL,
	[WasAccredTerminated] [bit] NULL,
	[ExplainAccredTerminated] [nvarchar](1000) NULL,
	[IsImpaired] [bit] NULL,
	[ExplainImpairment] [nvarchar](1000) NULL,
	[IsPhysicallyLimited] [bit] NULL,
	[ExplainLimitation] [nvarchar](1000) NULL,
	[DateEntered] [datetime] NULL,
	[IsProcessed] [bit] NULL,
 CONSTRAINT [PK_tAccrWebForm21a] PRIMARY KEY CLUSTERED 
(
	[Form21aID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_WebForm21a_DateEntered]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21a] ADD  CONSTRAINT [DF_WebForm21a_DateEntered]  DEFAULT (getdate()) FOR [DateEntered]
GO
/****** Object:  Default [DF_WebForm21a_IsProcessed]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21a] ADD  CONSTRAINT [DF_WebForm21a_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]