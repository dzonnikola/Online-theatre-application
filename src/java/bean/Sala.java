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
public class Sala {
    private String salaID,naziv,bioskopID;

    public String getSalaID() {
        return salaID;
    }

    public void setSalaID(String salaID) {
        this.salaID = salaID;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getBioskopID() {
        return bioskopID;
    }

    public void setBioskopID(String bioskopID) {
        this.bioskopID = bioskopID;
    }

    public Sala(String salaID, String naziv) {
        this.salaID = salaID;
        this.naziv = naziv;
    }

    public Sala() {
    }
}
