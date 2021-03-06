<%@page import="AlquilerLibroModelo.Cliente" %>
<%@page import="AlquilerLibroModelo.Alquiler" %>
<jsp:useBean id="clienteDB" scope="session" class="AlquilerLibroDB.ClienteDB" />
<jsp:useBean id="alquilerDB" scope="session" class="AlquilerLibroDB.AlquilerDB" />

<%-- 
    Document   : consultarAlquiler
    Created on : May 21, 2016, 3:32:41 PM
    Author     : Marvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getParameter("cmd") == null) {
        //clienteDB.obtenerClientes();
        alquilerDB.obtenerAlquileres();
    }else 
    {
        out.print("<strong>Error al Recuperar los datos de la base</strong>");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Alquiler</title>
    </head>
    
    <body background="imagen8.jpg" align="center">
        <h1 style="color: skyblue">TABLA DE ALQUILERES EN EL SISTEMA</h1>
            <table border="1" align="center" >
                <thead>
                    <tr>
                        <th style="color: red">Codigo Alquiler</th>
                        <th style="color: red">Numero Membresia</th>
                        <th style="color: red" style="font-size:20px">Fecha Alquiler</th>
                        <th style="color: red" style="font-size:20px">Fecha Devolucion</th>
                        <th style="color: red" style="font-size:20px">Valor Alquiler</th>
                        <th style="color: red" style="font-size:20px">Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Alquiler alquiler : alquilerDB.getAlquileres()) {
                    %>
                    <tr>
                        <td style="color: white"><%=alquiler.codigo%></td>
                        <td style="color: white"><%=alquiler.numeroMembresia%></td>
                        <td style="color: white"><%=alquiler.fechaAlquiler%></td>
                        <td style="color: white"><%=alquiler.fechaDevolucion%></td>
                        <td style="color: white"><%=alquiler.valorAlquiler%></td>
                        <td style="color: white"><%=alquiler.cantidad%></td>
                        
                    </tr>
                    <%
                        }
                    %>
                </tbody>
                <tr>
                                        <td><input type="button" value="back" onClick="location.href = 'gestionarAlq.jsp'" style='width:150px; height:30px'/></td>
                                    </tr>
            </table>
                
    </body>
</html>
