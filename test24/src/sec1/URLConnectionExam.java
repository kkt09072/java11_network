package sec1;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Date;
//URLConnection 클래스 : URL 주소를 이용해 커넥션을 다루는 추상 클래스
/*
주요 메소드 설명

① int getContentLength( )
해당 문서의 길이를 바이트 수로 반환하는 메서드입니다.

② String getContentType( )
해당 문서의 타입을 반환하는 메서드입니다.

③ long getDate( )
해당 문서의 생성 날짜를 반환하는 메서드입니다.

④ long getExpiration( )
해당 문서의 파기 날짜를 반환하는 메서드입니다.

⑤ long getLastModified( )
해당 문서의 마지막 수정 날짜를 반환하는 메서드입니다.

⑥ InputStream getInputStream( ) throws IOException
원격지로부터 정보를 읽어 들이기 위하여 InputStream 객체를 생성하여 반환하는 메서드입니다.
 */
public class URLConnectionExam {
	public static void main(String[] args) {
		try {
			URL kbs = new URL("https://program.kbs.co.kr/2tv/drama/korea_khitan/pc/index.html");
			try {
				URLConnection kbsCon = kbs.openConnection();
				System.out.println("문서의 타입 : "+kbsCon.getContentType());
				System.out.println("문서의 마지막 수정 일자 : "+new Date(kbsCon.getLastModified()));
				System.out.println("문서의 크기 : "+kbsCon.getContentLength()+"Bytes");
				
				int size = kbsCon.getContentLength();
				if(size > 0) {
					System.out.println("*** 문서의 내용은 다음과 같습니다. ***");
					InputStream input = kbsCon.getInputStream();
					int i = size;
					int c;
					while(((c = input.read()) != -1) && (--i > 0)) {
						System.out.print((char) c);
					}
					input.close();
				} else {
					System.out.println("문서의 내용이 없습니다.");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}
}
