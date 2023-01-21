/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.universite.Controller;

import com.universite.Model.Eleves;
import com.universite.Model.Filieres;
import com.universite.Service.EInterfaceService;
import com.universite.Service.EleveService;
import com.universite.Service.FInterfaceService;
import com.universite.Service.FiliereService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author lookman
 */
@Controller
public class FiliereController {
    
    

    @Autowired
    private FInterfaceService serviceFiliere;
   
     @Autowired
    private EInterfaceService serviceEleve;
     
     
    @RequestMapping(value={"/","/list"})
    public String Index(Model model)
    {
       model.addAttribute("listfiliere", serviceFiliere.findAll());
       model.addAttribute("listeleve", serviceEleve.findAll());
        //model.addAttribute("listeleves", "Je suis content que tu t'affiches maintenant !");
        return "students";
    }
   @RequestMapping(value="/addFiliere",method=RequestMethod.GET)
   public String add(Model model) {
      //model.addAttribute("message", "Hello GENIE INFO !");
      return "addClass";
}

   @RequestMapping(value="/GestionFiliere",method=RequestMethod.GET)
   public String gerer(Model model) {
        model.addAttribute("listfiliere", serviceFiliere.findAll());
      //model.addAttribute("message", "Hello GENIE INFO !");
      return "Classes";
}
 
   
   @RequestMapping(value="/saveFiliere", method = RequestMethod.POST)
   public String save(Filieres filiere)
   {
       serviceFiliere.add(filiere);
       return "redirect:list";
   }
   
    @RequestMapping(value="/EditFiliere", method = RequestMethod.GET)
   public String editPage(@ModelAttribute Filieres eleve, Model model )
   {
        System.out.println("je suis dans la methode edit "+ eleve);
       Filieres el = serviceFiliere.findById(eleve.getCodeFil());
//       model.addAttribute("listFiliere",serviceFiliere.findAll());
       System.out.println("je suis dans la methode edit "+ el.getNomFil());
       model.addAttribute("Filiere", el);
       
       return "editClass";
   }
   
   @RequestMapping(value="/UpdateFiliere", method = RequestMethod.POST)
    public String update( Filieres eleve ) {
        serviceFiliere.update(eleve);
//       System.out.println("je suis dans la methode update "+eleve);
        return "redirect:GestionFiliere";
    }
    
    @RequestMapping(value="/DeleteFiliere", method = {RequestMethod.DELETE, RequestMethod.GET})
    public String delete(@ModelAttribute Filieres Student) {
        Filieres el = serviceFiliere.findById(Student.getCodeFil());
        serviceFiliere.remove(el);
           // Student.setNom("nouveauNom");
//System.out.println("je suis dans la methode delete "+el);
        return "redirect:GestionFiliere";
    }
   
   /*@RequestMapping(value="/UpdateArticl", method = {RequestMethod.PUT, RequestMethod.GET})
    public String update(Filieres filiere) {
        serviceFiliere.getRepository().update(filiere);
        return "redirect:/list";
    }
    @RequestMapping(value="/DeleteArticl", method = {RequestMethod.DELETE, RequestMethod.GET})
    public String delete(Filieres filiere) {
        serviceFiliere.getRepository().remove(filiere);
        return "redirect:/list";
    }
   
    @RequestMapping("/EditArticl?code")
    public String edit( Model model,@PathVariable("code") String code)
    {
        Filieres art = serviceFiliere.getRepository().findById(code);
        model.addAttribute("art", art);
        model.addAttribute("code", code);
        return "Edit_Article";
    }*/
}
    

