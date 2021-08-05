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
public class Korisnik {
    private int korisnikid;
    private String email, ime, password,prezime,username;

    public Korisnik(int korisnikid, String email, String ime, String password, String prezime, String username) {
        this.korisnikid = korisnikid;
        this.email = email;
        this.ime = ime;
        this.password = password;
        this.prezime = prezime;
        this.username = username;
    }

    public Korisnik() {
    }

    public int getKorisnikid() {
        return korisnikid;
    }

    public void setKorisnikid(int korisnikid) {
        this.korisnikid = korisnikid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
}
