CREATE TABLE [Accreditation].[WebForm21aReference](
	[ID] [uniqueidentifier] NOT NULL,
	[Form21aID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Relationship] [nvarchar](50) NULL,
 CONSTRAINT [PK_WebForm21aReference] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]