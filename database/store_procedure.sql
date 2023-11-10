-- table user store procedure


-- table userprofile procedure


-- table note store procedure

CREATE PROCEDURE AllNote 
				@userid int(255) 
				@asc text @limit int(255)
AS
select * from note where userid = @userid order by title @asc @limit
GO;

CREATE PROCEDURE GetNote 
				@noteid int(255)
AS
select * from note where noteid = @noteid
GO;

CREATE PROCEDURE InsertNote 
				@userid int(255) 
				@title varchar(255)
				@content text
				@create_at date
AS
Insert into note(userid, title, content, create_at) values(@userid, @title, @content, @create_at)
GO;

CREATE PROCEDURE UpdateNote 
				@noteid int(255) 
				@title varchar(255)
				@content text
				@update_at date
AS
Update note title = @title, 
			content = @content, 
			update_at = @update_at 
where noteid = @noteid
GO;					

CREATE PROCEDURE DeleteNote 
				@noteid int(255) 
				@delete_at date 
				@ispermanent boolean
AS
BEGIN
	IF @ispermanent = true
		BEGIN
			Delete from note where noteid = @noteid
		END
	ELSE
		BEGIN
			Update note delete_at = @delete_at where noteid = @noteid
		END
	END
END
UPDATE note delete_at = @delete_at where noteid = @noteid
GO;	
