package com.grupo38.tiendagenerica.DAO;

import java.sql.SQLException;
import java.sql.Statement;

import com.grupo38.tiendagenerica.DTO.DetalleVentaVO;

public class DetalleVentaDAO {
	
	public void ingresarDetalle(DetalleVentaVO venta) {
		Conexion conex = new Conexion();
		try {
			Statement estatuto = conex.getConnection().createStatement();
			String sentenccia = "INSERT INTO detalle_ventas VALUES("
					+ "null,"+venta.getCantidad_producto()+","
					+ venta.getCodigo_producto()+","
					+ venta.getCodigo_venta()+","
					+ venta.getValor_total()+","
					+ venta.getValor_venta()+","
					+ venta.getValor_iva()+");";
			estatuto.executeUpdate(sentenccia);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar detalle venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar detalle venta");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		
	}

}
