package Bitlab.Final.Project.Servlets;

import BItlab.FInal.Project.DB.DBManager;
import BItlab.FInal.Project.DB.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String re_password = request.getParameter("re_password");
        String full_name = request.getParameter("full_name");
        String role = request.getParameter("role");

        String redirect = "/register?password_error";

        if (password.equals(re_password)){
            redirect = "/register?email_error";

            User user = DBManager.getUser(email);

            if (user == null){
                User newUser = new User();
                newUser.setEmail(email);
                newUser.setPassword(password);
                newUser.setFull_name(full_name);
                newUser.setRole_id(role);

                if (DBManager.addUser(newUser)){
                    redirect = "/register?success";
                }
            }
        }

        response.sendRedirect(redirect) ;

    }
}
