package controllers;


import entities.Answer;

import java.util.List;
import java.util.Scanner;

public class AnswerController {
    public static void showAnswers(List<Answer> answers){
        for (Answer answer : answers) {
            System.out.println(answer.getNombre_respuesta());
        }
        System.out.println("Ingrese su respuesta correcta");
    }

    public static String validateContinue( Scanner scanner){
        System.out.println("Escribe (si) para continuar Escribe (no) para terminar");
        String validateContinue = scanner.nextLine();
        while (!validateContinue.equals("si") && !validateContinue.equals("no")){
            System.out.println("Ingrese un valor valido (si)(no)");
            validateContinue = scanner.nextLine();
        }
        return validateContinue;
    }

}
