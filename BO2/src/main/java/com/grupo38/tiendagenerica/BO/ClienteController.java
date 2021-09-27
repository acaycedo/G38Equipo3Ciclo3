package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.ClienteDAO;
import com.grupo38.tiendagenerica.DTO.ClienteVO;


@RestController
public class ClienteController {
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarCliente")
	public void registrarCliente(ClienteVO nombre_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.registrarCliente(nombre_cliente);
	}

	@GetMapping("/consultarcliente")
	public ArrayList<ClienteVO> consultarClientes(Integer cedula) {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.consultarCliente(cedula);
	}

	@GetMapping("/listarClientes")
	public ArrayList<ClienteVO> listaDeClientes() {
		ClienteDAO Dao = new ClienteDAO();
		return Dao.listaDeClientes();
	}
	@DeleteMapping("/eliminarCliente")
	public void eliminarCliente(Integer cedula_cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.eliminarCliente(cedula_cliente);
	}
	
	@PutMapping("/actualizarCliente")
	public void actualizarCliente(ClienteVO cliente) {
		ClienteDAO Dao = new ClienteDAO();
		Dao.actualizarCliente(cliente);
	}
}
