package com.robocon321.demo.util;

public class ValidatePattern {
	public static final String FULL_NAME = "^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$";
	public static final String EMAIL = "\\S+@\\S+\\.\\S+";
	public static final String PHONE = "^[\\+]?[(]?[0-9]{3}[)]?[-\\s\\.]?[0-9]{3}[-\\s\\.]?[0-9]{4,6}$";
	public static final String SLUG = "^[a-z0-9]+(?:-[a-z0-9]+)*$";
}
