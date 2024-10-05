package com.lwz;

import org.springframework.boot.SpringApplication;

public class TestBlibliApplication {

	public static void main(String[] args) {
		SpringApplication.from(BlibliApplication::main).with(TestcontainersConfiguration.class).run(args);
	}

}
