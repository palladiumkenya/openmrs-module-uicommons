<%
	config.require("label")
	config.require("formFieldName")

	def rows = config.rows ?: 5;
	def cols = config.cols ?: 60;
%>

<p>
    <label for="${ config.id }-field">
        ${ config.label } <% if (config.classes && config.classes.contains("required")) { %><span>(${ ui.message("emr.formValidation.messages.requiredField.label") })</span><% } %>
    </label>
    <textarea id="${ config.id }-field"
              class="field-value <% if (config.classes) { %>${ config.classes.join(' ') }<% } %>"
              rows="${ rows }" cols="${ cols }" name="${ config.formFieldName }">${ config.initialValue ?: "" }</textarea>
    ${ ui.includeFragment("uicommons", "fieldErrors", [ fieldName: config.formFieldName ]) }
</p>

