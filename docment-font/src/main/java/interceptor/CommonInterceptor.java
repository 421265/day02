package interceptor;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class CommonInterceptor implements HandlerInterceptor {
   @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       String url=request.getRequestURI();
       String contextPath = request.getContextPath();
       System.out.println("\r"+url);
       //不拦截
       String [] str={"/","/login","/user/login","/goods","/sp/getsplist","/sp/getsp"};
       for(int i=0;i<str.length;i++){
           if(str[i].equals(url)){
               return true;
           }
       }

       Object s=request.getSession().getAttribute("user");
       if(s!=null){
           return true;
       }


        response.getWriter().print("<script>location.href='"+ contextPath +"/login';</script>");
        return false;
    }
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {
        int i=1;
    }
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {
       int i=2;
    }

}

