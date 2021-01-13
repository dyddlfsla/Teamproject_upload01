package Premium.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;
// board.util.A01_DownloadViewer
public class A01_DownloadViewer extends AbstractView {

	// 다운로드할 경로 정보
	@Value("${upload}")
	private String upload;
	
	@Override
	protected void renderMergedOutputModel(
			Map<String, Object> model, 
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {
		// TODO Auto-generated method stub
		// 1. controller에서 넘어온 model 정보 안에 있는 파일 정보 가져오기.
		String filename = (String)model.get("downloadFile");
		//	1) 파일 객체 생성하여, 전달 준비..
		File file = new File(upload+filename);
		System.out.println("## file Viewer 오신 것을 환영합니다 ##");
		System.out.println("전체 파일명:"+file.getPath());
		System.out.println("파일명:"+file.getName());
		System.out.println("파일길이:"+(int)file.length());
		//2. response 객체를 통한 client에 전달..
		
		// 		1) contentType 설정..
		response.setContentType("application/download; charset=utf-8"); 
		 //		2) 파일의 길이 설정
		response.setContentLength((int)file.length());
		 //		3) 한글 파일을 위한 encoding 처리..
		filename = URLEncoder.encode(filename,"utf-8")
				.replaceAll("\\+","");
		 //		4) header 정보
		response.setHeader("Content-Disposition", 
				"attachment;filename=\""+filename+"\" ");
		response.setHeader("Content-Transfer-Encoding","binary");
		 //		5) Inputream ==> OutputStream 전환:파일 카피처리.
		FileInputStream fis = new FileInputStream(file);
		OutputStream out = response.getOutputStream();
		FileCopyUtils.copy(fis, out);
//				6) stream 자원 해제 flush..
		out.flush();
		 
		
		
	}
	
}


/*
# 웹서버에서 파일을 다운로드 하는 viewer 만들기
1. View를 지정하는 AbstractView 상속
	1) renderMergedOutputModel 메소드 제정의
		매개변수 Map<String, Object> model (모델데이터) -파일명
			HttpServletRequest request,
			HttpServletResponse response,
		response 객체를 통해서 client에 파일을 전송한다.
2. response 객체를 통한 파일 전송 프로세스
	1) File 객체로 서버에 있는 특정 위치에 있는 파일 객체를 지정
		- 경로 : resource\properties\info에 설정된 upload 키
		- 파일 : model로 전달되어 온 값으로 설정..
	2) response 로 client에 파일전송을 위한 설정
	 	- 파일 길이
	 	- setContentType 설정 : 
	 		application/download;charset-utf8
	 	- setContentLength로 파일의 길이 설정.
	 	- 한글 파일명을 위한 Encoding 처리..
	 	- header 부분 설정..
	 		Content-Disposition으로 attachment로 파일 설정.
	 		Content-Transfer-Encoding설정을 binary로 설정.
	 	- network로 전송하기 위한 File을 Stream 객체로 변환 처리.
	 		InputStream(읽어오는 객체) ==>OutputStream(보내는 객체)
	 		FileInputStream
	 		FileCopyUtils.copy(inputstream,outputstream)
	 		stream 자원의 해제 flush() 메소드를 통해서 자원 해제
		

 */
	
