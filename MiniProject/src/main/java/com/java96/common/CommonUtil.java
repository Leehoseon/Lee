package com.java96.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public class CommonUtil {

	/**
	 * Context 경로를 돌려준다.
	 * 
	 * @param request
	 * @return
	 */
	public static String getContextPath(HttpServletRequest request) {

		return request.getRequestURL().toString().replace(request.getRequestURI(), "");
	}

	/**
	 * 암호화 관련해서 http://d2.naver.com/helloworld/318732 읽어보기
	 */
	
	/**
	 * SHA512 암호화
	 * 
	 * @param input
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public String encryptToSHA512(String input) {

		String output = "";
		StringBuffer sb = new StringBuffer();

		try {
			MessageDigest md = MessageDigest.getInstance("SHA-512");
			md.update(input.getBytes());
			byte[] msgb = md.digest();
			for (int i = 0; i < msgb.length; i++) {
				byte temp = msgb[i];
				String str = Integer.toHexString(temp & 0xFF);
				while (str.length() < 2) {
					str = "0" + str;
				}
				str = str.substring(str.length() - 2);
				sb.append(str);
			}
			output = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			output = null;
		}

		return output;

	}

	/**
	 * SHA256 암호화
	 * 
	 * @param input
	 * @return
	 */
	public String encryptToSHA256(String input) {

		String output = "";
		StringBuffer sb = new StringBuffer();

		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(input.getBytes());
			byte byteData[] = md.digest();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			output = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			output = null;
		}
		return output;

	}

	/**
	 * MD5 암호화
	 * @param input
	 * @return
	 */
	public String encryptToMD5(String input) {

		String output = "";
		StringBuffer sb = new StringBuffer();

		try {

			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(input.getBytes());
			byte byteData[] = md.digest();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			output = sb.toString();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			output = null;
		}
		return output;
	}
}
