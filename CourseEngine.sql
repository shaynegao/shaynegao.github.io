CREATE TABLE School
(
	[SchoolId] [int] PRIMARY KEY,
	[SchoolName] NVARCHAR(100) NOT NULL,
	[SchoolType] CHAR(1) NOT NULL, -- X: Сѧ C:���� G������ P����ѵ Y���׶�԰
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