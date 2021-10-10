package com.grupo38.tiendagenerica.DTO;

import java.io.Serializable;

//Todas las clases entidad deben ser serializables, y deben estan encapsuladas
//Solo las clases DTO implementan Serializable


public class ClienteVO implements Serializable {
	
	//Identificador unico para las clases entidad
	private static final long serialVersionUID = 1L;

	private Integer cedula_cliente;
	private String direccion_cliente;
	private String email_cliente;
	private String nombre_cliente;
	private String telefono_cliente;
	/**
	 * @return the cedula_usuario
	 */
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public String getDireccion_cliente() {
		return direccion_cliente;
	}
	public void setDireccion_cliente(String direccion_cliente) {
		this.direccion_cliente = direccion_cliente;
	}
	public String getEmail_cliente() {
		return email_cliente;
	}
	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}
	public String getNombre_cliente() {
		return nombre_cliente;
	}
	public void setNombre_cliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}
	public String getTelefono_cliente() {
		return telefono_cliente;
	}
	public void setTelefono_cliente(String telefono_cliente) {
		this.telefono_cliente = telefono_cliente;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}


}
