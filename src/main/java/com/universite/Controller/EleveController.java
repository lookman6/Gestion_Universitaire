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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author lookman
 */
@Controller
public class EleveController {
    
    
    @Autowired
    private EInterfaceService serviceEleve1;
   
    @Autowired
    private FInterfaceService serviceFiliere1;
   
     @RequestMapping(value={"/liste"})
    public String Index(Model model)
    {
        model.addAttribute("listfiliere", serviceFiliere1.findAll());
        model.addAttribute("listeleve", serviceEleve1.findAll());
        return "students";
    }
   
   @RequestMapping(value="/addStudent",method=RequestMethod.GET)
   public String add(Model model) {
       model.addAttribute("listfiliere", serviceFiliere1.findAll());
      //model.addAttribute("message", "Hello GENIE INFO !");
      return "addStudent";
}

 
   
   @RequestMapping(value="/saveStudent", method = RequestMethod.POST)
   public String save(Eleves eleve)
   {
       serviceEleve1.add(eleve);
       return "redirect:liste";
   }
   
   @RequestMapping(value="/EditStudent", method = RequestMethod.GET)
   public String editPage(@ModelAttribute Eleves eleve, Model model )
   {
        System.out.println("je suis dans la methode edit "+ eleve);
       Eleves el = serviceEleve1.findById(eleve.getCne());
       model.addAttribute("listFiliere",serviceFiliere1.findAll());
       System.out.println("je suis dans la methode edit "+ el.getNom());
       model.addAttribute("Eleve", el);
       
       return "editStudent";
   }
   
   @RequestMapping(value="/UpdateStudent", method = RequestMethod.POST)
    public String update( Eleves eleve ) {
        serviceEleve1.update(eleve);
//       System.out.println("je suis dans la methode update "+eleve);
        return "redirect:list";
    }
    @RequestMapping(value="/DeleteStudent", method = {RequestMethod.DELETE, RequestMethod.GET})
    public String delete(@ModelAttribute Eleves Student) {
        Eleves el = serviceEleve1.findById(Student.getCne());
        serviceEleve1.remove(el);
           // Student.setNom("nouveauNom");
//System.out.println("je suis dans la methode delete "+el);
        return "redirect:list";
    }
    
    @RequestMapping(value="/Fil", method =  RequestMethod.GET)
    public String display(@ModelAttribute Filieres Student, Model model) {
        Filieres el = serviceFiliere1.findById(Student.getCodeFil());
         model.addAttribute("listfiliere", serviceFiliere1.findAll());
        model.addAttribute("listeleve", serviceEleve1.findStudentByClass(el));
        model.addAttribute("nombreleve", serviceEleve1.findStudentCount(el));
//        System.out.println("je suis dans la methode delete "+serviceEleve1.findStudentCount(el));
//        serviceFiliere1.remove(el);
           // Student.setNom("nouveauNom");
//System.out.println("je suis dans la methode delete "+el);
      return "eleve";
    } 
    
    
    @RequestMapping(value="/Fil2", method =  RequestMethod.GET)
    public String displayNull(@ModelAttribute Filieres Student, Model model) {
        Filieres el = serviceFiliere1.findById(Student.getCodeFil());
         model.addAttribute("listfiliere", serviceFiliere1.findAll());
        model.addAttribute("listeleve", serviceEleve1.findStudentByClass2(el));
        // model.addAttribute("nombreleve", serviceEleve1.findStudentCount(el));
//        serviceFiliere1.remove(el);
           // Student.setNom("nouveauNom");
//System.out.println("je suis dans la methode delete "+serviceEleve1.findStudentByClass2(el));
//System.out.println("je suis dans la methode delete "+serviceFiliere1.findAll());

      return "eleve";
    } 
   
    /*@RequestMapping("/EditArticle?code")
    public String edit( Model model,@PathVariable("code") String code)
    {
        Eleves art = serviceEleve1.getRepository().findById(code);
        model.addAttribute("art", art);
        model.addAttribute("code", code);
        return "Edit_Article";
    }*/
}

    

