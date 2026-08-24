package com.royson.jobportal.service;

import com.royson.jobportal.model.Jobpost;
import com.royson.jobportal.repo.Jobrepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Jobservice {

    @Autowired
    public Jobrepo repo;


    public void addjob(Jobpost jobpost){

        repo.addjob(jobpost);
    }

    public List<Jobpost> getalljobs(){
        return repo.getalljobs();
    }
}
