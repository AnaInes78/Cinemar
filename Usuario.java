
public class Usuario {


		private int idusuario;
		private String Apellidoynomb;
		private int DNI;
		private String NombreUsuario;
		private String email;
		private String contrasenia;
		private String telefono;
		private int idtipousuario;
		private boolean tiene_tarjeta; 
		public Usuario(int idusuario, String Apellidoynomb, int DNI, String NombreUsuario, String contrasenia, String email, String telefono,int idtipousuario, boolean tiene_tarjeta  )
		{

			this.idusuario = idusuario;
			
			this.Apellidoynomb = Apellidoynomb;
			this.DNI = DNI;
			this.NombreUsuario = NombreUsuario;
			this.email = email;
			this.contrasenia = contrasenia;
			this.telefono = telefono;
			this.idtipousuario= idtipousuario;
			this.tiene_tarjeta = tiene_tarjeta;
		}
		public Usuario(int idusuario2, String apellidoynomb2, String dNI2, String email2, String contrasenia2,
				int idtipousuario2, boolean tiene_tarjeta2) {
			// TODO Auto-generated constructor stub
		}
		public Usuario(Usuario user) {
			// TODO Auto-generated constructor stub
		}
		public int getIdusuario() {
			return idusuario;
		}
		public void setIdusuario(int idusuario) {
			this.idusuario = idusuario;
		}
		public String getApellidoynomb() {
			return Apellidoynomb;
		}
		public void setApellidoynomb(String Apellidoynomb) {
			this.Apellidoynomb = Apellidoynomb;
		}
		public int getDNI() {
			return  DNI;
		}
		public void setDNI(int DNI) {
			this.DNI = DNI;
		}
		public String getNombreUsuario() {
			return NombreUsuario;
		}
		public void setNombreUsuario(String NombreUsuario) {
			this.NombreUsuario = NombreUsuario;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getContrasenia() {
			return contrasenia;
		}
		public void setContrasenia(String contrasenia) {
			this.contrasenia = contrasenia;
		}
		public String getTelefono() {
			return telefono;
		}
		public void setTelefono(String telefono) {
			this.telefono = telefono;
		}
		public int getIdtiposuario() {
			return  idtipousuario;
		}
		public void setIdtipousuario(int idtipousuario) {
			this.idtipousuario = idtipousuario;
		}
			
	     public boolean getTiene_tarjeta() {
				return  tiene_tarjeta;
		}
		public void setTiene_tarjeta(boolean tiene_tarjeta) {
				this.tiene_tarjeta = tiene_tarjeta;
		}
		public void visibilizar() {
			// TODO Auto-generated method stub
			
		}	
	}

