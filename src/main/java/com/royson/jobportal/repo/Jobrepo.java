package com.royson.jobportal.repo;

import com.royson.jobportal.model.Jobpost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class Jobrepo {

    List<Jobpost> jobs = new ArrayList<>(Arrays.asList(
            new Jobpost("Senior Frontend Developer","Nexus Tech Corp","Looking for a React expert to build next-generation web interfaces using glassmorphism and modern CSS frameworks.","Remote",List.of("React"),"Full-Time"),
            new Jobpost("Backend Systems Engineer","CyberDyne Analytics","Architect robust microservices using Java Spring Boot and manage decentralized database clusters.","Hybrid",List.of("Java","Spring Boot"),"Part-Time"),
            new Jobpost("UI/UX Visionary","Quantum Designs","Design futuristic user experiences for VR applications and spatial computing dashboards.","On-Site",List.of("Figma"),"Contract")

    ));

    public List<Jobpost> getalljobs(){
        return jobs;
    }

    public void addjob(Jobpost job){
        jobs.add(job);
        System.out.println(job);
    }
}
