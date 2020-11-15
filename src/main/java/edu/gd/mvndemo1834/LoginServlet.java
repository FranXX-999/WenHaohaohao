package edu.gd.mvndemo1834;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
    @WebServlet(urlPatterns = "/login")
    public class LoginServlet extends HttpServlet {
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            //super.doPost(req, resp);
            HttpSession session=req.getSession();

            String name=req.getParameter("name");
            String pwd=req.getParameter("password");

            if(name!=null&&pwd!=null){
                session.setAttribute("key_name",name);
                session.setAttribute("key_pwd",pwd);
                //跳转到指定页面
                System.out.println(req.getContextPath());
                resp.sendRedirect("main.jsp");
            }
        }
    }
