<%@page contentType="text/html; charset=utf-8" %>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<script>
$(function () {
	  /* $('input[name]').val(''); */
      $.ajax({
          async: true,
          type: "GET",
          url: "http://localhost:8080/CatalogShoppingCustom/target.json",
          dataType: "json",
          success: function (json) {
              createJSTree(json);
          },

          error: function (xhr, ajaxOptions, thrownError) {
              alert(xhr.status);
              alert(thrownError);
          }
      });
  });

  function createJSTree(jsondata) {
      $('#jstree').jstree({
          'core': {
              'data': jsondata
          }
      }).on("select_node.jstree", function(e, data){
    	   console.log("selected is : id =" + data.node.id +"  "+ data.node.text);
    	   $('#keval').val(data.node.text);
    	   $('#keysearchbtn').click();
      })
      .on("changed.jstree", function(e, data){
          console.log("changed is : id =" + data.node.id +"  "+ data.node.text);
      });
  }

</script>

<div id="jstree"></div>
<div id="keysearchbox" style="display:none;">
	<form name="KeyWordForm" method="get" action="/CatalogShoppingCustom/KeywordSearch.do">
	    <input type="text" name="keyword" value="" id="keval">
	    <input type="submit" value="検索" id="keysearchbtn">
	</form>
</div>