package Reto1;
import java.util.Scanner;

public class Vista {

    public static void main(String[] args) {
        Controlador llamado = new Controlador();
        Scanner leer = new Scanner(System.in);
        while (true) {

            System.out.println("PAGO DE SERVICIOS PÚBLICOS");
            System.out.println("Seleccione el servicio público:");
            System.out.println("1. Energia");
            System.out.println("2. Acueducto");
            System.out.println("3. Gas Natural");
            System.out.println("4. Salir");
            System.out.println("Opcion:");
            int op = leer.nextInt();
            if (op == 1) {
                System.out.println("Pago de Servicio de Energia");
                System.out.println("Estrato del inmueble:");
                int estrato = leer.nextInt();
                System.out.println("Consumo del inmueble:");
                int consumo = leer.nextInt();
                System.out.println("El consumo fue: " + consumo);
                float valor_unitario_cons = llamado.luz.preciopagar;
                float totaconsumo = llamado.consumoSubtotalLuz(consumo);
                float impuestoInfras = totaconsumo * (llamado.impuestoGobierno());
                System.out.println("Valor unidad: " + valor_unitario_cons);
                System.out.println("Estrato del inmueble: " + estrato);
                System.out.println("Costo total: " + totaconsumo);

                if (estrato <= 2) {
                    float descuento = llamado.descountBajo() * llamado.consumoSubtotalLuz(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 3 && estrato <= 4) {
                    float descuento = llamado.descountMedio() * llamado.consumoSubtotalLuz(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 5 && estrato <= 6) {
                    float sobrecostoporestrato = llamado.descountAlto() * llamado.consumoSubtotalLuz(consumo);
                    float total_pagar = totaconsumo + impuestoInfras + sobrecostoporestrato;
                    System.out.println("Descuento o sobrecosto: " + sobrecostoporestrato);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras );
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                }

            }
            else if (op == 2) {
                System.out.println("Pago de Servicio de Acueducto");
                System.out.println("Estrato del inmueble:");
                int estrato = leer.nextInt();
                System.out.println("Consumo del inmueble:");
                int consumo = leer.nextInt();
                System.out.println("El consumo fue: " + consumo);
                float valor_unitario_cons = llamado.agua.preciopagar;
                float totaconsumo = llamado.consumoSubtotalAgua(consumo);
                float impuestoInfras = totaconsumo * (llamado.impuestoGobierno());
                System.out.println("Valor unidad: " + valor_unitario_cons);
                System.out.println("Estrato del inmueble: " + estrato);
                System.out.println("Costo total: " + totaconsumo);

                if (estrato <= 2) {
                    float descuento = llamado.descountBajo() * llamado.consumoSubtotalAgua(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 3 && estrato <= 4) {
                    float descuento = llamado.descountMedio() * llamado.consumoSubtotalAgua(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 5 && estrato <= 6) {
                    float sobrecostoporestrato = llamado.descountAlto() * llamado.consumoSubtotalAgua(consumo);
                    float total_pagar = totaconsumo + impuestoInfras + sobrecostoporestrato;
                    System.out.println("Descuento o sobrecosto: " + sobrecostoporestrato);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras );
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                }

            }
            else if (op == 3) {
                System.out.println("Pago de Servicio de Gas Natural");
                System.out.println("Estrato del inmueble:");
                int estrato = leer.nextInt();
                System.out.println("Consumo del inmueble:");
                int consumo = leer.nextInt();
                System.out.println("El consumo fue: " + consumo);
                float valor_unitario_cons = llamado.gas.preciopagar;
                float totaconsumo = llamado.consumoSubtotalGas(consumo);
                float impuestoInfras = totaconsumo * (llamado.impuestoGobierno());
                System.out.println("Valor unidad: " + valor_unitario_cons);
                System.out.println("Estrato del inmueble: " + estrato);
                System.out.println("Costo total: " + totaconsumo);

                if (estrato <= 2) {
                    float descuento = llamado.descountBajo() * llamado.consumoSubtotalGas(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 3 && estrato <= 4) {
                    float descuento = llamado.descountMedio() * llamado.consumoSubtotalGas(consumo);
                    float total_pagar = totaconsumo + impuestoInfras - descuento;
                    System.out.println("Descuento o sobrecosto: -" + descuento);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras);
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                } else if (estrato >= 5 && estrato <= 6) {
                    float sobrecostoporestrato = llamado.descountAlto() * llamado.consumoSubtotalGas(consumo);
                    float total_pagar = totaconsumo + impuestoInfras + sobrecostoporestrato;
                    System.out.println("Descuento o sobrecosto: " + sobrecostoporestrato);
                    System.out.println("Impuesto por infraestructura: " + impuestoInfras );
                    System.out.println("TOTAL A PAGAR: " + total_pagar);
                    System.out.println(" ");
                }

            } else if (op == 4) {
                System.out.println("Hasta pronto");
                break;
            }
        }

    }
}
