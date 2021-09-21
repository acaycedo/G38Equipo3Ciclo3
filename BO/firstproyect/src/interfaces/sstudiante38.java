
package interfaces;


public class sstudiante38 implements SerVivo,Persona{

    @Override
    public String cocinar() {
        return "No cocina";
    }

    @Override
    public String comer() {
        return "Mientras esta en clase";
    }

    @Override
    public String dormir() {
        return "No lo hace";
    }

    @Override
    public String hablar() {
        return "Con la mente";
    }

    @Override
    public String razonar() {
        return "True";
    }

    @Override
    public String reproducirse() {
        return "Que es eso?";
    }

    @Override
    public String toString() {
        return "Info: " +dormir()+" "+reproducirse()+" "+cocinar();
    }
    
    
}
