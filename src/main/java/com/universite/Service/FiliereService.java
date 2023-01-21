/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.universite.Service;

import com.universite.Model.Filieres;
import com.universite.Repository.FInterfaceRepository;
import com.universite.Repository.FiliereRepository;
import java.util.List;
import javax.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author lookman
 */
@Service
public class FiliereService implements FInterfaceService{
    @Autowired
    FInterfaceRepository repository;
   
    public FiliereService()
    {
        System.out.println("Dans Filiere Service");
    }
   
    public FInterfaceRepository getRepository()
    {
        return repository;
    }
    @Override
    public void add(Filieres d)
    {
        repository.add(d);
    }
    
    @Override
    public boolean update(Filieres d) {
      return repository.update(d);
    }
    
    @Override
    public List<Filieres> findAll() {
        
        return repository.findAll();

    }
    
    @Override
    public Filieres findById(String codeFil) {
        return repository.findById(codeFil);
    }
    
    @Override
    public void remove(Filieres d){
        repository.remove(d);
    }
}
