<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<HTML>
	<head>
	 	<meta charset="utf-8">
	  	<meta name="viewport" content="width=device-width, initial-scale=1">
	  	<title>すごいアプリ</title>
		<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> --%>
 		<style type="text/css">
		  body {
		    margin: 0;
		  }

		  header {
		    /* background: pink; */
		  }

		.flex_test-box {
		  background-color: #eee;     /* 背景色指定 */
		  padding:  10px;             /* 余白指定 */
		  display: flex;
		  justify-content:center;
		}

		.flex_menu{
		  padding: 10px;
		  color:  #fff;               /* 文字色 */
		  width: 300px;
		  text-align: center;
		  order: 1;
		}
		.flex_main{
		  padding: 10px;
		  color:  #fff;               /* 文字色 */
		  /* width: 300px; */
		  text-align: center;
		  order: 2;
		  flex: 1;
		}
		.flex_search{
		  padding: 10px;
		  color:  #fff;               /* 文字色 */
		  width: 300px;
		  text-align: center;
		  order: 3;
		}
		</style>
	</head>
  	<body>
		  <header><tiles:insert attribute="header"/></header>
		  <div class="flex_test-box">
		    <div class="flex_menu">
				<tiles:insert attribute="menu"/>
		    </div>
		    <div class="flex_main">
				<tiles:insert attribute="main"/>
		    </div>
		    <div class="flex_search">
				<tiles:insert attribute="search"/>
		    </div>
		  </div>
  </body>
</HTML>