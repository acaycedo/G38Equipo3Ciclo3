
package conexion;

import java.sql.*;


public class Principal {
    public static void main(String[] args) {
        //Jdbc java data base conexion es quien permite hacer la conexion
            //paso 1 indicar donde esta
        try {
            //Class es para forzar usar la libreria de sqlite
            Class.forName("org.sqlite.JDBC");
            Connection conectar_a_bd;
            //drivermanager el que maneja la conexion y get(recoge) el archivo de la siguiente direccion
            //en caso de ser web po ip se coloca la ip
            //jdbc:sqlite:db_estudiantes.db
            //jdbc es indicar que es una javadatabaseconnection
            //que es un archivo sqlite
            //y la ubicacion de ella
            conectar_a_bd = DriverManager.getConnection("jdbc:sqlite:db_estudiantes.db");
            System.out.println("Base de datos conectada");
            
            //paso 2: Crear tabla ejemplo
            //paso 2.1: crear sentencia
            //Statement = solicitud a sql
            Statement enunciado = conectar_a_bd.createStatement();
            
            
            //ejecutar esa solicitud
            //Se pide que se quiere hacer, ex: crear tabla con 2 columnas
            enunciado.execute("create table if not exists prueba(id int, nombre varchar)");
           
            
            //paso 3:
            enunciado.execute("insert into prueba values(0,'rosendo')");
            enunciado.execute("insert into prueba values(1,'edwin')");
            System.out.println("Datos Insertados");
            
            
            //paso 4: Traer datos
            //ResultSet es la respuesta de algo escogido osea consulta
            //execute.querey es ejecutar una consulta(Datos Solicitados)
            ResultSet resultados = enunciado.executeQuery("select * from prueba");
            while(resultados.next()){
                System.out.println("Datos Insertados: ");
                //Mientras existe una siguiente linea traer los siguientes datos
                System.out.println("ID:"+resultados.getInt(1));
                System.out.println("Nombre:"+resultados.getString(2));
            }
            //Paso 5 cerrar conexiones
            resultados.close();
            enunciado.close();
            conectar_a_bd.close();                
        } catch (ClassNotFoundException ex) {
            //En caso de Class not found Exception es porque no cargo la libreria
            System.out.println("Error al cargar la clase");
        } catch (SQLException ex) {
            System.out.println("Error en la secuencia SQL"+ex.getMessage());
        }
    }
}
