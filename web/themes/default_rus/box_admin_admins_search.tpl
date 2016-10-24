<div align="center">
	<table width="80%" cellpadding="0" class="listtable" cellspacing="0">
		<tr class="sea_open">
			<td width="2%" height="16" class="listtable_top" colspan="3" style="text-align: center;"><b>Расширенный поиск<b></td>
	  	</tr>
	  	<tr>
	  		<td>
	  		<div class="panel">
	  			<table width="100%" cellpadding="0" class="listtable" cellspacing="0">
			    <tr>
					<td class="listtable_1" width="8%" align="center"><input id="name_" name="search_type" type="radio" value="name"></td>
			        <td class="listtable_1" width="26%">Ник администратора</td>
			        <td class="listtable_1" width="66%"><input class="textbox" type="text" id="nick" value="" onmouseup="$('name_').checked = true" style="width: 353px;"></td>
				</tr>       
			    <tr>
			        <td align="center" class="listtable_1" ><input id="steam_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >SteamID</td>
			        <td class="listtable_1" >
				    <input class="textbox" type="text" id="steamid" value="" onmouseup="$('steam_').checked = true" style="width: 233px; margin-right: 15px;"><select class="select" id="steam_match" onmouseup="$('steam_').checked = true" style="width: 105px;">
					<option value="0" selected>Полное совпадение</option>
					<option value="1">Частичное совпадение</option>
				    </select>
			        </td>
			    </tr>
				{if $can_editadmin}
				<tr>
					<td class="listtable_1" width="8%" align="center"><input id="admemail_" name="search_type" type="radio" value="radiobutton"></td>
			        <td class="listtable_1" width="26%">E-Mail</td>
			        <td class="listtable_1" width="66%"><input class="textbox" type="text" id="admemail" value="" onmouseup="$('admemail_').checked = true" style="width: 353px;"></td>
				</tr>
				{/if}
			    <tr>
			        <td align="center" class="listtable_1" ><input id="webgroup_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >Группа администраторов веб</td>
			        <td class="listtable_1" >
						<select class="select" id="webgroup" onmouseup="$('webgroup_').checked = true" style="width: 379px;">
							{foreach from="$webgroup_list" item="webgrp"}
								<option label="{$webgrp.name}" value="{$webgrp.gid}">{$webgrp.name}</option>
							{/foreach}
						</select>
					</td>
			    </tr>
				<tr>
					<td align="center" class="listtable_1" ><input id="srvadmgroup_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >Группа администраторов серверов</td>
			        <td class="listtable_1" >
			        	<select class="select" id="srvadmgroup" onmouseup="$('srvadmgroup_').checked = true" style="width: 379px;">
							{foreach from="$srvadmgroup_list" item="srvadmgrp"}
								<option label="{$srvadmgrp.name}" value="{$srvadmgrp.name}">{$srvadmgrp.name}</option>
							{/foreach}
						</select>
			        </td>
			  	</tr>
				<tr>
					<td align="center" class="listtable_1" ><input id="srvgroup_" type="radio" name="search_type" value="radiobutton"></td>
			        <td class="listtable_1" >Группа серверов</td>
			        <td class="listtable_1" >
			        	<select class="select" id="srvgroup" onmouseup="$('srvgroup_').checked = true" style="width: 379px;">
							{foreach from="$srvgroup_list" item="srvgrp"}
								<option label="{$srvgrp.name}" value="{$srvgrp.gid}">{$srvgrp.name}</option>
							{/foreach}
						</select>
			        </td>
			  	</tr>
			    <tr>
			    	<td class="listtable_1"  align="center"><input id="admwebflags_" name="search_type" type="radio" value="radiobutton"></td>
			        <td class="listtable_1" >Права в веб интерфейсе</td>
			        <td class="listtable_1" >
						<select class="select" id="admwebflag" name="admwebflag" onblur="getMultiple(this, 1);" size="5" multiple onmouseup="$('admwebflags_').checked = true" style="width: 379px;">
							{foreach from="$admwebflag_list" item="admwebflag"}
								<option label="{$admwebflag.name}" value="{$admwebflag.flag}">{$admwebflag.name}</option>
							{/foreach}
						</select>
					</td> 
				</tr>
				<tr>
			    	<td class="listtable_1"  align="center"><input id="admsrvflags_" name="search_type" type="radio" value="radiobutton"></td>
			        <td class="listtable_1" >Права на сервере</td>
			        <td class="listtable_1" >
						<select class="select" id="admwebflag" name="admsrvflag" onblur="getMultiple(this, 2);" size="5" multiple onmouseup="$('admsrvflags_').checked = true" style="width: 379px;">
							{foreach from="$admsrvflag_list" item="admsrvflag"}
								<option label="{$admsrvflag.name}" value="{$admsrvflag.flag}">{$admsrvflag.name}</option>
							{/foreach}
						</select>
					</td> 
				</tr>
			    <tr>
			    	<td class="listtable_1"  align="center"><input id="admin_on_" name="search_type" type="radio" value="radiobutton"></td>
					<td class="listtable_1" >Сервер</td>
			        <td class="listtable_1" >
						<select class="select" id="server" onmouseup="$('admin_on_').checked = true" style="width: 379px;">
							{foreach from="$server_list" item="server}
								<option value="{$server.sid}" id="ss{$server.sid}">Получение имени сервера... ({$server.ip}:{$server.port})</option>
							{/foreach}
						</select>            
					</td>
			    </tr>
			    <tr colspan="3">
			        <td colspan="3">{sb_button text="Искать" onclick="search_admins();" class="ok" id="searchbtn" submit=false}</td>
			    </tr>
			   </table>
			   </div>
		  </td>
		</tr>
	</table>
</div>
{$server_script}
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>