
package DTO;

import java.util.Scanner;

public class Vista {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in);
        for (int i = 0; i<4; i++){
            System.out.println("Inserte Ingrediente");
            String ingrediente = leer.nextLine();
            System.out.println("Inserte preparacion");
            String preparacion = leer.nextLine();
            System.out.println("Inserte Costo del plato");
            double costo = Double.parseDouble(leer.nextLine());
            
        }
    }
            
}
