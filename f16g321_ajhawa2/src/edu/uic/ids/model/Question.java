package edu.uic.ids.model;

import java.io.Serializable;

public class Question implements Serializable {

private int questionId;
private String questionType;
private String questionString;
private String answer;
private double answerError;
private String studentAnswer;
private String courseName;
public String getQuestionString() {
	return questionString;
}

public double getAnswerError() {
	return answerError;
}

public void setAnswerError(double answerError) {
	this.answerError = answerError;
}

public void setQuestionString(String questionString) {
	this.questionString = questionString;
}

public String getStudentAnswer() {
	return studentAnswer;
}

public void setStudentAnswer(String studentAnswer) {
	this.studentAnswer = studentAnswer;
}

public String getAnswer() {
	return answer;
}

public void setAnswer(String answer) {
	this.answer = answer;
}

}
