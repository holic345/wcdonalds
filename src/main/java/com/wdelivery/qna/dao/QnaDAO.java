package com.wdelivery.qna.dao;

import com.wdelivery.qna.vo.QnaVO;

public interface QnaDAO {
	
	public void qnaInsert(QnaVO qnaVO);
	public QnaVO qnaSelect(QnaVO qnaVO);
	
}
