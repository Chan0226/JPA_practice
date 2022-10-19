package com.example.ex2bootjpa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("mycar.*")
@EntityScan("mycar.data")
@EnableJpaRepositories("mycar.data")
public class Ex2BootJpaApplication {

    public static void main(String[] args) {
        SpringApplication.run(Ex2BootJpaApplication.class, args);
    }

}
