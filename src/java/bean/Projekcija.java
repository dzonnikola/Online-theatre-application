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
public class Projekcija {
    private String projekcijaID,bioskopID,filmID,salaID;

    public String getProjekcijaID() {
        return projekcijaID;
    }

    public void setProjekcijaID(String projekcijaID) {
        this.projekcijaID = projekcijaID;
    }

    public String getBioskopID() {
        return bioskopID;
    }

    public void setBioskopID(String bioskopID) {
        this.bioskopID = bioskopID;
    }

    public String getFilmID() {
        return filmID;
    }

    public void setFilmID(String filmID) {
        this.filmID = filmID;
    }

    public String getSalaID() {
        return salaID;
    }

    public void setSalaID(String salaID) {
        this.salaID = salaID;
    }

    public Projekcija(String projekcijaID, String bioskopID, String filmID, String salaID) {
        this.projekcijaID = projekcijaID;
        this.bioskopID = bioskopID;
        this.filmID = filmID;
        this.salaID = salaID;
    }

    public Projekcija() {
    }
}
