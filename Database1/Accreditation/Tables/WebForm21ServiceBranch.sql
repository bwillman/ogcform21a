CREATE TABLE [Accreditation].[WebForm21ServiceBranch](
	[Form21ID] [uniqueidentifier] NOT NULL,
	[IsArmy] [bit] NULL,
	[IsNavy] [bit] NULL,
	[IsAirForce] [bit] NULL,
	[IsMarines] [bit] NULL,
	[IsCoastGuard] [bit] NULL,
	[IsNonVeteran] [bit] NULL,
	[IsOther] [bit] NULL,
	[OtherService] [nvarchar](35) NOT NULL,
 CONSTRAINT [PK_tForm21Branch] PRIMARY KEY CLUSTERED 
(
	[Form21ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tForm21Branch_tForm21]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21ServiceBranch]  WITH CHECK ADD  CONSTRAINT [FK_tForm21Branch_tForm21] FOREIGN KEY([Form21ID])
REFERENCES [Accreditation].[WebForm21] ([Form21ID])
GO

ALTER TABLE [Accreditation].[WebForm21ServiceBranch] CHECK CONSTRAINT [FK_tForm21Branch_tForm21]