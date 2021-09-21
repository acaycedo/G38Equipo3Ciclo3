
package tareaquesemeolvido;

import java.util.ArrayList;
import java.util.Scanner;

public class Front {

    public static void main(String[] args) {
        //lectura por teclado
        Scanner leer = new Scanner(System.in);
        Backend micontrolar = new Backend();
        System.out.println("texto blablabalbla");
        while (true) {
            System.out.println("1) Crear Nuevo Registro 2) Mostrar Registro");
            String op = leer.nextLine();
            switch (op) {
                case "1":
                    System.out.println("Inserte los datos : ");
                    System.out.println("Inserte los datos : color, marca, modelo, esencia, cantidad, ancho, largo");
                    String color = leer.nextLine();
                    String marca = leer.nextLine();
                    String modelo = leer.nextLine();
                    String esencia = leer.nextLine();
                    int cantidad= Integer.parseInt(leer.nextLine(), 10);
                    int ancho= Integer.parseInt(leer.nextLine(), 10);
                    int largo= Integer.parseInt(leer.nextLine(), 10);  
                    micontrolar.crearRegistro(color,marca,modelo,esencia,cantidad,ancho,largo);
                    break;
                case "2":
                    System.out.println("Imprimir lista");
                    ArrayList<Object> resultado = micontrolar.mostrarRegistro();
                    for (Object personaactual : resultado) {
                        System.out.println(personaactual.color);
                        System.out.println(personaactual.marca);
                        System.out.println(personaactual.modelo);
                        System.out.println(personaactual.esencia);
                        System.out.println(personaactual.cantidad);
                        System.out.println(personaactual.ancho);
                        System.out.println(personaactual.largo);
                        break;
                    }
            }
        }
}
}
