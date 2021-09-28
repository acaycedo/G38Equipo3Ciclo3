package com.grupo38.tiendagenerica.DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.ProveedorVO;

public class ProveedorDAO {
	
	public void registrarProveedor(ProveedorVO proveedor) {
		
		Conexion conex = new Conexion();
		
		try {
			Statement estatuto = conex.getConnection().createStatement();
			String sentencia = "INSERT INTO proveedores VALUES("
					+ proveedor.getNitproveedor() + "," + "'"
					+ proveedor.getCiudad_proveedor() + "'," + "'"
					+ proveedor.getDireccion_proveedor() + "'," + "'"
					+ proveedor.getNombre_proveedor() + "'," + "'"
					+ proveedor.getTelefono_proveedor() + "'"
					+ ");";
			
			estatuto.executeUpdate(sentencia);
			System.out.println("registrado "+sentencia);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e){
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	public ArrayList<ProveedorVO> listarProveedores(){
		
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();
		Conexion conex = new Conexion();
		
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores");
			ResultSet res = consulta.executeQuery();
			while (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNitproveedor(Integer.parseInt(res.getString("nitproveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));
				
				listaproveedores.add(Proveedor);
			}
			res.close();
			consulta.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los proveedores");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaproveedores;
	}
	public void eliminarProveedor(Integer nitproveedor) {
		
		Conexion conex = new Conexion();
		
		try {
			Statement consulta = conex.getConnection().createStatement();
			String sentencia = "delete from proveedores where nitproveedor=" + nitproveedor + ";";
			System.out.println("Registrado " + sentencia);
			consulta.execute(sentencia);
			consulta.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	public void actualizarProveedor(ProveedorVO proveedor) {
		
		Conexion conex = new Conexion();
		
		try {
			Statement estatuto = conex.getConnection().createStatement();
			String sentencia = "UPDATE proveedores "
					+ "SET ciudad_proveedor = '"+proveedor.getCiudad_proveedor()+"',"
					+ "direccion_proveedor = '"+proveedor.getDireccion_proveedor()+"',"
					+ "nombre_proveedor = '"+proveedor.getNombre_proveedor()+"',"
					+ "telefono_proveedor = '"+proveedor.getTelefono_proveedor()+"' "
					+ "WHERE nitproveedor = "+proveedor.getNitproveedor()+";";
			
			estatuto.executeUpdate(sentencia);
			System.out.println("Registrado " + sentencia);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	public ArrayList<ProveedorVO> consultarProveedor(String proveedor){
		
		ArrayList<ProveedorVO> listaproveedores = new ArrayList<ProveedorVO>();
		Conexion conex = new Conexion();
		
		try {
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores where nombre_proveedor = ? ");
			consulta.setString(1, proveedor);
			ResultSet res = consulta.executeQuery();
			if (res.next()) {
				ProveedorVO Proveedor = new ProveedorVO();
				Proveedor.setNitproveedor(Integer.parseInt(res.getString("nitproveedor")));
				Proveedor.setCiudad_proveedor(res.getString("ciudad_proveedor"));
				Proveedor.setDireccion_proveedor(res.getString("direccion_proveedor"));
				Proveedor.setNombre_proveedor(res.getString("nombre_proveedor"));
				Proveedor.setTelefono_proveedor(res.getString("telefono_proveedor"));
				listaproveedores.add(Proveedor);
				
				res.close();
				consulta.close();
				conex.desconectar();
			}
		} catch (SQLException e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el proveedor");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaproveedores;
	}
}