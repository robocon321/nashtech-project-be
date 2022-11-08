package com.robocon321.demo.util;

import java.security.SecureRandom;

public class RandomString {
	public static String randomPassword(int len) {
		SecureRandom rnd = new SecureRandom();
		String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		StringBuilder sb = new StringBuilder(len);
		for (int i = 0; i < len; i++)
			sb.append(AB.charAt(rnd.nextInt(AB.length())));
		return sb.toString();
	}
	
	public static String randomPhone() {
		SecureRandom rnd = new SecureRandom();
		String AB = "0123456789";
		int len = 11;
		StringBuilder sb = new StringBuilder(len);
		for (int i = 0; i < len; i++)
			sb.append(AB.charAt(rnd.nextInt(AB.length())));
		return sb.toString();
	}
}
