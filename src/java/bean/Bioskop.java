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
public class Bioskop {
    private int bioskopID;
    private String adresa,naziv;
    private Grad gradID;

    public int getBioskopID() {
        return bioskopID;
    }

    public void setBioskopID(int bioskopID) {
        this.bioskopID = bioskopID;
    }

    public String getAdresa() {
        return adresa;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public Grad getGradID() {
        return gradID;
    }

    public void setGradID(Grad gradID) {
        this.gradID = gradID;
    }

    public Bioskop(int bioskopID, String adresa, String naziv, Grad gradID) {
        this.bioskopID = bioskopID;
        this.adresa = adresa;
        this.naziv = naziv;
        this.gradID = gradID;
    }

    public Bioskop() {
    }
}
