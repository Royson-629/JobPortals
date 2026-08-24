package com.royson.jobportal.controller;

import com.royson.jobportal.model.Jobpost;
import com.royson.jobportal.service.Jobservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private Jobservice jobservice;

    @GetMapping({"/","index"})
    public String index(){
        return "index";
    }

    @GetMapping("home")
    public String home(Model m){
        List<Jobpost> job = jobservice.getalljobs();
        m.addAttribute("Jobposts",job);
        return "home";
    }

    @GetMapping("addjobs")
    public String addjobs(){
        return "addjobs";
    }

    @GetMapping("contact")
    public String contact(){
        return "contact";
    }

    @PostMapping("handleform")
    public String handleform(Jobpost posts){
        try {
            jobservice.addjob(posts);
            return "addjobsuccess";
        }catch (Exception e){
            return "addjoberror";
        }
    }

    @PostMapping("handleformcontact")
    public String handleformcontact(){
        try {
            return "contactsuccess";
        }catch (Exception e){
            return "contacterror";
        }
    }

}
