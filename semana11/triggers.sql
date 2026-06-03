-- TRIGGERS PARA LA TABLA DEPARTAMENTOS
-- INSERT
CREATE TRIGGER trg_Departamentos_Insert
ON dbo.Departamentos AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('INSERT DEPARTAMENTO');
END;
GO

-- UPDATE
CREATE TRIGGER trg_Departamentos_Update
ON dbo.Departamentos AFTER UPDATE
AS
BEGIN
    UPDATE Departamentos SET updated_at = GETDATE()
    FROM Departamentos p
    INNER JOIN inserted i ON p.DepartamentoID = i.DepartamentoID;

    INSERT INTO dbo.TblAuditoria (accion) VALUES ('UPDATE DEPARTAMENTO');
END;
GO

-- DELETE
CREATE TRIGGER trg_Departamentos_Delete
ON dbo.Departamentos AFTER DELETE
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('DELETE DEPARTAMENTO');
END;
GO


-- TRIGGERS PARA LA TABLA EMPLEADOS
-- INSERT
CREATE TRIGGER trg_Empleados_Insert
ON dbo.Empleados AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('INSERT EMPLEADO');
END;
GO

-- UPDATE
CREATE TRIGGER trg_Empleados_Update
ON dbo.Empleados AFTER UPDATE
AS
BEGIN
    UPDATE Empleados SET updated_at = GETDATE()
    FROM Empleados p
    INNER JOIN inserted i ON p.EmpleadoID = i.EmpleadoID;

    INSERT INTO dbo.TblAuditoria (accion) VALUES ('UPDATE EMPLEADO');
END;
GO

-- DELETE
CREATE TRIGGER trg_Empleados_Delete
ON dbo.Empleados AFTER DELETE
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('DELETE EMPLEADO');
END;
GO

-- TRIGGER PARA LA TABLA PROYECTOS
-- INSERT
CREATE TRIGGER trg_Proyectos_Insert
ON dbo.Proyectos AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('INSERT PROYECTO');
END;
GO

-- UPDATE
CREATE TRIGGER trg_Proyectos_Update
ON dbo.Proyectos AFTER UPDATE
AS
BEGIN
    UPDATE Proyectos SET updated_at = GETDATE()
    FROM Proyectos p
    INNER JOIN inserted i ON p.ProyectoID = i.ProyectoID;

    INSERT INTO dbo.TblAuditoria (accion) VALUES ('UPDATE PROYECTO');
END;
GO

-- DELETE
CREATE TRIGGER trg_Proyectos_Delete
ON dbo.Proyectos AFTER DELETE
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('DELETE PROYECTO');
END;
GO


-- TRIGGERS PARA LA TABLA ASIGNACIONES
-- INSERT
CREATE TRIGGER trg_Asignaciones_Insert
ON dbo.Asignaciones AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('INSERT ASIGNACION');
END;
GO

-- UPDATE
CREATE TRIGGER trg_Asignaciones_Update
ON dbo.Asignaciones AFTER UPDATE
AS
BEGIN
    UPDATE Asignaciones SET updated_at = GETDATE()
    FROM Asignaciones p
    INNER JOIN inserted i ON p.AsignacionID = i.AsignacionID;

    INSERT INTO dbo.TblAuditoria (accion) VALUES ('UPDATE ASIGNACION');
END;
GO

-- DELETE
CREATE TRIGGER trg_Asignaciones_Delete
ON dbo.Asignaciones AFTER DELETE
AS
BEGIN
    INSERT INTO dbo.TblAuditoria (accion) VALUES ('DELETE ASIGNACION');
END;
GO