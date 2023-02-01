<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Juego de azar</title>
</head>
<body>
     <h1>JUEGO DE AZAR</h1>
     <h1>Oswaldo Ruiz</h1>
	<%! int puntos = 200; %>
	<%
		int azar = (int) (Math.random() * 3);
                
                String imagenes[] = {"calavera.png" , "limon.png" , "gato3.PNG"};
                
		if (azar == 0) {
                out.println("Se ha perdido todo el dinero. Fin del juego.");
	        puntos = 0;
		} else if (azar == 1) {
                        out.println("Perdiste la mitad de tu dinero.");
			puntos /= 2;
		} else {
                        out.println("Tu dinero se duplicó. Sigue Jugando");
			puntos *= 2;
		}
	%>
        
        <img src="img/<%= imagenes[azar]%>" alt="Imagen"/>
        <br></br>
        <br> Puntos Disponibles:<%= puntos %> </br>
       
	 <form>
        <input type="button" value="JUGAR" onClick="location.reload()">
    </form>
</body>
</html>