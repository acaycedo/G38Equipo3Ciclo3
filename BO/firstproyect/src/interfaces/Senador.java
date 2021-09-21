
package interfaces;

public class Senador implements Persona,SerVivo{

    @Override
    public String hablar() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String razonar() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String cocinar() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String dormir() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String comer() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String reproducirse() {
           return "No se encuentra informacion en la base data";
    }

    @Override
    public String toString() {
        return "info: "+hablar()+" "+cocinar()+" "+razonar();
    } 
    
    
    
}
