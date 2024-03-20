package sec3;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class UDPClient {
	private static String rData;
	private static BufferedReader file;
	private static int SERVER_PORT = 8000;
	public static void main(String[] args) {
		DatagramSocket socket = null;
		DatagramPacket packet = null;
		
		String rip = "210.123.19.1";
		try {
			//송신(발신)
			InetAddress ip = InetAddress.getByName(rip);
			socket = new DatagramSocket(SERVER_PORT);
			System.out.print("[Message] : ");
			file = new BufferedReader(new InputStreamReader(System.in));
			rData = file.readLine();
			byte[] buffer = rData.getBytes();
			packet = new DatagramPacket(buffer, buffer.length, ip, SERVER_PORT);
			socket.send(packet);
			
			//수신
			buffer = new byte[512];
			packet = new DatagramPacket(buffer, buffer.length);
			socket.receive(packet);
			String pData = new String(packet.getData());
			System.out.println("[Server IP Address] : "+packet.getAddress());
			System.out.println("[Server PORT] : "+packet.getPort());
			System.out.println("수신된 데이터 : "+pData);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
