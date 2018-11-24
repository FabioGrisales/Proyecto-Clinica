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
        clinica.paciente.add(p);
        guardarJson();
    }

    public void leerJson() throws IOException {
        String ruta = "C:\\Users\\HP\\Documents\\NetBeansProjects\\universidad\\ProyectoClinica\\aaa.json";
        BufferedWriter bw;
        clinica = new Clinica();
        String jsonString = gson.toJson(clinica);
        File archivo = new File(ruta);
        bw = new BufferedWriter(new FileWriter(archivo));
        bw.write(jsonString);
        bw.close();
    }

    public void guardarJson() throws IOException {
        String ruta;
        ruta = "C:\\Users\\HP\\Documents\\NetBeansProjects\\universidad\\ProyectoClinica\\aaa.json";
        String cadena;
        File fl=new File(ruta);
        FileReader f = new FileReader(ruta);
        
        String leer;
        try (BufferedReader br = new BufferedReader(f)) {
            leer = "";
            while ((cadena = br.readLine()) != null) {
                
                leer = leer + cadena;
            }   System.out.println(leer);
        }
        clinica = gson.fromJson(leer, Clinica.class);

    } 

    public String validarLogin(Usuario u) {
        if (u.getNombreUsuario().compareTo("Admin") == 0 && u.getContrasena().compareTo("123456789") == 0) {
                return u.getNombreUsuario();
        } else {
            for (Usuario item : clinica.usuario) {
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
