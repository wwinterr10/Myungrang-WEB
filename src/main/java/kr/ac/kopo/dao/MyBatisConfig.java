package kr.ac.kopo.dao;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {

	private SqlSession session;
	
	public MyBatisConfig() {
		String resource = "mybatis-config.xml";
		try {
			 InputStream is = Resources.getResourceAsStream(resource);
			 SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
			 session = sqlSessionFactory.openSession();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public SqlSession getInstance() {
		return session;
	}
}
