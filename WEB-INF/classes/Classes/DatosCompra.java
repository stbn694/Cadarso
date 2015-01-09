/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author Esteban Gerpe
 */
public class DatosCompra {
    private String nome;
    private String telefono;
    private String direccion;
    private String localidade;
    private String codigoPostal;

    public DatosCompra(String nome, String telefono, String direccion, String localidade, String codigoPostal) {
        this.nome = nome;
        this.telefono = telefono;
        this.direccion = direccion;
        this.localidade = localidade;
        this.codigoPostal = codigoPostal;
    }

    public String getNome() {
        return nome;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getLocalidade() {
        return localidade;
    }

    public String getCodigoPostal() {
        return codigoPostal;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setLocalidade(String localidade) {
        this.localidade = localidade;
    }

    public void setCodigoPostal(String codigoPostal) {
        this.codigoPostal = codigoPostal;
    }
    
    
    
}
