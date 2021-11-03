package com.wdelivery.qna.service;

import com.wdelivery.qna.vo.QnaVO;

public interface QnaService {
	public void qnaInsert(QnaVO qnaVO);
	public QnaVO qnaSelect(QnaVO anaVO) throws Exception;
}
