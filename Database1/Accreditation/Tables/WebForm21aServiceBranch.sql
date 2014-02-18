CREATE TABLE [Accreditation].[WebForm21aServiceBranch](
	[Form21aID] [uniqueidentifier] NOT NULL,
	[IsArmy] [bit] NULL,
	[IsNavy] [bit] NULL,
	[IsAirForce] [bit] NULL,
	[IsMarines] [bit] NULL,
	[IsCoastGuard] [bit] NULL,
	[IsNonVeteran] [bit] NULL,
	[IsOther] [bit] NULL,
	[OtherService] [nvarchar](35) NULL,
 [StartDate] DATE NULL DEFAULT '19000101' , 
    [EndDate] DATE NULL DEFAULT '19000101' , 
    CONSTRAINT [PK_tForm21aBranch] PRIMARY KEY CLUSTERED 
(
	[Form21aID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tForm21aBranch_tForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aServiceBranch]  WITH CHECK ADD  CONSTRAINT [FK_tForm21aBranch_tForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aServiceBranch] CHECK CONSTRAINT [FK_tForm21aBranch_tForm21a]