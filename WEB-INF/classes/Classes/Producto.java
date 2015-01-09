package Classes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Esteban Gerpe
 */
public class Producto {
    private int id;
    private String nome;
    private String descripcion;
    private float prezo;
    private int stock;
    private String imaxe;

    public Producto(int id, String nome, String descripcion, float prezo, int stock, String imaxe) {
        this.id = id;
        this.nome = nome;
        this.descripcion = descripcion;
        this.prezo = prezo;
        this.stock = stock;
        this.imaxe = imaxe;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public float getPrezo() {
        return prezo;
    }

    public int getStock() {
        return stock;
    }

    public String getImaxe() {
        return imaxe;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setPrezo(float prezo) {
        this.prezo = prezo;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public void setImaxe(String imaxe) {
        this.imaxe = imaxe;
    }
    
    
}
