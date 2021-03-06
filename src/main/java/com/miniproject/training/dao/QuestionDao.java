package com.miniproject.training.dao;

import java.util.List;

import com.miniproject.training.model.Question;

public interface QuestionDao {

	public List<Question> getAllQuestions();

	public void save(Question question);

	public Question getQuestionById(Long id);

	public List<Question> searchQuestion(String search);

	public List<Question> getLastVersionQuestions();

}