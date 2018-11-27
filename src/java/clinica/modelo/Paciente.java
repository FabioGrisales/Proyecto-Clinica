/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clinica.modelo;

import java.util.ArrayList;


/**
 *
 * @author FHGA
 */
public class Paciente {
    String nombre;
    String apellido;
    String identificacion;
    String telefono;
 
    ArrayList<Atencion>atenciones;
 

    public Paciente() {
        this.nombre = "";
        this.apellido = "";
        this.identificacion = "";
        this.telefono = "";
      this.atenciones=new ArrayList<>();
       
    }
    
   

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

   


    
    
    
}
