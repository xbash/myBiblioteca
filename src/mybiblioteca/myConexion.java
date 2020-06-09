package mybiblioteca;
import java.sql.*;

public class myConexion {
    static Connection vCon;
    public static Connection myConectar() {
        try {
            vCon = DriverManager.getConnection("jdbc:mysql://localhost/mybibliodb", "mybiliouser", "mybilio2030");
        } catch (SQLException vEx) {
            vCon = null;
        }
        return vCon;
    }

    public static String myVerificarConexion() {
        String vFlag = "OK";
        vCon = myConectar();
        if (vCon == null) {
            vFlag = "Error al abrir la base de datos. Revisar los datos de conexion";
        }
        return vFlag;
    }
}