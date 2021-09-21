
package clasetienda;

import java.awt.Color;
import java.util.ArrayList;

public class Controlador {
    
    ArrayList<Huevos> lista_de_huevos = new ArrayList<>();
    
   
    
    ArrayList<Pan> lista_de_panes = new ArrayList<>();
    
    public Controlador() {
        lista_de_panes.add(new Pan("Croissant","artesanal",1000));
        lista_de_panes.add(new Pan("Pan de la abuela","Artesanal",300));
        lista_de_panes.add(new Pan("Pan de Queso","Artesanal",1000));
        lista_de_panes.add(new Pan("Pan de Hamburguesa","Industrial",2300));
        
        lista_de_huevos.add(new Huevos("AAA", Color.orange, 300, 120));
        lista_de_huevos.add(new Huevos("AA", Color.WHITE, 300, 120));
        lista_de_huevos.add(new Huevos("codorniz", Color.YELLOW, 700, 60));
        lista_de_huevos.add(new Huevos("Aveztruz", Color.GRAY, 500, 12));
        lista_de_huevos.add(new Huevos("Ganzo Dorado", Color.YELLOW, 123213123, 1));
        
        
    }
    
    
    String inventarioPanes(){
        String respuesta = "****Lista de panes en inventario***\n";
        for (Pan lista_actual : lista_de_panes){
            respuesta
                    += lista_actual.tipo+" "+
                    lista_actual.fabricacion+" "+
                    lista_actual.precio+" "+"\n";
        }
        return respuesta;
    }
    String inventarioHuevos(){
        String respuesta1 = "****Lista de huevos en inventario***\n";
        for (Huevos lista_actual : lista_de_huevos){
            respuesta1
                    += lista_actual.tamanio+" "+
                    lista_actual.colorhuevo+" "+
                    lista_actual.precion+" "+
                    lista_actual.cantidad_restante+" "+"\n";
        }
        return respuesta1;
    }
    
    
}
