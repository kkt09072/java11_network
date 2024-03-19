package sec1;

import java.net.InetAddress;
import java.net.UnknownHostException;
//InetAddress 클래스 : IP주소를 다루기 위한 클래스
/*

InetAddress 클래스의 주요 메서드들

① boolean equals(InetAddress other)
현재 객체가 other 객체와 같은 주소를 가지면 true 를 반환하고, 같은 주소가 아니면 false 를 반환하는 메서드입니다.

② byte[] getAddress( )
주소를 나타내는 4개의 요소를 가진 바이트 배열을 반환하는 메서드입니다.

③ String getHostAddress( )
주소 정보를 나타내는 문자열을 반환하는 메서드입니다.

④ String getHostName( )
컴퓨터 이름을 나타내는 문자열을 반환하는 메서드입니다.

⑤ InetAddress getLocalHost( ) throws UnknownHostException
현재 컴퓨터를 나타내는 InetAddress 객체를 반환하는 메서드입니다.

⑥ InetAddress getByName(String  hostName) throws UnknownHostException
hostName으로 지정된 컴퓨터를 나타내는 InetAddress 객체를 반환하는 메서드입니다.

⑦ InetAddress[] getAllByName(String  hostName) throws UnknownHostException
hostName으로 지정된 모든 컴퓨터(하나의 도메인 이름으로 여러 대의 컴퓨터를 사용하는 경우)를 나타내는 InetAddress 객체들의 배열을 반환하는 메서드입니다.
 
*/
public class InetAddressExam {
	public static void main(String[] args) {
		InetAddress test = null;
		try {
			test = InetAddress.getLocalHost();	//현재 로컬 컴퓨터
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		System.out.println("현재 로컬 컴퓨터의 네트워크 정보");
        System.out.println(test.getHostName() + " " + test.getHostAddress());
        InetAddress google_address = null;
        try {
			google_address = InetAddress.getByName("www.google.com");	//도메인 네임으로 해당 서버의 네트워크 정보
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
        System.out.println("\nGoogle 서버의 네트워크 정보");
		System.out.println(google_address);
	}
}
