{if NOT $permission_addgroup}
	Access Denied!
{else}
	<div id="add-group">
		<h3>Новая группа</h3>
		<table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
	  	<tr>
	    	<td valign="top" width="35%">
	    		<div class="rowdesc">
	    			{help_icon title="Имя группы" message="Введите имя группы которую вы хотите создать."}Имя группы 
	    		</div>
	    	</td>
	    	<td>
	    		<div align="left">
	      			<input type="text" TABINDEX=1 class="textbox" id="groupname" name="groupname" />
	    		</div>
	    		<div id="name.msg" class="badentry"></div>
	    	</td>
	  	</tr>
	  	<tr>
	    	<td valign="top">
	    		<div class="rowdesc">
	    			{help_icon title="Тип группы" message="Определяет тип создаваемой группы. Это поможет идентифицировать и категоризировать список групп."}Тип группы 
	    		</div>
	    	</td>
	    	<td>
	    		<div align="left">
					<select onchange="UpdateGroupPermissionCheckBoxes()" TABINDEX=2 class="select" name="grouptype" id="grouptype">
						<option value="0">Пожалуйста выберите...</option>
						<option value="1">Группа администраторов веб</option>
						<option value="2">Группа администраторов серверов</option>
						<option value="3">Группа серверов</option>
					</select>
	    		</div>
	    		<div id="type.msg" class="badentry"></div>
	    	</td>
	  		</tr>
	 		<tr>
	 			<td colspan="2" id="perms" valign="top" style="height:5px;overflow:hidden;"></td>
	 		</tr>
	  		<tr>
		    	<td>&nbsp;</td>
		    	<td>      
			    	{sb_button text="Сохранить изменения" onclick="ProcessGroup();" class="ok" id="agroup" submit=false}
				     	 &nbsp;
				    {sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="back" submit=false} 
		      	</td>
	  		</tr>
		</table>
	</div>
{/if}
