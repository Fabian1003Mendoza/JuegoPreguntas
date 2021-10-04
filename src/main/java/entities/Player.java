package entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "jugador")
public class Player implements Serializable {
    private static final long serialVersionUID=1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "nombre_jugador")
    private String nombre_jugador;
    @Column(name = "premio_total")
    private int premio_total;

    public Player() {
    }

    public Player(int id, String nombre_jugador, int premio_total) {
        this.id = id;
        this.nombre_jugador = nombre_jugador;
        this.premio_total = premio_total;
    }





    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_jugador() {
        return nombre_jugador;
    }

    public void setNombre_jugador(String nombre_jugador) {
        this.nombre_jugador = nombre_jugador;
    }

    public int getPremio_total() {
        return premio_total;
    }

    public void setPremio_total(int premio_total) {
        this.premio_total = premio_total;
    }

    @Override
    public String toString() {
        return "Jugador{" +
                "id=" + id +
                ", nombre_jugador='" + nombre_jugador + '\'' +
                ", premio_total=" + premio_total +
                '}';
    }
}
