<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ page import = "java.util.*" %>
<%@ page import = "model.Product" %>

<%!
String productName="";
String flagName="'"+" "+"'";
%>
<%

 	productName="";
	flagName="'"+" "+"'";
	System.out.println("offset=" + (String)request.getAttribute("offset"));
	HttpSession rcvsession = request.getSession(false);
	if(rcvsession!=null){
		String flg = (String)rcvsession.getAttribute("from");
		List<Product> mList = (java.util.List)session.getAttribute("products");
		System.out.println("size="+mList.size());
		if(flg!=null && flg.equals("keywordserach")){
			String[] tmpArray = mList.get(0).getName().split("　");
			System.out.println(tmpArray[0]);
			productName = tmpArray[0];
			flagName = "'"+tmpArray[0]+"'";
			rcvsession.setAttribute("from", "");
		}else{
			rcvsession.setAttribute("from", "");
		}
	}else{

	}


%>

<script>

	var flg = <%= flagName %>;
	$(function () {
		if(flg!=' ' && flg!=''){
			$('body > div > div.flex_search > table > tbody > tr > th > form > input[type=text]:nth-child(1)').val(flg);
		}
		else{
			$('body > div > div.flex_search > table > tbody > tr > th > form > input[type=text]:nth-child(1)').val('');
		}
	});



</script>
<ul class="breadcrumb">
  <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
	  <!-- <a href="http://localhost:8080/CatalogShoppingCustom/index.html"><span itemprop="title">トップ</span></a> -->
	  <html:link action="/Catalog" ><span itemprop="title">トップ</span></html:link>
  </li>
<% if(productName!=null && !productName.equals("")) {%>
  <li>
   <span itemprop="title" style="width:100px;color:#000;"><%= productName %></span>
  </li>
<% } %>
</ul>
<div>
   詳細を見たい商品の商品番号をクリックしてください。

   <TABLE id="main_table" width="100%;">
      <TR bgColor=#bb5a5a>
        <TH><FONT color=#ffffff>番号</FONT></TH>
        <TH><FONT color=#ffffff>商品名</FONT></TH>
        <TH><FONT color=#ffffff>価格</FONT></TH>
      </TR>
        <logic:iterate id="product" name="products" type="model.Product" offset="<%=(String)request.getAttribute(\"offset\") %>" length="10" indexId="count" >
          <!-- カタログらしく、色を変える -->
          <TR bgColor=#fddddd >
          <TD align="center" width="40" ><html:link action="/CatalogDetail" paramId="id" paramName="product" paramProperty="id" ><bean:write name="product" property="id" /></html:link></TD>
          <TD width="290" ><bean:write name="product" property="name" /></TD>
          <TD align="right" width="70" ><bean:write name="product" property="price" />円</TD>
          </TR>
        </logic:iterate>
      <TR >
        <TD colspan="3" >
          <html:form action="/CatalogPage" >
            <logic:greaterThan name="offset" value="0">
	              <html:submit property="action" >
	              <bean:message key="back" />
	              </html:submit>
            </logic:greaterThan>
            <logic:lessThan name="offset" value="<%=Integer.toString(((java.util.List)session.getAttribute(\"products\")).size() -10) %>" >
	            <html:submit property="action" >
	              <bean:message key="next" />
	            </html:submit>
            </logic:lessThan>
            <html:hidden property="offset" value="<%=(String)request.getAttribute(\"offset\") %>" />
          </html:form>
        </TD>
    </TR>
   </TABLE>
</div>
