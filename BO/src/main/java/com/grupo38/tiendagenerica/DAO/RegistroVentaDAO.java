package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.RegistroVentaVO;

public class RegistroVentaDAO {

	public ArrayList<RegistroVentaVO> registroVentas(){
		ArrayList<RegistroVentaVO> registroventas = new ArrayList<RegistroVentaVO>();
		Conexion conex = new Conexion();
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT "
					+ "O.cedula_cliente, C.nombre_cliente, O.valor_venta"
					+ " FROM ventas O, clientes C WHERE C.cedula_cliente = O.cedula_cliente;");
			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				RegistroVentaVO registro = new RegistroVentaVO();
				registro.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				registro.setNombre_cliente(res.getString("nombre_cliente"));
				registro.setTotal_venta(Double.parseDouble(res.getString("valor_venta")));
				registroventas.add(registro);
			}
			consulta.close();
			res.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo listar registro");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo listar registro");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return registroventas;
	}
}
