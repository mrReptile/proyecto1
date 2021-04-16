package dao;

public class User {
    private int id;
    private String nombre;
    private String apellidos;
    private String correo;
    private String password;
    private String tipo_usuario;
    private int reiniciar;

    public String getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(String tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }

    public User(int id, String nombre, String apellidos, String correo, String password) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.correo = correo;
        this.password = password;
        this.reiniciar = reiniciar;
    }
    
    public User(String nombre, String apellidos, String correo) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.correo = correo;
    }

    public User() {
        this.id = 0;
        this.nombre = "";
        this.apellidos = "";
        this.correo = "";
        this.password = "";
    }

    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public int getReiniciar(){
        return reiniciar;
    }
    
    public void setReiniciar(int reiniciar){
        this.reiniciar = reiniciar;
    }
}
