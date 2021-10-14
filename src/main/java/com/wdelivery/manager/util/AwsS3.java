package com.wdelivery.manager.util;

import java.io.File;
import java.io.InputStream;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class AwsS3 {
	private AmazonS3 s3Client;
	final private String accessKey = "AKIA4KK7JEH7F3XQWFRW";
	final private String secretKey = "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";
	private Regions clientRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "kgitmacbucket";
	private AwsS3() {
		createS3Client();
	}
	
	static private AwsS3 instance = null;
	public static AwsS3 getInstance() {
		if(instance==null) 
			return new AwsS3();
		else
			return instance;
	}
	
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		this.s3Client = 
				AmazonS3ClientBuilder.standard().withCredentials(
						new AWSStaticCredentialsProvider(credentials)).withRegion(clientRegion).build();
	}
	
	public void upload(File file,String key) {
		uploadToS3(new PutObjectRequest(this.bucket,key,file));
	}
	
	//MultipartFile�� ����� ���
	public void upload(InputStream is, String key, String contentType,long contentLength) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);
		
		uploadToS3(new PutObjectRequest(this.bucket,key,is,objectMetadata));
	}
	
	public void copy(String orgKey,String copyKey) {
		try {
			// copy ��ü����
			CopyObjectRequest copyObjectRequest = new CopyObjectRequest(this.bucket,orgKey,this.bucket,copyKey);
			//Copy
			this.s3Client.copyObject(copyObjectRequest);
			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey,copyKey));
		}catch (AmazonServiceException ase) {
			ase.printStackTrace();			
		}catch (SdkClientException sce) {
			sce.printStackTrace();
		}
	}
	
	public void delete(String key) {
		try {
			// delete ��ü����
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(this.bucket,key);
			//delete
			this.s3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format( "[%s] deletion comlete", key));
		}catch (AmazonServiceException ase) {
			ase.printStackTrace();			
		}catch (SdkClientException sce) {
			sce.printStackTrace();
		}
	}
	
	//PutObjectRequest�� Aws S3 ��Ŷ�� ���ε��� ��ü ��Ÿ �����Ϳ� ���� �����ͷ� �̷���� �ִ�
	private void uploadToS3(PutObjectRequest putObjectRequest) {
		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload compelete", putObjectRequest.getKey()));
		}catch(AmazonServiceException ase) {
			ase.printStackTrace();
		}catch(SdkClientException sce) {
			sce.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
