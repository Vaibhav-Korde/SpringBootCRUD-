package com.crud.enties;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "student")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "sudent_roll_no")
    private int rollNo;
    @Column(name = "sudent_name")
    private String name;
    @Column(name = "student_percentage")
    private double percentage;
    @Column(name = "student_branch")
    private String branch;
    
}
