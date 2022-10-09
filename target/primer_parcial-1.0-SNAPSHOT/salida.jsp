<%@page import="com.emergentes.primer_parcial.Metodos"%>
<%
  Metodos met = (Metodos)request.getAttribute("examen");
  String materias[]= met.getMateria();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Recibidos</h1>
        <p> Nombre:  <%=met.getNombre() %> </p>
        <%
        if(materias!= null){
        for(String mat : materias){
        
        %>
        <p> Materia:  <%= mat %></p>
             
        <%
            
            }
            }
            %>
            <p> Primer Parcial:                <%=met.getE_primer()  %> </p>
             <p> Segundo Parcial:          <%=met.getE_segundo()  %> </p>
              <p>Examen final: <%=met.getE_final()  %> </p>
              <p>Total: <%=met.getSuma() %></p>
              <%
              if(met.getSuma()>50){
                 %>  
              
              <p> Resultado:  Aprobado</p>
              <%  }else{
%>
<p>Resultado: Reprovado</p>
<% } %>
                  </body>
</html>
