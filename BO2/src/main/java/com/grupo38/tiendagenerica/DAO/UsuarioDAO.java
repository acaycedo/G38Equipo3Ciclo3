package com.grupo38.tiendagenerica.DAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.grupo38.tiendagenerica.DTO.UsuarioVO;


public class UsuarioDAO {
	
	public void registrarUsuario(UsuarioVO user) {
		Conexion conex = new Conexion();
		
		try {
			Statement estatuto = conex.getConnection().createStatement();
			
			String sentencia = "INSERT INTO usuarios VALUES("
				+ user.getCedula_usuario() + "," + "'"
				+ user.getEmail_usuario() + "'," + "'"
				+ user.getNombre_usuario() + "'," + "'"
				+ user.getPassword() + "'," + "'"
				+ user.getUsuario() + "'"
				+ ");";
			
			estatuto.executeUpdate(sentencia);
			System.out.println("Registro " + sentencia);
			estatuto.close();
			conex.desconectar();
		} catch (SQLException e) {
			System.out.println("-------------------------------ERROR-----------------------------");
			System.out.println("No se pudo insertar los datos");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			System.out.println("-------------------------------ERROR-----------------------------");
			System.out.println("No se pudo insertar los datos");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
	}
	public ArrayList<UsuarioVO> consultarUsuario(String usuario){
		//lista que obtendra el o los usuarios obtenidos
		ArrayList<UsuarioVO> listausuarios = new ArrayList<UsuarioVO>();
		
		Conexion conex = new Conexion();
		
		try {
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM usuarios where usuario = ? ");
			consulta.setString(1, usuario);
			
			ResultSet res = consulta.executeQuery();
			
			if (res.next()) {
				UsuarioVO Usuario = new UsuarioVO();
				Usuario.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				Usuario.setEmail_usuario(res.getString("email_usuario"));
				Usuario.setNombre_usuario(res.getString("nombre_usuario"));
				Usuario.setPassword(res.getString("password"));
				Usuario.setUsuario(res.getString("usuario"));
				
				listausuarios.add(Usuario);
			}
			res.close();
			consulta.close();
			conex.desconectar();
	
			} catch (SQLException e) {
				System.out.println("-------------------------------ERROR-----------------------------");
				System.out.println("No se pudo insertar los datos");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());
			} catch (Exception e) {
				System.out.println("-------------------------------ERROR-----------------------------");
				System.out.println("No se pudo insertar los datos");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		return listausuarios;
	}


	/**
	 * permite consultar la lista de todos los usuarios
	 * 
	 * @return
	 */
	public ArrayList<UsuarioVO> listaDeUsuarios() {
		//lista que contendra el o los usuarios obtenidos
		ArrayList<UsuarioVO> listausuarios = new ArrayList<UsuarioVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				UsuarioVO Usuario = new UsuarioVO();
				Usuario.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
				Usuario.setEmail_usuario(res.getString("email_usuario"));
				Usuario.setNombre_usuario(res.getString("nombre_usuario"));
				Usuario.setPassword(res.getString("password"));
				Usuario.setUsuario(res.getString("usuario"));

				listausuarios.add(Usuario);
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todos los usuarios");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listausuarios;
	}

	public void eliminarUsuario(Integer cedula_usuario) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from usuarios where cedula_usuario=" + cedula_usuario + ";";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void actualizarUsuario(UsuarioVO user) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE usuarios "
					+ "SET email_usuario = '"+user.getEmail_usuario()+"',"
					+ "nombre_usuario = '"+user.getNombre_usuario()+"',"
					+ "password = '"+user.getPassword()+"',"
					+ "usuario = '"+user.getUsuario()+"' "
					+ "WHERE cedula_usuario = "+user.getCedula_usuario()+";";
			
			//ejecuta la sentencia 
			estatuto.executeUpdate(sentencia);
			
			//verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar  el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el usuario");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}


}
