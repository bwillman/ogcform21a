CREATE TABLE [Accreditation].[WebForm21aEducation](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[Institution] [nvarchar](150) NULL,
	[Address] [nvarchar](200) NULL,
	[DegreeRecived] [nvarchar](100) NULL,
 [StartDate] DATE NULL, 
    [EndDate] DATE NULL, 
    CONSTRAINT [PK_WebForm21aEducation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_WebForm21aEducation_WebForm21a]    Script Date: 08/09/2013 10:42:05 ******/
ALTER TABLE [Accreditation].[WebForm21aEducation]  WITH CHECK ADD  CONSTRAINT [FK_WebForm21aEducation_WebForm21a] FOREIGN KEY([Form21aID])
REFERENCES [Accreditation].[WebForm21a] ([Form21aID])
GO

ALTER TABLE [Accreditation].[WebForm21aEducation] CHECK CONSTRAINT [FK_WebForm21aEducation_WebForm21a]