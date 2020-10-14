package com.edu.util;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class JsonUtil {
	/**
	 * 瀵硅薄瑁呮崲鎴恓son鏍煎紡鐨勫瓧绗︿覆
	 * @param obj
	 * @return
	 */
	public static String obj2json(Object obj) {
		try {
			ObjectMapper mapper = new ObjectMapper() ;
			return mapper.writeValueAsString(obj) ;
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
	}
	/**
	 * json鏍煎紡鐨勫瓧绗︿覆杞崲鎴愬璞�
	 * @param str
	 * @return
	 */
	public static Object string2Object(String str,Class clzz) {
		try {
			ObjectMapper mapper = new ObjectMapper() ;
			return mapper.readValue(str, clzz);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
	}
}
