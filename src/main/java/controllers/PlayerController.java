package controllers;


import entities.Category;
import entities.Player;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PlayerController {



    public static void savePlayer(String name, Category category, String message, boolean lose ){
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("aplicacion");
        EntityManager em = emf.createEntityManager();

        Player player = new Player();
        player.setNombre_jugador(name);
        if(lose){
            player.setPremio_total(0);
        }else{
        player.setPremio_total(category.getPremiacion().get(0).getPremio());}
        em.getTransaction().begin();
        em.persist(player);
        em.getTransaction().commit();
        System.out.println(message + player.getPremio_total() );
    }


}
