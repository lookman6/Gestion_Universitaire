/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.universite.Model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author lookman
 */
@Entity
@Table(name = "filieres")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Filieres.findAll", query = "SELECT f FROM Filieres f"),
    @NamedQuery(name = "Filieres.findByCodeFil", query = "SELECT f FROM Filieres f WHERE f.codeFil = :codeFil"),
    @NamedQuery(name = "Filieres.findByNomFil", query = "SELECT f FROM Filieres f WHERE f.nomFil = :nomFil")})
public class Filieres implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Code_Fil")
    private String codeFil;
    @Size(max = 45)
    @Column(name = "Nom_Fil")
    private String nomFil;
    @OneToMany(mappedBy = "refFil")
    private Collection<Eleves> elevesCollection;
//cascade = CascadeType.PERSIST
    public Filieres() {
    }

    public Filieres(String codeFil) {
        this.codeFil = codeFil;
    }

    public String getCodeFil() {
        return codeFil;
    }

    public void setCodeFil(String codeFil) {
        this.codeFil = codeFil;
    }

    public String getNomFil() {
        return nomFil;
    }

    public void setNomFil(String nomFil) {
        this.nomFil = nomFil;
    }

    @XmlTransient
    public Collection<Eleves> getElevesCollection() {
        return elevesCollection;
    }

    public void setElevesCollection(Collection<Eleves> elevesCollection) {
        this.elevesCollection = elevesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codeFil != null ? codeFil.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Filieres)) {
            return false;
        }
        Filieres other = (Filieres) object;
        if ((this.codeFil == null && other.codeFil != null) || (this.codeFil != null && !this.codeFil.equals(other.codeFil))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.universite.Model.Filieres[ codeFil=" + codeFil + " ]";
    }
    
}
