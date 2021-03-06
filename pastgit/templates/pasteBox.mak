<%page args="blob='', blobName='', fid=0"/>
  <div class="file">
    <div class="fileHeader">
<% namedClass = "named" %>
%if not blobName or blobName.startswith("pastefile"):
<% namedClass = "" %>
%endif
      <div class="languageBox ${namedClass}">
	<span class="languageSelect">
	Language:
	<select name="language">
	  %for suffix, name in c.languages:
	  <% selected = suffix == blobName.split('.')[-1] and 'selected' or '' %>
	  <option value="${suffix}" ${selected}>${name}</option>
	  %endfor
	</select>
	</span>
	<span class="languageAuto">language detected from file extension</span>
      </div>
      <div class="fileNameBox">

	<input class="fileName" name="fileName" value="${blobName}" type="text"/>
%if not (not blobName or blobName.startswith("pastefile")):
	<a class="fileName" href="#">${blobName}</a>
%else:
	<a class="fileName" href="#">name this file</a>
%endif
      </div>
    </div>
    <div class="fileContent">
      <textarea name="fileContent">${blob}</textarea>
    </div>
  </div>
