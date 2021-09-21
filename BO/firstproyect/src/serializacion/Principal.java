package serializacion;

/*
Se importa las librerias de las palabras reservadas file y object
 */
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;


public class Principal {

    static FileOutputStream archivo;
    static ObjectOutput salida;
    static FileInputStream archivoentrada;
    static ObjectInputStream entrada;

    static void crearArchivoCargar() {
        //este try crea el archivo
        try {
            archivo = new FileOutputStream("src/serializacion/salida.txt");
        } catch (FileNotFoundException ex) {
            System.out.println("Fallo al crear el archivo");
        }
        //ahora hay que cargar el archivo en el siguiente Try
        try {

            salida = new ObjectOutputStream(archivo);
        } catch (IOException ex) {
            System.out.println("Error al cargar el archivo ");
        }

    }

    static void escribir(Restaurante res_a_escribir) {
        if (salida != null) {
            try {
                salida.writeObject(res_a_escribir);
            } catch (IOException ex) {
                System.out.println("Error al escribir en el archivo");
            }
        }
    }

    static void cerrar() {
        if (salida != null) {
            try {
                salida.close();
            } catch (IOException ex) {
                System.out.println("Error al cerrar el archivo, verifique que no este abierto en otra ventana");
            }
        }
    }
    
    static void buscaryAbrir(){
        try {
            archivoentrada = new FileInputStream("src/serializacion/salida.txt");
            
        } catch (FileNotFoundException ex) {
            System.out.println("Error al abrir el archivo");
        }
        
        try {
                entrada = new ObjectInputStream(archivoentrada);
            } catch (IOException ex) {
                System.out.println("Error al leer el archivo");
            }
    } 
    
    public static void main(String[] args) {
        Restaurante camilo = new Restaurante("Pizzasdasda", 1212);
        crearArchivoCargar();
        escribir(camilo);
        cerrar();
    }
}
