package com.example.deploy_app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;

@SpringBootApplication
@RestController
public class DeployAppApplication {

    @GetMapping("/")
    public String home() {
        return "✅ Déployé avec succès via Docker + GitHub Actions + Azure! wwwwww";
    }

    public static void main(String[] args) {
        SpringApplication.run(DeployAppApplication.class, args);
    }
}