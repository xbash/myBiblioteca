package mybiblioteca;
import javax.swing.JOptionPane;

public class myIngreso {
    public static void main(String[] args){
        String vCon;
        vCon = myConexion.myVerificarConexion();
        if("OK".equals(vCon)){
//            JOptionPane.showMessageDialog(null,"Conexion a la base de datos OK");
            myMenu vMenu = new myMenu();
            vMenu.setVisible(true);
        } else {
            JOptionPane.showMessageDialog(null,vCon);
        }
    }
    
}
