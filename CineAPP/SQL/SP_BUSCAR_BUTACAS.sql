 USE [TP_LABORATORIO_FINAL]
GO
/****** Object:  StoredProcedure [dbo].[SP_Buscar_Butacas]    Script Date: 20/11/2023 03:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Buscar_Butacas]
@IdFuncion int 
as begin 
select * from BUTACAS where id_funcion =@IdFuncion
end