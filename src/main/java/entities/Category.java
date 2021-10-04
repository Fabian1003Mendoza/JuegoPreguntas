package entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "categorias")
public class Category implements Serializable{
    private static final long serialVersionUID=1L;
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "nombre_categoria")
    private String nombre_categoria;
    @Column(name = "nivel")
    private String nivel;
    @OneToMany(mappedBy = "category_id", cascade = CascadeType.ALL)
    private List<Question> preguntas ;

    @OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL)
    private List<Premiacion> premiacion ;


    public Category() {
    }

    public Category(int id, String nombre_categoria, String nivel) {
        this.id = id;
        this.nombre_categoria = nombre_categoria;
        this.nivel = nivel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_categoria() {
        return nombre_categoria;
    }

    public void setNombre_categoria(String nombre_categoria) {
        this.nombre_categoria = nombre_categoria;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public List<Question> getPreguntas() {
        return preguntas;
    }

    public void setPreguntas(List<Question> preguntas) {
        this.preguntas = preguntas;
    }

    public List<Premiacion> getPremiacion() {
        return premiacion;
    }

    public void setPremiacion(List<Premiacion> premiacion) {
        this.premiacion = premiacion;
    }

    @Override
    public String toString() {
        return "Categorias{" +
                "id=" + id +
                ", nombre_categoria='" + nombre_categoria + '\'' +
                ", nivel='" + nivel + '\'' +
                '}';
    }
}

