package com.royson.jobportal.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Jobpost {

    @Id
    private String jobtitle;
    private String companyname;
    private String description;
    private String emp_type;
    private List<String> techs;
    private String work_model;

}
