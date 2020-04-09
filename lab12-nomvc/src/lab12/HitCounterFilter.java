package lab12;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class HitCounterFilter implements Filter {
	private int hitCount;
	public synchronized int getHitCount() {
		return ++hitCount;
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.getServletContext().setAttribute("hitCounter", getHitCount());
		chain.doFilter(request, response);
	}
}
