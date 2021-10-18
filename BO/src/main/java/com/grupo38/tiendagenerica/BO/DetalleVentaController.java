package com.grupo38.tiendagenerica.BO;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.DetalleVentaDAO;
import com.grupo38.tiendagenerica.DTO.DetalleVentaVO;

@RestController
public class DetalleVentaController {

	@PostMapping("/ingresardetalle")
	public void ingresarDetalle(DetalleVentaVO venta) {
		DetalleVentaDAO Dao = new DetalleVentaDAO();
		Dao.ingresarDetalle(venta);
	}
}
