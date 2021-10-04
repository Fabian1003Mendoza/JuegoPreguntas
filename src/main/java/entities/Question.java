package entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "preguntas")
public class Question implements Serializable {
    private static final long serialVersionUID=1L;
    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "descripcion_pregunta")
    private String descripcion_pregunta;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categorias_id")
    private Category category_id;

    @OneToMany(mappedBy = "pregunta")
    private List<Answer> respuestas;


    public Question() {
    }

    public Question(int id, String descripcion_pregunta, Category category_id) {
        this.id = id;
        this.descripcion_pregunta = descripcion_pregunta;
        this.category_id = category_id;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion_pregunta() {
        return descripcion_pregunta;
    }

    public void setDescripcion_pregunta(String descripcion_pregunta) {
        this.descripcion_pregunta = descripcion_pregunta;
    }

    public Category getCategorias_id() {
        return category_id;
    }

    public void setCategorias_id(Category category_id) {
        this.category_id = category_id;
    }

    public List<Answer> getRespuesta() {
        return respuestas;
    }

    public void setRespuesta(List<Answer> respuesta) {
        this.respuestas = respuesta;
    }

    @Override
    public String toString() {
        return "Preguntas{" +
                "id=" + id +
                ", descripcion_pregunta='" + descripcion_pregunta + '\'' +
                ", categorias_id=" + category_id +
                ", respuestas_id=" +
                '}';
    }
}
