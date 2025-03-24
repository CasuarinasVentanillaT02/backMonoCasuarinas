package com.systems;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Main {
	static {
		try {
			// Forzar la inicialización de la clase para evitar NoClassDefFoundError
			Class.forName("net.sf.jasperreports.engine.util.JRStyledTextParser");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Error loading JasperReports class", e);
		}
	}
	public static void main(String[] args) {
		System.setProperty("java.awt.headless", "true");
		SpringApplication.run(Main.class, args);
	}

}
