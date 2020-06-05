package com.nurullahozkan.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nurullahozkan.dao.NoteDAO;
import com.nurullahozkan.entity.Note;
import com.nurullahozkan.security.LoginFilter;

@Service
@Transactional
public class NoteService {

	@Autowired
	private NoteDAO noteDAO;

	public Long createNote(Note note, HttpServletRequest request) {
		note.setUser_id(LoginFilter.user.getId()); // user_id deðiþecek
		return noteDAO.insert(note);

	}
	
	public Long updateNote(Note note, HttpServletRequest request) {
		 noteDAO.update(note);
		 return 1l;

	}
	
	public Long deleteNote(Note note, HttpServletRequest request) {
		 noteDAO.delete(note);
		 return 1l;

	}

	public Note getNoteFindById(Long id) {

		return noteDAO.getFindById(id);
	}

	public ArrayList<Note> getAll() {
		return noteDAO.getAll();
	}

	public ArrayList<Note> getAll(Long userId) {
		return noteDAO.getAll(userId);
	}

}
