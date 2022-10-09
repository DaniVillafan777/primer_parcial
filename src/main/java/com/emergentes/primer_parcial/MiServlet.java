package com.emergentes.primer_parcial;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MiServlet", urlPatterns = {"/MiServlet"})
public class MiServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String materia[]=request.getParameterValues("Materias");
        String nombre = request.getParameter("Nombre");
        String primer = request.getParameter("Primer_Parcial");
        String segundo = request.getParameter("Segundo_Parcial");
        String e_final = request.getParameter("Examen_final");
        int prim=Integer.parseInt(primer);
         int seg=Integer.parseInt(segundo);
          int ter=Integer.parseInt(e_final);
          int sum=prim+seg+ter;
        Metodos ex = new Metodos();
        ex.setMateria(materia);
        ex.setNombre(nombre);
        ex.setE_primer(primer);
        ex.setE_segundo(segundo);
        ex.setE_final(e_final);
        ex.setSuma(sum);
        request.setAttribute("examen", ex);
        request.getRequestDispatcher("salida.jsp").forward(request, response);
    }
}
