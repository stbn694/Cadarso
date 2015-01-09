/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.util.HashMap;

/**
 *
 * @author Esteban Gerpe
 */
public class Carrito {
    private HashMap<Integer, Integer> carro;

    public Carrito(HashMap<Integer, Integer> carro) {
        this.carro = carro;
    }

    public HashMap<Integer, Integer> getCarro() {
        return carro;
    }

    public void setCarro(HashMap<Integer, Integer> carro) {
        this.carro = carro;
    }
    
    public Integer numElementos() {
        Integer total = 0;
        for (Integer cant : this.carro.values()) {
            total += cant;
        }
        return total;
    }
}
