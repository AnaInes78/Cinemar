

	import java.util.Scanner;

	public class Registro {
		
		
		private String apellidoynomb;
		private String DNI;
		private String NombreUsuario;
		private String contrasenia;
		private String email;
		private String telefono;
		
		private boolean tieneT;
		
		
		public Registro() { //pido los datos aqui!!
			Scanner entrada = new Scanner(System.in);
		
			
			System.out.println("Ingrese Apellido y Nombre: ");
			this.apellidoynomb=entrada.next();
			
			System.out.println("Ingrese DNI: ");
			this.DNI=entrada.next();
			
			System.out.println("Ingrese Nombre de Usuario: ");
			this.NombreUsuario=entrada.next();
			
			System.out.println("Ingrese email: ");
			this.email=entrada.next();
			
			System.out.println("Ingrese contraseña: ");
			this.contrasenia=entrada.next();
			
			
		}
		
		public Usuario validarReg() {
			
			Usuario user = null;
			
			if(this.apellidoynomb!=""&&this.DNI!=""&&this.email!=""&&this.NombreUsuario!=""&&this.contrasenia!="") {
				
				 user = new usuario(7,this.apellidoynomb,this.DNI,this.NombreUsuario,this.email,this.contrasenia);
			}
			
			return user;
		}

		public void validaDatos() {
			// TODO Auto-generated method stub
			
		}
		
		
		
		

	}
