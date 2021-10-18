package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.VentaVO;

public class VentaDAO {

	public void ingresarVenta(VentaVO venta) {
		Conexion conex = new Conexion();
		try {
			Statement estatuto = conex.getConnection().createStatement();
			String sentencia = "INSERT INTO ventas VALUES("
					+ "null,"+venta.getCedula_cliente()+","
					+ venta.getCedula_usuario()+","
					+ venta.getIva_venta()+","
					+ venta.getTotal_venta()+","
					+ venta.getValor_venta()+");";
			estatuto.executeUpdate(sentencia);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar la venta");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	public ArrayList<VentaVO> listaVentas(){
		ArrayList<VentaVO> listaventa = new ArrayList<VentaVO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM ventas");
			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				VentaVO venta = new VentaVO();
				venta.setCodigo_venta(Integer.parseInt(res.getString("codigo_venta")));
				venta.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				venta.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				venta.setIva_venta(Double.parseDouble(res.getString("iva_venta")));
				venta.setTotal_venta(Double.parseDouble(res.getString("total_venta")));
				venta.setValor_venta(Double.parseDouble(res.getString("valor_venta")));
				listaventa.add(venta);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo listar las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch(Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo listar las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaventa;
	}
	public int contadorVentas() {
		// lista que contendra el o los usuarios obtenidos
		int contador = 0;

		// instancia de la conexión
		Conexion conex = new Conexion();

		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT `AUTO_INCREMENT` " + "FROM  INFORMATION_SCHEMA.TABLES "
							+ "WHERE TABLE_SCHEMA = 'tiendalostiburones' " + "AND   TABLE_NAME   = 'ventas';");

			// ejecute la sentencia
			ResultSet res = consulta.executeQuery();

			// cree un objeto para cada encontrado en la base de datos basado en la clase
			// entidad con los datos encontrados
			while (res.next()) {
				contador = (res.getInt("AUTO_INCREMENT"));
			}

			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar contador");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar contador");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return contador;
	}
	
}
