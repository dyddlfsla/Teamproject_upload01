package Premium.util;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
// springweb.z02_util.TextWebSocketHandler
@Controller("chattingHandler")
public class ChattingHandler 
	extends TextWebSocketHandler{
	
	private Map<String, WebSocketSession> 
		users = new ConcurrentHashMap<String,
			WebSocketSession>(); 
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// TODO Auto-generated method stub
		super.afterConnectionEstablished(session);
		System.out.println("# "+
				session.getId()+"접속 시작!! #");
		// 해당 client의 접속 고유 key, session 정보.. 
		users.put(session.getId(), session);
		System.out.println("현재 접속한 client 수:"
				+users.size());
		
		
	}
	@Override
	protected void handleTextMessage(WebSocketSession session, 
									TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		super.handleTextMessage(session, message);
		System.out.println("# 메시지 전송!! #");
		System.out.println("client로 부터 온 메시지 내용:"
						+message.getPayload());
		// 접속한 모든 client 소켓 세션에 메시지 전달.
		for(WebSocketSession ws:users.values()) {
			ws.sendMessage(message);
		}
		
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// TODO Auto-generated method stub
		//super.afterConnectionClosed(session, status);
		System.out.println("# 접속 종료!! #");
		// 기존에 접속자 제외 처리.
		users.remove(session.getId());
	}


	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		// TODO Auto-generated method stub
		super.handleTransportError(session, exception);
	}
	
	
}
/*
# socket 통신 처리 하는 handler 클래스 
1. TextWebSocketHandler를 상속
 */