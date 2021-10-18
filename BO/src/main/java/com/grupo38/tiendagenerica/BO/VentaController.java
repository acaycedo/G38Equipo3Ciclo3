package com.grupo38.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.grupo38.tiendagenerica.DAO.RegistroVentaDAO;
import com.grupo38.tiendagenerica.DAO.VentaDAO;
import com.grupo38.tiendagenerica.DTO.RegistroVentaVO;
import com.grupo38.tiendagenerica.DTO.VentaVO;

@RestController
public class VentaController {
	
	@PostMapping("/ingresarventa")
	public void ingresarVenta(VentaVO venta) {
		VentaDAO Dao = new VentaDAO();
		Dao.ingresarVenta(venta);
	}
	@GetMapping("/listaventas")
	public ArrayList<VentaVO> listaVentas(){
		VentaDAO Dao = new VentaDAO();
		return Dao.listaVentas();
	}
	@GetMapping("/registroventa")
	public ArrayList<RegistroVentaVO> registroVenta(){
		RegistroVentaDAO Dao = new RegistroVentaDAO();
		return Dao.registroVentas();
	}
	@GetMapping("/contadorventa")
	public Integer contadorVentas() {
		VentaDAO Dao = new VentaDAO();
		return Dao.contadorVentas();
	}
}
