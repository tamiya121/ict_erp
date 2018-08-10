package config;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropTest {
	
	public static void load() {
		String path = "/config/db.properties";
		InputStream is = 
				PropTest.class.getResourceAsStream(path);
		System.out.println(is);
		Properties prop = new Properties();
		try {
			prop.load(is);
			is.close();
			System.out.println(prop.getProperty("url"));
			System.out.println(prop.getProperty("user"));
			System.out.println(prop.getProperty("pwd"));
			System.out.println(prop.getProperty("driver"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		load();
	}
}
