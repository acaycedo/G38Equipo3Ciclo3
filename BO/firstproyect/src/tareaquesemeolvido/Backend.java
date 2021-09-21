
package tareaquesemeolvido;

import java.util.ArrayList;

public class Backend {
    ArrayList<Object> lista = new ArrayList<>();
    
    void crearRegistro(String color, String marca, String modelo, String esencia, int cantidad, int ancho, int largo){
        lista.add(new Object(color,marca,modelo,esencia,cantidad,ancho,largo));
    }
    
    ArrayList mostrarRegistro(){
        return lista;
    }
}
