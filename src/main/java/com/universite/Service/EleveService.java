/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.universite.Service;

import com.universite.Model.Eleves;
import com.universite.Model.Filieres;
import com.universite.Repository.EInterfaceRepository;
import com.universite.Repository.EleveRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author lookman
 */
@Service
public class EleveService implements EInterfaceService{
    @Autowired
    EInterfaceRepository repository;
   
    public EleveService()
    {
        System.out.println(" Dans Eleve Service");
    }
   
    public EInterfaceRepository getRepository()
    {
        return repository;
    }
    
    public void add(Eleves d)
    {
        repository.add(d);
    }
    
    public boolean update(Eleves d) {
      return repository.update(d);
    }
    
    public List<Eleves> findAll() {
        
        return repository.findAll();

    }
    
    public Eleves findById(String cne) {
        return repository.findById(cne);
    }
    
    @Override
    public void remove(Eleves d){
        repository.remove(d);
}
    
    
    @Override
   public List<Eleves> findStudentByClass(Filieres fil)
   {
       return repository.findStudentByClass(fil);
   }
   
    @Override
   public List<Eleves> findStudentByClass2(Filieres fil)
   {
       return repository.findStudentByClass2(fil);
   }
   
    @Override
   public Long findStudentCount(Filieres fil) {
       return repository.findStudentCount(fil);
   }
}
