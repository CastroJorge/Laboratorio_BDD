
CREATE TRIGGER trg_updcliente ON dbo.Cliente
AFTER UPDATE AS
BEGIN 
	UPDATE dbo.Cliente
	SET Nombre = cl.Nombre
	FROM dbo.Cliente as cl
END
GO


CREATE TRIGGER trg_updid ON dbo.Cliente
AFTER UPDATE AS
BEGIN
	IF ((Select Count(*) FROM inserted )> 1)
	ROLLBACK TRAN
	IF EXISTS (SELECT * From inserted
		Left outer join deleted
		on inserted.id_Cliente = deleted.id_Cliente
		WHERE Deleted.id_Cliente IS NULL)
	ROLLBACK TRAN
END
GO
--No permitira actualizar pk en la tabla Cliente por ejemplo:
UPDATE Cliente SET id_Cliente = 1
Where id_Cliente = 2

CREATE TRIGGER trg_InsertCliente
on dbo.Cliente
After insert as
	Begin
	Insert into dbo.Cliente
	Select * from inserted
	END
GO

CREATE TRIGGER trg_DelCliente
ON dbo.Cliente
After delete as
	Begin
	Select * from deleted
	END
GO

CREATE TRIGGER trg_DelPelicula ON dbo.Pelicula
After delete as
	Begin
	IF ((Select COUNT(*) FROM deleted) > 1)
	ROLLBACK TRAN
	END
GO

CREATE TRIGGER trg_DelCat
ON dbo.Categoria
AFTER DELETE AS
	BEGIN
		ROLLBACK TRAN
	END
GO

DROP TRIGGER trg_DelCat
GO

CREATE TRIGGER trg_DelCat
ON dbo.Categoria
Instead of delete as
	Begin
		Print 'Las categorias no se borran men'
	END
GO


CREATE TRIGGER trg_InsCategoria
ON dbo.Categoria
INSTEAD OF INSERT, DELETE, UPDATE AS
	BEGIN
		Print 'No se pueden hacer cambios directamente a la tabla Categoria men'
	END
GO

CREATE TRIGGER trg_TablasNuevas
ON DATABASE FOR CREATE_TABLE
AS
	Begin
		Print 'Seguro que quieres crear una nueva tabla >:V'
	END
GO

CREATE TRIGGER trg_BorrandoTablas
ON DATABASE FOR DROP_TABLE
AS
	BEGIN
		Print 'Un gran poder conlleva una gran responsabilidad'
	END
GO
DROP TABLE Pelicula

ALTER TRIGGER trg_TablasNuevas
ON DATABASE FOR CREATE_TABLE
AS
	BEGIn
		DECLARE @MessageAction VARCHAR (MAX)
		SET @MessageAction = CAST(EVENTDATA() AS varchar (MAX))
		IF(CHARINDEX('Slax',@MessageAction ,0) >0)
		ROLLBACK
	END
GO