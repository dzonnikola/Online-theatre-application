/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Korisnik
 */
public class Grad {
    private int gradID;
    private String naziv;

    public int getGradID() {
        return gradID;
    }

    public void setGradID(int gradID) {
        this.gradID = gradID;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Grad(int gradID, String naziv) {
        this.gradID = gradID;
        this.naziv = naziv;
    }

    public Grad() {
    }
}
