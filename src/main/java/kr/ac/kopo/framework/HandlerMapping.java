package kr.ac.kopo.framework;

import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {
	/*
	 	switch(uri) {
			case "/board/list.do" :
				control = new BoardListController();
				//callPage = control.handleRequest(request, response);
				break;
			case "/board/writeForm.do" :
				control = new BoardWriteFormController();
				//callPage = control.handleRequest(request, response);
				break;
		}
	 */
	private Map<String, Controller> mappings;
	
	public HandlerMapping(String propLoc) {
		mappings = new HashMap<>();
		Properties prop = new Properties();
		try(
			InputStream is = new FileInputStream(propLoc);
		) {
			prop.load(is);
			Set<Object> keys = prop.keySet();
			for(Object key : keys) {
				String className = prop.getProperty(key.toString());
				
				Class<?> clz = Class.forName(className);
				Constructor<?> constructor = clz.getConstructor();
				Controller control = (Controller)constructor.newInstance();
				
				mappings.put(key.toString(), control);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		//mappings.put("/board/list.do", new BoardListController());
		//mappings.put("/board/writeForm.do", new BoardWriteFormController());
	}
	
	public Controller getController(String uri) {
		return mappings.get(uri);
	}
}
/*
	list = new BoardListController();
	<bean id="list" class="kr.co.mlec.controller.BoardListController">
	</bean>
*/
