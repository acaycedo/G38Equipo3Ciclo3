package mvc;

import java.util.ArrayList;
import java.util.Scanner;

public class Vista {

    public static void main(String[] args) {
        //lectura por teclado
        Scanner leer = new Scanner(System.in);
        Controlador micontrolar = new Controlador();
        System.out.println("texto blablabalbla");
        while (true) {
            System.out.println("1) crear persona 2) mostrar lista");
            String op = leer.nextLine();
            switch (op) {
                case "1":
                    System.out.println("Inserte los datos : ");
                    String nombre = leer.nextLine();
                    String comida = leer.nextLine();
                    int edad = Integer.parseInt(leer.nextLine(), 10);
                    int documento = Integer.parseInt(leer.nextLine(), 10);
                    micontrolar.crearPersona(nombre, comida, edad, documento);
                    break;
                case "2":
                    System.out.println("Imprimir lista");
                    ArrayList<Persona> resultado = micontrolar.mostrarPersonas();
                    for (Persona personaactual : resultado) {
                        System.out.println(personaactual.nombre);
                        System.out.println(personaactual.comida);
                        System.out.println(personaactual.edad);
                        System.out.println(personaactual.documento);
                    break;

                    }
            }
        }

        /* Persona andres = new Persona("Andres", "Natilla", 12, 1233543);
        Persona felipe = new Persona("aver", "kk", 1233543);

        System.out.println("Inserte los datos gonorrea");
        String nombre = leer.nextLine();
        String comida = leer.nextLine();
        int edad = Integer.parseInt(leer.nextLine(), 10);
        int documento = Integer.parseInt(leer.nextLine(), 10);

        Persona nuevapersona = new Persona(nombre, comida, edad, documento);

        System.out.println(nuevapersona.nombre);
        System.out.println(nuevapersona.comida);
        System.out.println(nuevapersona.edad);
        System.out.println(nuevapersona.documento);
         */
    }
}
