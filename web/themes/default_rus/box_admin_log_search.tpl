<div align="center">
	<table width="80%" cellpadding="0" class="listtable" cellspacing="0">
		<tr class="sea_open">
			<td width="2%" height="16" class="listtable_top" colspan="3" style="text-align: center;"><b>Расширенный поиск<b> (Click)</td>
	  	</tr>
	  	<tr>
	  		<td>
	  		<div class="panel">
	  			<table width="100%" cellpadding="0" class="listtable" cellspacing="0">
			    <tr>
					<td class="listtable_1" width="8%" align="center"><input id="admin_" name="search_type" type="radio" value="radiobutton"></td>
			        <td class="listtable_1" width="26%">Администратор</td>
			        <td class="listtable_1" width="66%">
						<select class="select" id="admin" onmouseup="$('admin_').checked = true" style="width: 100%;">
							{foreach from="$admin_list" item="admin}
								<option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
							{/foreach}
						</select>    
					</td>
				</tr>
				 <tr>
					<td class="listtable_1" align="center"><input id="message_" name="search_type" type="radio" value="radiobutton"></td>
			        <td class="listtable_1">Сообщение</td>
			        <td class="listtable_1"><input class="textbox" type="text" id="message" value="" onmouseup="$('message_').checked = true" style="width:  93%;"></td>
				</tr>
			    <tr>
			        <td align="center" class="listtable_1" ><input id="date_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >Дата</td>
				    <td class="listtable_1" >
			        	<input class="textbox" type="text" id="day" value="ДД" onmouseup="$('date_').checked = true" maxlength="2" style="width: 18px;"> .
						<input class="textbox" type="text" id="month" value="ММ" onmouseup="$('date_').checked = true" maxlength="2" style="width: 18px;"> .
						<input class="textbox" type="text" id="year" value="ГГГГ" onmouseup="$('date_').checked = true" maxlength="4" style="width: 30px;">
						&nbsp;<input class="textbox" type="text" id="fhour" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;"> :
						<input class="textbox" type="text" id="fminute" value="00" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;">
						-&nbsp;<input class="textbox" type="text" id="thour" value="23" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;"> :
						<input class="textbox" type="text" id="tminute" value="59" onmouseup="$('date_').checked = true" maxlength="2" style="width: 16px;">
			        </td>
			    </tr>
			    <tr>
			        <td align="center" class="listtable_1" ><input id="type_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >Тип</td>
			        <td class="listtable_1" >
						<select class="select" id="type" onmouseup="$('type_').checked = true" style="width: 100%;">
							<option label="Message" value="m">Сообщение</option>
							<option label="Warning" value="w">Предупреждение</option>
							<option label="Error" value="e">Ошибка</option>
						</select>
					</td>
			    </tr>
			    <tr>
			        <td colspan="4">{sb_button text="Искать" onclick="search_log();" class="ok" id="searchbtn" submit=false}</td>
			    </tr>
			   </table>
			   </div>
		  </td>
		</tr>
	</table>
</div>
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>