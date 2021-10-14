package com.wdelivery.manager.util;

import java.io.File;


/**
 * @author nes0510@gmail.com
 * 	 awsS3 ���ε� �׽�Ʈ�� ����
 */
public class Main {
	
	public AwsS3 awsS3 = AwsS3.getInstance();
	
	public static void main(String[] args) {
		Main main = new Main();
		//���ϼ� ���� ���ϰ���̹Ƿ�, �׽�Ʈ�� ���� ���ÿ� �°� ���� 
		File file = new File("C:\\Users\\nes05\\OneDrive\\���� ȭ��\\mcdonald\\testAwsImgFile\\test.jpg");
		String key = "img/test.jpg";
		//�����ҽ� ����� ���ϸ�
		//String copyKey = "img/copy-test.jpg";
		main.upload(file, key);
		
	}
	public void upload(File file, String key) {
		awsS3.upload(file, key);
	}
	public void copy(String orgKey,String copyKey) {
		awsS3.copy(orgKey, copyKey);
	}
	public void delete(String key) {
		awsS3.delete(key);
	}

}
