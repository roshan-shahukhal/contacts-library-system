package com.shahukhalroshan.controller;

import com.shahukhalroshan.model.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by i20082 on 2/7/2017.
 */
@WebServlet(name = "PersonServlet", urlPatterns = {"/list"})
public class PersonServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    private List<Person> persons;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String mobileNumber = request.getParameter("mobileNumber");
        String address = request.getParameter("address");
        String email = request.getParameter("email");

        Person person = new Person(firstname, lastname, mobileNumber, address, email);
        addPerson(person);

        response.sendRedirect("index.jsp");
//        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        if(request.getParameter("p").equals("edit")) {
            System.out.println("ok");
        } else if (request.getParameter("p").equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            deletePerson(id - 1);
//            request.getRequestDispatcher("index.jsp").include(request, response);
            response.sendRedirect("index.jsp");
        } else if (request.getParameter("p").equals("listAll")) {
            List<Person> persons = getPersons();
            request.setAttribute("persons", persons);
//            request.getRequestDispatcher("index.jsp").include(request, response);
            response.sendRedirect("index.jsp");
        }
    }

    private List<Person> getPersons() {
        return (List<Person>) getServletContext().getAttribute("persons");
    }

    private void addPerson(Person person) {
        if (getServletContext().getAttribute("persons") == null) {
            persons = new ArrayList<>();
        } else {
            persons = (List<Person>) getServletContext().getAttribute("persons");
        }

        persons.add(person);
        getServletContext().setAttribute("persons", persons);
    }
    
    private void deletePerson(int id) {
        List<Person> persons = (List<Person>) getServletContext().getAttribute("persons");
        persons.remove(id);
        getServletContext().setAttribute("persons", persons);
    }
}
