/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.universite.Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author lookman
 */
@Entity
@Table(name = "eleves")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Eleves.findAll", query = "SELECT e FROM Eleves e"),
    @NamedQuery(name = "Eleves.findByCne", query = "SELECT e FROM Eleves e WHERE e.cne = :cne"),
    @NamedQuery(name = "Eleves.findByNom", query = "SELECT e FROM Eleves e WHERE e.nom = :nom"),
    @NamedQuery(name = "Eleves.findByPrenom", query = "SELECT e FROM Eleves e WHERE e.prenom = :prenom"),
    @NamedQuery(name = "Eleves.findByMoyenne", query = "SELECT e FROM Eleves e WHERE e.moyenne = :moyenne")})
public class Eleves implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "cne")
    private String cne;
    @Size(max = 45)
    @Column(name = "nom")
    private String nom;
    @Size(max = 45)
    @Column(name = "prenom")
    private String prenom;
    // @Max(value=?)  @Min(value=?), ( cascade = CascadeType.PERSIST)/cascade = CascadeType.PERSIST, /if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "moyenne")
    private Double moyenne;
    @JoinColumn(name = "Ref_Fil", referencedColumnName = "Code_Fil")
    @ManyToOne
    private Filieres refFil;

    public Eleves() {
    }

    public Eleves(String cne) {
        this.cne = cne;
    }

    public String getCne() {
        return cne;
    }

    public void setCne(String cne) {
        this.cne = cne;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public Double getMoyenne() {
        return moyenne;
    }

    public void setMoyenne(Double moyenne) {
        this.moyenne = moyenne;
    }

    public Filieres getRefFil() {
        return refFil;
    }

    public void setRefFil(Filieres refFil) {
        this.refFil = refFil;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cne != null ? cne.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Eleves)) {
            return false;
        }
        Eleves other = (Eleves) object;
        if ((this.cne == null && other.cne != null) || (this.cne != null && !this.cne.equals(other.cne))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.universite.Model.Eleves[ cne=" + cne + " ]";
    }
    
}
