package entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "respuestas")
public class Answer implements Serializable {
    private static final long serialVersionUID=1L;

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "nombre_respuesta")
    private String nombre_respuesta;
    @Column(name = "estado")
    private String estado;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "preguntas_id")
    private Question pregunta;

    public Answer() {
    }

    public Answer(int id, String nombre_respuesta, String estado) {
        this.id = id;
        this.nombre_respuesta = nombre_respuesta;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre_respuesta() {
        return nombre_respuesta;
    }

    public void setNombre_respuesta(String nombre_respuesta) {
        this.nombre_respuesta = nombre_respuesta;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Question getPregunta() {
        return pregunta;
    }

    public void setPregunta(Question pregunta) {
        this.pregunta = pregunta;
    }

    @Override
    public String toString() {
        return "Respuestas{" +
                "id=" + id +
                ", nombre_respuesta='" + nombre_respuesta + '\'' +
                ", estado='" + estado + '\'' +
                '}';
    }
}
