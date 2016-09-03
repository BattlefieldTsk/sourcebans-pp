{if NOT $permission_addadmin}
	Access Denied!
{else}
	<div id="msg-green" style="display:none;">
		<i><img src="./images/yay.png" alt="Предупреждение" /></i>
		<b>Администратор добавлен</b>
		<br />
		Новый администратор успешно добавлен в систему.<br /><br />
		<i>Перенаправление обратно на страницу администраторов</i>
	</div>
	
	
	<div id="add-group">
		<h3>Профиль администратора</h3>
		Для получения более подробной информации или справки по определённому параметру наведите курсор мыши на знак вопроса.<br /><br />
		<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
			<tr>
		    	<td valign="top" width="35%">
		    		<div class="rowdesc">
		    			{help_icon title="Имя пользователя" message="Это имя пользователя будет использоваться при доступе к панели управления администратора. Так же он используется при указании автора блокировки игроков."}Имя пользователя 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		        		<input type="text" TABINDEX=1 class="textbox" style="width: 200px" id="adminname" name="adminname" />
		      		</div>
		        	<div id="name.msg" class="badentry"></div>
		        </td>
			</tr>
		  	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Steam ID" message="'STEAM' id администратора. Должно быть указано чтобы администратор мог пользоваться своими правами в игре."}Steam ID администратора
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		     			<input type="text" TABINDEX=2 value="STEAM_0:" class="textbox" style="width: 200px" id="steam" name="steam" />
		    		</div>
		    		<div id="steam.msg" class="badentry"></div>
		    	</td>
		  	</tr>
		  	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Email администратора" message="Укажите e-mail администратора. Будет использоваться для отправки любых автоматических сообщений и изменении забытого пароля. Требуется только если вы установили разрешение в веб панели."}Email администратора 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		        		<input type="text" TABINDEX=3 class="textbox" style="width: 200px" id="email" name="email" />
		     		</div>
		        	<div id="email.msg" class="badentry"></div>
		        </td>
		  	</tr>
		  	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Пароль" message="Пароль администратора требуется для доступа к веб панели. Требуется только если вы установили разрешение в веб панели."}Пароль 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		       			<input type="password" TABINDEX=4 class="textbox" style="width: 200px" id="password" name="password" />
		      		</div>
		        	<div id="password.msg" class="badentry"></div>
		        </td>
		  	</tr>
		  	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Пароль" message="Введите пароль повторно, чтобы избежать опечаток."}Пароль (подтврждение) 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		        		<input type="password" TABINDEX=5 class="textbox" style="width: 200px" id="password2" name="password2" />
		      		</div>
		        	<div id="password2.msg" class="badentry"></div>
		        </td>
		  	</tr>
		    <tr>
		    	<td valign="top" width="35%">
		    		<div class="rowdesc">
		    			{help_icon title="Пароль администратора на сервера" message="Если это поле отмечено вам необходимо указать этот пароль перед использованием прав администратора на игровом сервере."}Пароль сервера <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank">ещё</a>)</small>
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		        		<input type="checkbox" id="a_useserverpass" name="a_useserverpass" TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;" /> <input type="password" TABINDEX=7 class="textbox" style="width: 176px" name="a_serverpass" id="a_serverpass" disabled="disabled" />
		    		</div>
					<div id="a_serverpass.msg" class="badentry"></div>
		    	</td>
		  	</tr>
		</table>
	
		
		<br />
	
		
		<h3>Доступ</h3>
			<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
		  	<tr>
		    	<td valign="top" width="35%">
		    		<div class="rowdesc">
		    			{help_icon title="Сервер" message="<b>Сервер: </b><br>Выберите сервер или группу серверов которыми администратор сможет управлять."}Доступ к серверам 
		    		</div>
		    	</td>
		    	<td>&nbsp;</td>
		  	</tr>
		  	<tr>
			  	<td colspan="2">
			  		<table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
						{foreach from="$group_list" item="group"}
							<tr>
								<td colspan="2" class="tablerow4">{$group.name}<b><i>(Group)</i></b></td>
								<td align="center" class="tablerow4"><input type="checkbox" id="group[]" name="group[]" value="g{$group.gid}" /></td>
							</tr>
						{/foreach}
					
						{foreach from="$server_list" item="server"}
							<tr class="tablerow1">
								<td colspan="2" class="tablerow1" id="sa{$server.sid}"><i>Получение имени сервера... {$server.ip}:{$server.port}</i></td>
								<td align="center" class="tablerow1">
									<input type="checkbox" name="servers[]" id="servers[]" value="s{$server.sid}" />
						  		</td> 
							</tr>
						{/foreach}
			  		</table>
		  		</td>
			</tr>
		</table>
	
		
		
		<br />
		
		
		
		<h3>Права администратора</h3>
		<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
			<tr>
			    <td valign="top" width="35%">
			    	<div class="rowdesc">
			    		{help_icon title="Группа администраторов серверов" message="<b>Выборочные права: </b><br>Выберите для задания выборочных прав для администратора.<br><br><b>Новая группа: </b><br>Выберите для задания выборочных прав для администратора и сохранения как новой группы.<br><br><b>Группы: </b><br>Выберите существующую для добавления администратора туда."}Группа администраторов серверов 
			    	</div>
			    </td>
			    <td>
			    	<div align="left" id="admingroup">
				      	<select TABINDEX=8 onchange="update_server()" name="serverg" id="serverg" class="select" style="width: 225px">
					        <option value="-2">Пожалуйста выберите...</option>
					        <option value="-3">Без прав</option>
					        <option value="c">Выборочные права</option>
					        <option value="n">Новая группа</option>
					        <optgroup label="Группы" style="font-weight:bold;">
						        {foreach from="$server_admin_group_list" item="server_wg"}
									<option value='{$server_wg.id}'>{$server_wg.name}</option>
								{/foreach}
							</optgroup>
				        </select>
			        </div>
			        <div id="server.msg" class="badentry"></div>
				</td>
		  	</tr>
		   	<tr>
		 		<td colspan="2" id="serverperm" valign="top" style="height:5px;overflow:hidden;"></td>
		 	</tr>
		   	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Группа администраторов веб" message="<b>Выборочные права: </b><br>Выберите для задания выборочных прав для администратора.<br><br><b>Новая группа: </b><br>Выберите для задания выборочных прав для администратора и сохранения как новой группы.<br><br><b>Группы: </b><br>Выберите существующую для добавления администратора туда."}Группа администраторов веб 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left" id="webgroup">
						<select TABINDEX=9 onchange="update_web()" name="webg" id="webg" class="select" style="width: 225px">
							<option value="-2">Пожалуйста выберите...</option>
							<option value="-3">Без прав</option>
							<option value="c">Выборочные права</option>
							<option value="n">Новая группа</option>
							<optgroup label="Группы" style="font-weight:bold;">
								{foreach from="$server_group_list" item="server_g"}
									<option value='{$server_g.gid}'>{$server_g.name}</option>
								{/foreach}
							</optgroup>
						</select>
		        	</div>
		        	<div id="web.msg" class="badentry"></div>
		       	</td>
		  	</tr>
		  	<tr>
		 		<td colspan="2" id="webperm" valign="top" style="height:5px;overflow:hidden;"></td>
		 	</tr>
		  	<tr>
		    	<td>&nbsp;</td>
		    	<td>
			    	{sb_button text="Добавить администратора" onclick="ProcessAddAdmin();" class="ok" id="aadmin" submit=false}
				      &nbsp;
				    {sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="aback"}
		      	</td>
		  	</tr>
		</table>
        {$server_script}
	</div>
{/if}
