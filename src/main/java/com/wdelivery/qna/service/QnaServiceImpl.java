package com.wdelivery.qna.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wdelivery.qna.dao.QnaDAO;
import com.wdelivery.qna.vo.QnaVO;

@Service
public class QnaServiceImpl implements QnaService {

	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Override
	public void qnaInsert(QnaVO qnaVO) {
		qnaDAO.qnaInsert(qnaVO);
		//System.out.println("qna ¼º°ø");
	}

	
	  @Override
	  public QnaVO qnaSelect(QnaVO qnaVO) {
		  System.out.println("QNADAO¿¡ qnavo select => " + qnaVO.getQa_name()); 
		  return qnaDAO.qnaSelect(qnaVO);
	  }
	 

}
