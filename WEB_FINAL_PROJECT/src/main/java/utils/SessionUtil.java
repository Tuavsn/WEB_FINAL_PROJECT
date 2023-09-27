package utils;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil //su ly di nguoi dung dang nhap (luu thong tin nguoi dung)
{
	private static SessionUtil sessionUtil = null;
	
	public static SessionUtil getInstance() //su ly khoi tao nhieu lan
	{
		if(sessionUtil == null) {
			sessionUtil	= new SessionUtil();
		}
		return sessionUtil;
		
	}
	
	public void putValue(HttpServletRequest request,String key,Object value) {
		request.getSession().setAttribute(key, value); // put gia tri can luu
		
	}
	
	public Object getValue(HttpServletRequest request,String key) {
		return request.getSession().getAttribute(key);
	}
	
	public void removeValue(HttpServletRequest request,String key) {
		request.getSession().removeAttribute(key); 
	}
}
