import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class LogFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		 // 获取客户端ip地址
		String ipAddress=request.getRemoteAddr();
		//输出ip地址及当前时间
		System.out.println("IP"+ipAddress+", Time"+new Date().toString());
		// 传递请求道过滤器链
	      chain.doFilter(request,response);
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		// 获取初始化参数
	      String testParam = config.getInitParameter("test-param"); 
	 
	      //打印初始化参数
	      System.out.println("Test Param: " + testParam); 
		
	}

	
}
