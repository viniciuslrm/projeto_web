<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Login</title>
</head>
<%
	String erro = null;

if("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null){
	
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");
	
	if ("admin".equalsIgnoreCase(usuario) && "admin".equalsIgnoreCase(senha)){
		
		out.print("bem vindo, " + usuario);
		return;
		
	} else {
		erro = "Usuario ou Senha invalidos. Tente Novammente. ";
	}
	
}

%>
<body>

	<h2>Login</h2>

	<%
		if (erro != null) {
	%>
	<span style="color: red;">Usuario ou senha invalidos. Tente Novamente</span>
	<%
		}
	%>

	<form method="post">
		Usuario:<input type="text" name="usuario"> <br> 
		Senha:<input
			type="password" name="senha"> <br>
		<button type="submit" name="submit">ENTRAR</button>
		<button type="reset">RESET</button>

	</form>

</body>
</html>