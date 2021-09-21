package Reto1;

public class Controlador {

    ReciboGeneral agua = new ReciboGeneral(9256f);
    ReciboGeneral luz = new ReciboGeneral(6200f);
    ReciboGeneral gas = new ReciboGeneral(5234f);

    public float consumoSubtotalLuz(int consumo) {
        float totalpagar = (consumo *luz.preciopagar);
        return totalpagar;
    }

    public float consumoSubtotalAgua(int consumo) {
        float totalpagar = (consumo * agua.preciopagar);
        return totalpagar;
    }

    public float consumoSubtotalGas(int consumo) {
        float totalpagar = (consumo * gas.preciopagar);
        return totalpagar;
    }

    public float descountBajo() {
        float total_descount = 0.5f;
        return total_descount;
    }

    public float descountMedio() {
        float total_descount = 0.1f;
        return total_descount;
    }

    public float descountAlto() {
        float total_sobrecosto = 0.25f;
        return total_sobrecosto;
    }
    public float impuestoGobierno() {
        float total_impuesto = 0.01f;
        return total_impuesto;
    }

}
