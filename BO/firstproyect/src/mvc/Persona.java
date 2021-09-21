package mvc;

public class Persona {

    String nombre;
    String comida;
    int edad;
    int documento;

    public Persona() {
    }

    public Persona(String nombre, String comida, int edad, int documento) {
        this.nombre = nombre;
        this.comida = comida;
        this.edad = edad;
        this.documento = documento;
    }

    public Persona(String nombre, String comida, int documento) {
        this.nombre = nombre;
        this.comida = comida;
        this.documento = documento;
    }

}
