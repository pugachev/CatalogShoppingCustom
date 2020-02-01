<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
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

    	#customheader {
		  max-width: 50%;
		  margin: 5 auto;
		}

		.breadcrumb {
			text-align: left;
		}

		.breadcrumb li{
		  display:inline;/*横に並ぶように*/
		  list-style: none;
		  font-weight: bold;/*太字*/
		}

		.breadcrumb li:after {/* >を表示*/
		  content: '>';
		  padding: 0 3px;
		  color: #555;
		}

		.breadcrumb li:last-child:after {
		  content: '';
		}

		.breadcrumb li a {
		  text-decoration: none;
		  color: #52b5ee;/*色*/
		}

		.breadcrumb li a:hover {
		  text-decoration: underline;
		}



		.flex_test-box {
		  /* background-color: #eee;*/     /* 背景色指定 */
		  padding:  10px;             /* 余白指定 */
		  display: flex;
		  justify-content:center;
		}

		.flex_menu{
		  padding: 10px;
		  color:  #000;               /* 文字色 */
		  width: 250px;
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

		@media screen and (max-width:780px) {
		  /*　画面サイズが480pxからはここを読み込む　*/
		  .flex_test-box {
		    background-color: #eee;     /* 背景色指定 */
		    padding:  10px;             /* 余白指定 */
		    display: flex;
		    flex-direction:column;        /* 縦の位置指定 */
		    margin: auto;
		    flex-wrap: wrap;
		    align-content: center;
		  }

		  .flex_test-item {
		    /* padding: 35px; */
		    color:  #fff;               /* 文字色 */
		    border-radius:  5px;        /* 角丸指定 */
		    width: 50%;
		    text-align: center;
		  }
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