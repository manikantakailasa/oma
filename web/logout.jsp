<%
    session.setAttribute("username","Guest");
    session.invalidate();
    RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
    rd.forward(request,response);
  %>   