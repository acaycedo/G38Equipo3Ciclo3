
package DTO;


public class ComidaFavoritaVO {
    private String ingredientes;
    private String preparacion;
    private double costo;

    public ComidaFavoritaVO() {
    }

    public ComidaFavoritaVO(String ingredientes, String preparacion, double costo) {
        this.ingredientes = ingredientes;
        this.preparacion = preparacion;
        this.costo = costo;
    }

    public String getIngredientes() {
        return ingredientes;
    }

    public String getPreparacion() {
        return preparacion;
    }

    public double getCosto() {
        return costo;
        
    
}

    void setCosto(double precio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
