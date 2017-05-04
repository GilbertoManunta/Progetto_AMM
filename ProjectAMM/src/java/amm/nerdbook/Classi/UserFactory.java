/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package amm.nerdbook.Classi;

import java.util.ArrayList;

/**
 *
 * @author Gilberto Manunta
 */
public class UserFactory {
    //Pattern Design Singleton
    private static UserFactory singleton;

    public static UserFactory getInstance() {
        if (singleton == null) {
            singleton = new UserFactory();
        }
        return singleton;
    }

    private ArrayList<User> listaUtenti = new ArrayList<User>();

    private UserFactory() {
        //Creazione utenti
        
        User utente1 = new User();
        utente1.setId(0);
        utente1.setNome("Gilberto");
        utente1.setCognome("Manunta");
        utente1.setFraseDiPresentazione("Ciao a tutti");
        utente1.setPassword("123456789");
        utente1.setUrlFotoProfilo("Immagini/profilo1.jpg");
        utente1.setDataDiNascita("08/01/1996");

        User utente2 = new User();
        utente2.setId(0);
        utente2.setNome("Marco");
        utente2.setCognome("Iervolino");
        utente2.setFraseDiPresentazione("Cosa vuoi?");
        utente2.setPassword("cosavuoi1");
        utente2.setUrlFotoProfilo("Immagini/profilo2.jpg");
        utente2.setDataDiNascita("06/06/1996");

        User utente3 = new User();
        utente3.setId(0);
        utente3.setNome("Mauro");
        utente3.setCognome("Marini");
        utente3.setFraseDiPresentazione("Bellaaaa");
        utente3.setPassword("busho97");
        utente3.setUrlFotoProfilo("Immagini/profilo3.png");
        utente3.setDataDiNascita("24/04/1997");

        User utente4 = new User();
        utente4.setId(0);
        utente4.setNome(null);
        utente4.setCognome(null);
        utente4.setFraseDiPresentazione(null);
        utente4.setPassword("0");
        utente4.setUrlFotoProfilo(null);
        utente4.setDataDiNascita(null);

        listaUtenti.add(utente1);
        listaUtenti.add(utente2);
        listaUtenti.add(utente3);
        listaUtenti.add(utente4);
    }

    public User getUserById(int id) {
        for (User utente : this.listaUtenti) {
            if (utente.getId() == id) {
                return utente;
            }
        }
        return null;
    }
    
    public int getIdByUserAndPassword(String user, String password){
        for(User utente : this.listaUtenti){
            if(utente.getNome().equals(utente) && utente.getPassword().equals(password)){
                return utente.getId();
            }
        }
        return -1;
    }
}
