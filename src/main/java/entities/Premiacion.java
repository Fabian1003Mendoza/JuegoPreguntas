package entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "premiacion")
public class Premiacion implements Serializable {
    private static final long serialVersionUID=1L;

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "premio")
    private int premio;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categorias_id")
    private Category categoria;

    public Premiacion() {
    }

    public Premiacion(int id, int premio, Category category_id) {
        this.id = id;
        this.premio = premio;
        this.categoria = category_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPremio() {
        return premio;
    }

    public void setPremio(int premio) {
        this.premio = premio;
    }

    public Category getCategorias_id() {
        return categoria;
    }

    public void setCategorias_id(Category category_id) {
        this.categoria = category_id;
    }

    @Override
    public String toString() {
        return "Premiacion{" +
                "id=" + id +
                ", premio='" + premio + '\'' +
                ", categorias_id=" + categoria +
                '}';
    }
}
