{if not $permission_addserver}
	Access Denied
{else}

<div id="add-group">
	<h3>Параметры сервера</h3>
	Для получения более подробной информации или справки по определённому параметру наведите курсор мыши на знак вопроса.<br /><br />
	<input type="hidden" name="insert_type" value="add">
	<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
		<tr>
		    <td valign="top" width="35%">
		    	<div class="rowdesc">{help_icon title="Адрес сервера" message="Укажите здесь IP адрес сервера. Вы можете указать FQDN (полное доменное имя) сервера, если знаете его."}IP/FQDN сервера</div>
		    </td>
		    <td>
		    	<div align="left">
		        	<input type="text" TABINDEX=1 class="textbox" id="address" name="address" value="{$ip}" style="width: 203px" />
		      	</div>
		        <div id="address.msg" class="badentry"></div>
			</td>
		</tr>
		
		<tr>
			<td valign="middle">
				<div class="rowdesc">{help_icon title="Порт сервера" message="Порт на котором работает сервер. <br /><br /><i>По умолчанию: 27015</i>"}Порт сервера</div>
			</td>
		    <td>
		    	<div align="left">
		      		<input type="text" TABINDEX=2 class="textbox" id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}" style="width: 203px" />
		    	</div>
		    	<div id="port.msg" class="badentry"></div>
		    </td>
		</tr>

		<tr>
			<td valign="middle">
				<div class="rowdesc">{help_icon title="Пароль Rcon" message="Это пароль RCON вашего сервера. Можно найти в файле server.cfg в строке <i>rcon_password</i>.<br /><br />Он используется для администрирования сервера через веб-интерфейс."}Пароль RCON</div>
			</td>
		    <td>
		    	<div align="left">
		        	<input type="password" TABINDEX=3 class="textbox" id="rcon" name="rcon" value="{$rcon}" style="width: 203px" />
		      	</div>
		        <div id="rcon.msg" class="badentry"></div>
			</td>
		</tr>
		  
		<tr>
		    <td valign="middle">
		    	<div class="rowdesc">{help_icon title="Пароль Rcon" message="Пожалуйста введите ваш пароль пароль RCON повторно, чтобы избежать опечаток"}Пароль RCON (подтверждение)</div>
		    </td>
		    <td>
		    <div align="left">
		    	<input type="password" TABINDEX=4 class="textbox" id="rcon2" name="rcon2" value="{$rcon}" style="width: 203px" />
		    </div>
		        <div id="rcon2.msg" class="badentry"></div>
			</td>
		</tr>
		 
		<tr>
			<td valign="middle">
				<div class="rowdesc">{help_icon title="МОД сервера" message="Выберите МОД запущенный на вашем сервере."}МОД сервера </div>
			</td>
		    <td>
		    	<div align="left" id="admingroup">
		      		<select name="mod" TABINDEX=5 onchange="" id="mod" class="select">
						{if !$edit_server}
		        		<option value="-2">Пожалуйста выберите...</option>
						{/if}
							{foreach from="$modlist" item="mod"}
								<option value='{$mod.mid}'>{$mod.name}</option>
							{/foreach}
		        	</select>
		        </div>
		        <div id="mod.msg" class="badentry"></div>
			</td>
		</tr>
		  
		<tr>
		    <td valign="middle">
		    	<div class="rowdesc">{help_icon title="Включить" message="Включает сервер в список публичных серверов."}Включить</div>
		    </td>
		    <td>
		    <div align="left">
		    	<input type="checkbox" id="enabled" name="enabled" checked="checked" /> 
		    </div>
		        <div id="enabled.msg" class="badentry"></div>
			</td>
		</tr>
		
		<tr>
			<td valign="middle">
				<div class="rowdesc">{help_icon title="Группы серверов" message="Выберите группу в которую хотите добавить сервер. Группы серверов используются администраторами для задания спечефических настроек сереров."}Группы серверов </div>
			</td>
		    <td>&nbsp;</td>
		</tr>
			{foreach from="$grouplist" item="group"}
				<tr>
			   		<td valign="middle">
			   			<div align="right">{$group.name} </div>
			   		</td>
			    	<td>
			    		<div align="left">
			    			<input type="checkbox" value="{$group.gid}" id="g_{$group.gid}" name="groups[]" /> 
			    		</div>
			    	</td>
				</tr> 
			{/foreach}
		<tr id="nsgroup" valign="top" class="badentry"> 		
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
			{if $edit_server}
				{sb_button text=$submit_text onclick="process_edit_server();" class="ok" id="aserver" submit=false}
			{else}
				{sb_button text=$submit_text onclick="process_add_server();" class="ok" id="aserver" submit=false}
			{/if}
			      &nbsp;
				{sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="back" submit=false}
			</td>
		</tr>
	</table>
</div>

{/if}
