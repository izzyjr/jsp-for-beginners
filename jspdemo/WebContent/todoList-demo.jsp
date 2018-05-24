<%@ page import="java.util.*" %>

<html>


<body>

<!-- 1.) create HTML form -->

<form action="todo-demo.jsp">

	add new item <input type="text" name="theItem" />
	
	<input type="submit" value="Submit" />
	
</form>

<!-- 2.) add new item to "To Do" List -->

<%
	//get the TODO items from the session
	
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	//if the TODO items doesn't exist create a new one
	
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
		items.add(theItem);
	}
%>

<!-- 3.) display all "to do" items from session -->

<hr>
<b>To Do List items: </b> <br/>

<ol>
<%
	for (String temp : items) {
		out.println("<li> " + temp + "</li>");
	}
%>
</ol>
</body>

</html>