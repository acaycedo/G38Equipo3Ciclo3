
package clasetienda;

public class Vista {
    public static void main(String[] args) {
        Controlador micontrolador = new Controlador();
        System.out.println(micontrolador.inventarioPanes());
        System.out.println(micontrolador.inventarioHuevos());
    }
}
