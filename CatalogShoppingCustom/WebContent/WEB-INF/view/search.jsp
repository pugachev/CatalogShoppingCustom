<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<TABLE bgColor="0x7f55f1" >
 <TR valign="top">
  <TH>
   品物の検索はこちらからどうぞ
<!-- 	<form name="KeyWordForm" method="get" action="/CatalogShoppingCustom/KeywordSearch.do">
	    <input type="text" name="keyword" value="" id="keval">
	    <input type="submit" value="検索" id="keysearchbtn">
	</form> -->
   <html:form action="/KeywordSearch" method="get">
    <html:text property="keyword" />
    <html:submit value="検索" />
   </html:form>
  </TH>
 </TR>
</TABLE>