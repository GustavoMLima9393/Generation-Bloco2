package com.helloworld.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/hello-world")
public class HelloWorldController {
	public String[] array = {"Orientação ao futuro", "Responsabilidade pessoal", "Mentalidade de crescimento", "Persistência"};
	@GetMapping
	public String helloWorld() {
	return "Hello World!";
	}
	@GetMapping ("/Bsms")
public String[] exibirBsm() {
	return array;
	}
	@GetMapping ("/Objetivos")
	public String objetivos() {
	return "Meu objetivo essa semana é aprender spring boot";
	}
}
