package sec1;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
//URLEncoder의 이유 : 웹 환경에서 사용하는 한글을 포함한 유니코드 표현 방식은 
//데스크톱에서 사용하는 유니코드 방식과는 다르므로 반드시 웹 환경에서 필요한 코드로 변경해야한다. 
//URLEncoder : 입력된 문자열을 웹에서 사용하는 형태의 코드값으로 변경
//URLDecoder : 웹에서 사용하는 형태의 코드값을 다른 데스크톱 프로그램에서 인식가능한 MS949로 변경
public class URLEncoderExam {
	public URLEncoderExam() {
		String msg = "abc가나다def1234學校勉強しないでください";
		String enc_data;
		try {
			enc_data = URLEncoder.encode(msg, "UTF-8");
			System.out.println("인코딩 : "+enc_data);
			
			String dec_data = URLDecoder.decode(enc_data, "UTF-8");
			System.out.println("디코딩 : "+dec_data);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) { new URLEncoderExam(); }
}
