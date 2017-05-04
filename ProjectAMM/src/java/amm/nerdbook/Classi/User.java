/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

/**
 *
 * @author Gilberto Manunta
 */
public class User {
    private int id;
    private String nome;
    private String cognome;
    private String urlFotoProfilo;
    private String fraseDiPresentazione;
    private String password;
    private String dataDiNascita;
    
    public User(){
        id=0;
        nome="";
        cognome="";
        urlFotoProfilo="";
        fraseDiPresentazione="";
        password="";
        dataDiNascita="";
    }
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the cognome
     */
    public String getCognome() {
        return cognome;
    }

    /**
     * @param cognome the cognome to set
     */
    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    /**
     * @return the fraseDiPresentazione
     */
    public String getFraseDiPresentazione() {
        return fraseDiPresentazione;
    }

    /**
     * @param fraseDiPresentazione the fraseDiPresentazione to set
     */
    public void setFraseDiPresentazione(String fraseDiPresentazione) {
        this.fraseDiPresentazione = fraseDiPresentazione;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
    
    @Override
    public boolean equals(Object other) {
        if (other instanceof User)
            if (this.getId() == ((User)other).getId()) return true;
        return false;
    }

    /**
     * @return the urlFotoProfilo
     */
    public String getUrlFotoProfilo() {
        return urlFotoProfilo;
    }

    /**
     * @param urlFotoProfilo the urlFotoProfilo to set
     */
    public void setUrlFotoProfilo(String urlFotoProfilo) {
        this.urlFotoProfilo = urlFotoProfilo;
    }
    
    /**
     * @return the dataDiNascita
     */
    public String getDataDiNascita() {
        return dataDiNascita;
    }

    /**
     * @param dataDiNascita the dataDiNascita to set
     */
    public void setDataDiNascita(String dataDiNascita) {
        this.dataDiNascita = dataDiNascita;
    }
}
