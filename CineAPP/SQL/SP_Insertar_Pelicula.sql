USE [TP_LABORATORIO_FINAL]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Pelicula]    Script Date: 22/11/2023 13:33:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_Insertar_Pelicula]
@IdGenero int,
@IdClasificacion int,
@IdProductora int ,
@IdDirector int,
@Titulo varchar (20),
@DuracionMinutos int, 
@Fecha datetime
as 
begin
 insert into PELICULAS (id_genero,id_clasificacion,id_productora,id_director,titulo,duracion,fecha_estreno)
 values (@IdGenero,@IdClasificacion,@IdProductora,@IdDirector,@Titulo,@DuracionMinutos,@Fecha)
	end;
