<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>PRIMER PARCIAL TEM-742</p>
        <P> NOMBRE: DANIEL JHOVANY VILLAFAN SACA</P>
        <p> CARNET: 12455218</p>
        <h1> Registro de calificaciones</h1>
       
        <form action="MiServlet" method="POST">
            <table border="0">
               
                <tbody>
                    <tr>
                        <td>Materia</td>
                        <td><select name="Materias" >
                                <option>Programacion I</option>
                                <option>Contaduria </option>
                                <option>Emergentes II</option>
                                <option>Redes I</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Nombre del estudiante:</td>
                        <td><input type="text" name="Nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Primer parcial (sobre 30 pts):</td>
                        <td><input type="text" name="Primer_Parcial" value="" /></td>
                    </tr>
                    <tr>
                        <td>Segundo parcial (sobre 30 pts):</td>
                        <td><input type="text" name="Segundo_Parcial" value="" /></td>
                    </tr>
                    <tr>
                        <td>Examen final(Sobre 40 pts):</td>
                        <td><input type="text" name="Examen_final" value="" /> </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Enviar" /></td>
                        
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
