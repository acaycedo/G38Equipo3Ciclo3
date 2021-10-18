package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.ProveedorDAO;
import com.grupo38.tiendagenerica.DTO.ProveedorVO;


@RestController
public class ProveedorController {
	
	@PostMapping("/registrarproveedor")
	public void registrarProveedor(ProveedorVO proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.registrarProveedor(proveedor);
	}
	@GetMapping("/listarproveedores")
	public ArrayList<ProveedorVO> listaDeProveedores(){
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.listarProveedores();
	}
	@DeleteMapping("/eliminarproveedor")
	public void eliminarProveedor(Integer nitproveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.eliminarProveedor(nitproveedor);
	}
	@PutMapping("/actualizarproveedor")
	public void actualizarProveedor(ProveedorVO proveedores) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.actualizarProveedor(proveedores);
	}
	@GetMapping("/consultarproveedor")
	public ArrayList<ProveedorVO> consultarProveedor(Integer nit) {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.consultarProveedor(nit);
}
}

