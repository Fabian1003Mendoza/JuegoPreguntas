package controllers;

import entities.Category;
import entities.Question;
import entities.Answer;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;
import java.util.Scanner;

public class QuestionController {


    public static void startGame() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("aplicacion");
        EntityManager em = emf.createEntityManager();
        Scanner input = new Scanner(System.in);

        List<Category> categorias = (List<Category>) em.createQuery("FROM Category").getResultList();

        System.out.println("Ingrese el nombre del jugador");
        String namePlayer = input.nextLine();
        for (Category category : categorias) {
            List<Answer> answers = showQuestion(category).getRespuesta();
            AnswerController.showAnswers(answers);
            int userAnswer = Integer.parseInt(input.nextLine());
            if (isLastCategoryAndAnswerCorrect(answers, userAnswer, category)) {
                PlayerController.savePlayer(namePlayer, category, "Felicidades completaste el juego tus puntos ganados son: ", false);
                break;
            }
            if ( isAnswerCorrect(answers, userAnswer)) {
                 if (AnswerController.validateContinue( input).equals("no")) {
                    PlayerController.savePlayer(namePlayer, category, "Felicidades tus puntos totales son: ", false);
                    break;
                }
            } else {
                PlayerController.savePlayer(namePlayer, category, "Lo siento vuelve a intentar => GAME OVER ", true);
                break;
            }
        }
    }


    private static  Question showQuestion(Category category){
        System.out.println("Inicias tu nivel " + category.getNivel());
        Question question = category.getPreguntas().get((int) (Math.random() * 4));
        System.out.println(question.getDescripcion_pregunta());
        return question;
    }

    private static  boolean isLastCategoryAndAnswerCorrect(List<Answer> answers, int userAnswer, Category category){
        return Boolean.parseBoolean(answers.get(userAnswer).getEstado()) && category.getId() == 5;
    }

    private static boolean isAnswerCorrect(List<Answer> answers, int userAnswer){
       return Boolean.parseBoolean(answers.get(userAnswer).getEstado());
    }
}
