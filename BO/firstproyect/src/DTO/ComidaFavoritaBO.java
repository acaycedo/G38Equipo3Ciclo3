
package DTO;

import java.util.ArrayList;


public class ComidaFavoritaBO {
    ArrayList<ComidaFavoritaVO> lista_de_comidas = new ArrayList<>();
    //Crear
    public void crearComida(String ingredientes, String preparacion, double costo){
        lista_de_comidas.add(new ComidaFavoritaVO(ingredientes, preparacion, costo));

    }
    //Buscar
    public ArrayList<ComidaFavoritaVO> ObtenerComidaFavorita(){
        return lista_de_comidas;

    }
    
    //Eliminar
    public boolean DeleteComidaFavorita(int pos){
        try {
            lista_de_comidas.remove(pos);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    //Actualizar
    public boolean ActualizarComida(int pos, double precio){
        try {
            lista_de_comidas.get(pos).setCosto(precio);
        } catch (Exception e) {
            return false;
        }
        return true;
    }
    
}
