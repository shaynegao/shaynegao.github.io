CREATE TABLE School
(
	[SchoolId] [int] PRIMARY KEY,
	[SchoolName] NVARCHAR(100) NOT NULL,
	[SchoolType] CHAR(1) NOT NULL, -- X: 小学 C:初中 G：高中 P：培训 Y：幼儿园
	Creator    INT  NOT NULL,
	CreateTime DATETIME NOT NULL
)

ALTER TABLE [dbo].[School] ADD  CONSTRAINT [DF_School_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]


CREATE TABLE [dbo].[Course](
	[CourseId] [int] NOT NULL,
	[CourseName] [nvarchar](20) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[GradeId] [int] NULL
)