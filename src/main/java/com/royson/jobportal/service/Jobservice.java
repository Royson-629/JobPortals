package com.royson.jobportal.service;

import com.royson.jobportal.model.Jobpost;
import com.royson.jobportal.repo.Jobrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class Jobservice {

    @Autowired
    public Jobrepo repo;


    public void addjob(Jobpost jobpost){

        repo.save(jobpost);
    }

    public List<Jobpost> getalljobs(){
        return repo.findAll();
    }

    public void load() {
        List<Jobpost> jobs = new ArrayList<>(Arrays.asList(
                new Jobpost("Senior Frontend Developer","Nexus Tech Corp","Looking for a React expert to build next-generation web interfaces using glassmorphism and modern CSS frameworks.","Remote",List.of("React"),"Full-Time"),
                new Jobpost("Backend Systems Engineer","CyberDyne Analytics","Architect robust microservices using Java Spring Boot and manage decentralized database clusters.","Hybrid",List.of("Java","Spring Boot"),"Part-Time"),
                new Jobpost("UI/UX Visionary","Quantum Designs","Design futuristic user experiences for VR applications and spatial computing dashboards.","On-Site",List.of("Figma"),"Contract")

        ));

        repo.saveAll(jobs);
    }
}
