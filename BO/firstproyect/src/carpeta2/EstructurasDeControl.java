package carpeta2;

import java.util.Scanner;

public class EstructurasDeControl {

    public static void main(String[] args) {
        //condicional
        Scanner leer = new Scanner(System.in);
        Scanner sitp = new Scanner(System.in);

        boolean linotienefrio = false;
        if (linotienefrio == true) {
            System.out.println("Que se ponga cobija");
        } else {
            System.out.println("Del (1 al 3) como se encuentra siendo 3 lo mejor y 1 no me importa?");
        }

        int numerodeandres = leer.nextInt();
        if (numerodeandres > 0) {
            System.out.println("Voy a repetir el numero que coloco sin razon alguno ja ja ja, necesito amigos :C");
        }

        if (numerodeandres == 1) {

            System.out.println("Es 1");
        } else if (numerodeandres == 2) {
            System.out.println("Es dos");
        } else if (numerodeandres == 3) {
            System.out.println("Es tres");
        } else {
            System.out.println("Por cierto, opcion no contemplada ");
        }

        //For
        for (int veces = 0; veces < numerodeandres; veces++) {
            System.out.println("las vaces que se esta repitiendo " + veces);
        }

        //While
        //Sitp
        boolean tarjetasitp = true;
        while (tarjetasitp) {
            System.out.println("¿Tiene saldo disponible?");
            String op = sitp.nextLine();
            if (op.toLowerCase().equals("si")) {
                System.out.println("Gracias");
                continue;
            } else {
                System.out.println("No tiene saldo disponible");
                System.out.println("Ni modos que siga le paro");
                break;
            }
        }
        //For Each
        String frase = "jajajaja";
        for (char letra : frase.toCharArray()) {
            System.out.println("la Letra siguiente es " + letra);
        }
        int[] vector_de_numeros = {2, 3, 4, 5, 6, 7, 8, 9, 0};
        for (int numeor : vector_de_numeros) {
            System.out.println("el numero actual es " + vector_de_numeros);
        }

        int numeroarevisar = 4;
        switch (numeroarevisar) {
            case 1:
                System.out.println("es 1");
            case 2:
                System.out.println("es 2");
            case 3:
                System.out.println("es 3");
            case 4:
                System.out.println("es 4");
            case 5:
                System.out.println("es 5");
            default:
                System.out.println("emm que?");
        }
        switch (numeroarevisar) {
            case 1:
            case 2:
            case 3:
            case 4:
                System.out.println("es del 1 al 4");
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                System.out.println("es del 5 al 9");
                break;
        }

    }
}
