package sec2;

import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Scanner;

public class SendThread extends Thread {
	Socket socket = null;
	String name;
	
	Scanner sc = new Scanner(System.in);
	
	public SendThread(Socket socket, String name) {
		this.socket = socket;
		this.name = name;
	}

	@Override
	public void run() {
		try {
			PrintStream out = new PrintStream(socket.getOutputStream());
			out.println(name);
			out.flush();
			while(true) {
				String outMsg = sc.nextLine();
				out.println(outMsg);
				out.flush();
				if("quit".equalsIgnoreCase(outMsg)) break;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
}
