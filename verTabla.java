package cinemark;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class verTabla {
	
	
	public static ResultSet verDb (String tabla) {
		Conexion conexion = new Conexion();
		Connection cn = null;
		Statement stm = null;
		ResultSet rs = null;
		try {
			cn = conexion.conectar();
			stm = cn.createStatement();
			rs = stm.executeQuery("select*from "+tabla);
			
			
			
			
			
			
		} catch (SQLException e ) {
			System.out.println("Error al intentar ver tabla");
		}
		return rs;
	}

	
	
	/*public static void main(String[] args) {
		String tabla = "usuario";
		ResultSet rs = verDb(tabla);
		try {
			
			while(rs.next()) {
				String usuario = rs.getString(5);
				System.out.println(usuario);}
		
		} catch (SQLException e) {
			System.out.println("Error en main");
		}
		}
		
		*/

	}


