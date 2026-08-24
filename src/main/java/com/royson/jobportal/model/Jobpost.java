package com.royson.jobportal.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@Component
@NoArgsConstructor
@AllArgsConstructor
public class Jobpost {

    private String jobtitle;
    private String companyname;
    private String desc;
    private String emp_type;
    private List<String> techs;
    private String work_model;

}
