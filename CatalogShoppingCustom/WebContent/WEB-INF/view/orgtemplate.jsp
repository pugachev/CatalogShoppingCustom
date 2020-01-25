<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<HTML>
	<head>
		<style>
			#tablewhole{
				background-color:#ffffe0;
				margin:0 auto;
			}
			#tablewhole2{
				background-color:#ffffe0;
				margin:0 auto;
			}
		</style>
	</head>
  <BODY>
  	<div id="tablewhole">
	    <TABLE width="800" border="0" id="tablewhole2">
	      <TR>
	        <TD width="800" align="center">
	          <tiles:insert attribute="header"/>
	        </TD>
	      </TR>
	      <TR height="20" widht="800" >
	       <TD>
	          <tiles:insert attribute="login"/>
	       </TD>
	      <TR>
	      <TR>
	        <TD valign="top" width="150" >
	          <tiles:insert attribute="menu"/>
	        </TD>
	        <TD align="left" width="400" valign="top" >
	          <tiles:insert attribute="main"/>
	        </TD>
	        <TD width="250" valign="top">
	          <tiles:insert attribute="search"/>
	        </TD>
	      </TR>
	    </TABLE>
    </div>
  </BODY>
</HTML>