/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clinica.modelo;

import com.google.gson.Gson;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.Buffer;

/**
 *
 * @author FHGA
 */
public class ClinicaAdministrativa {

    Clinica clinica;
    Gson gson = new Gson();

    public ClinicaAdministrativa() {
        this.clinica = new Clinica();
    }

    public void aggPaciente(Paciente p) throws IOException {
        leerJson();
        clinica.pacientes.add(p);
        guardarJson();
    }
    public void aggUsuario(Usuario u) throws IOException {
        leerJson();
        clinica.usuarios.add(u);
        guardarJson();
    }

    public void guardarJson() throws IOException {
        String ruta = "C:\\Users\\HP\\Documents\\NetBeansProjects\\universidad\\ProyectoClinica\\aaa.json";
        BufferedWriter bw;
        
        String jsonString = gson.toJson(clinica);
        File archivo = new File(ruta);
        bw = new BufferedWriter(new FileWriter(archivo));
        bw.write(jsonString);
        bw.close();
    }

    public void leerJson() throws IOException {
        String ruta;
        ruta = "C:\\Users\\HP\\Documents\\NetBeansProjects\\universidad\\ProyectoClinica\\aaa.json";
        String cadena;
        FileReader f = new FileReader(ruta);
        System.out.println("Hola Mundo");
        String leer;
        try (BufferedReader br = new BufferedReader(f)) {
            leer = "";
            while ((cadena = br.readLine()) != null) {
                
                leer = leer + cadena;
            }   System.out.println(leer);
        }
        
        if(leer.length()>0){
              clinica = gson.fromJson(leer, Clinica.class);
        }else{
            clinica=new Clinica();
        }
       

    } 

    public String validarLogin(Usuario u) {
        if (u.getNombreUsuario().compareTo("Admin") == 0 && u.getContrasena().compareTo("123456789") == 0) {
                return u.getNombreUsuario();
        } else {
            for (Usuario item : clinica.usuarios) {
                if (item.getNombre().compareTo(u.getNombre()) == 0 && (item.getCargo().compareTo(u.getCargo())) == 0) {
                    return item.getCargo();
                }else{
                    System.out.println("Datos Incorrecto");
                }

            }
        }
        return null;

    }

}
