package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class NetworkExam3 {
	public static void main(String[] args) {
		try {
			//본인 컴퓨터의 ip주소 컴퓨터 이름 출력
			InetAddress local = InetAddress.getLocalHost();	//현재 컴퓨터
			System.out.println("본인 컴퓨터 ip 주소 : "+local.getHostAddress());
			System.out.println("네트워크상의 컴퓨터 이름 : "+local.getHostName());
			//www.google.com의 연결 IP 주소를 출력
			InetAddress[] iArr = InetAddress.getAllByName("www.goole.com");
			System.out.println("www.goole.com");
			for(InetAddress addr : iArr) {
				System.out.println(addr.getHostAddress());
			}
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}
}
