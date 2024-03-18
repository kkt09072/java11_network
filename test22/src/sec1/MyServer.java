package sec1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class MyServer {
	public static void main(String[] args) {
		BufferedReader in = null;	//읽기(입력 스트림)
		PrintWriter out = null;		//쓰기(출력 스트림)
		
		ServerSocket server = null;	//서버소켓
		Socket socket = null;	//소켓
		Scanner sc = new Scanner(System.in);	//키보드 입력
		
		try {
			server = new ServerSocket(6000);
			System.out.println("[Server 실행] : Client 연결 대기 중입니다.");
			socket = server.accept();	//클라이언트가 연결이 가능한 상태
			System.out.println("[Client 연결] ");
			in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
			out = new PrintWriter(socket.getOutputStream());
			
			while(true) {
				String inMsg = in.readLine();
				if("quit".equalsIgnoreCase(inMsg)) break;
				
				System.out.println("[From Client: ] "+inMsg);
				System.out.println("전송 >>>");
				
				String outMsg = sc.nextLine();
				out.println(outMsg);
				out.flush();
				if("quit".equalsIgnoreCase(outMsg)) break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {			
				sc.close();
				socket.close();
				server.close();
				System.out.println("연결 종료");
			} catch (IOException e) {
				System.out.println("소켓통신 종료 오류");
				e.printStackTrace();
			}
		}
	}
}
