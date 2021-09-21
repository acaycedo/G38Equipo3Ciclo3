package mvc;

import java.util.ArrayList;

public class Controlador {

    //Creacion de funciones que guardan los datos
    //Crear estructuras de datos
    //vector
    //las listas Estaticas mas rapidas
    int[] vector = new int[10];
    //las listas Dinamicas mas rapidas
    ArrayList<Persona> lista = new ArrayList<>();

    //void se usa para cunaod no retorna nada
    void crearPersona(String nombre, String comida, int edad, int documento) {
        //Las funciones van capitalizadas en la segunda palabra
        lista.add(new Persona(nombre, comida, documento));
    }

    ArrayList mostrarPersonas() {
        return lista;
    }
}
