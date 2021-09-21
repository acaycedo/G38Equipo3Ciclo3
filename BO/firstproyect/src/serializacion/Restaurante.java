
package serializacion;
    //Serializacion es la secuencia de generar bytes para el almacenamiento de informacion en un paquete para poder envia
import java.io.Serializable;
//se implementa la libreria
public class Restaurante implements Serializable{
    private String nombre;
    private int estrellas;

    public Restaurante() {
    }

    public Restaurante(String nombre, int estrellas) {
        this.nombre = nombre;
        this.estrellas = estrellas;
    }

    public String getNombre() {
        return nombre;
    }

    public int getEstrellas() {
        return estrellas;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setEstrellas(int estrellas) {
        this.estrellas = estrellas;
    }
    
    
}
