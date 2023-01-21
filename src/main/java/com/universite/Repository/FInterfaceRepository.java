/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.universite.Repository;

import com.universite.Model.Filieres;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author lookman
 */
@Repository
public interface FInterfaceRepository {
    public void add(Filieres d);
    public boolean update(Filieres d);
    public List<Filieres> findAll();
    public Filieres findById(String codeFil);
    public void remove(Filieres d);
}
