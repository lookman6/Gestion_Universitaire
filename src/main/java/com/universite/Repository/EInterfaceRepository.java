/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.universite.Repository;

import com.universite.Model.Eleves;
import com.universite.Model.Filieres;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author lookman
 */
@Repository
public interface EInterfaceRepository {
    public void add(Eleves d);
    public boolean update(Eleves d);
    public List<Eleves> findAll();
    public Eleves findById(String cne);
    public void remove(Eleves d);
    public List<Eleves> findStudentByClass(Filieres fil);
    public List<Eleves> findStudentByClass2(Filieres fil);
    public Long findStudentCount(Filieres fil);
}
