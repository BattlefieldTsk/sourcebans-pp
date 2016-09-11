{if NOT $permission_add}
	Access Denied!
{else}
	<div id="add-group1">
		<h3>Добавить МОД</h3>
		Для получения более подробной информации или справки по определённому параметру наведите курсор мыши на знак вопроса.<br /><br />
		<table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
			<tr>
		    	<td valign="top" width="35%">
		    		<div class="rowdesc">
		    			{help_icon title="Имя МОДа" message="Введите имя мода который вы добавляете."}Имя МОДа 
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		    			<input type="hidden" id="fromsub" value="" />
		      			<input type="text" TABINDEX=1 class="textbox" id="name" name="name" />
		    		</div>
		    		<div id="name.msg" class="badentry"></div>
		    	</td>
			</tr>
		  	<tr>
		    	<td valign="top">
		    		<div class="rowdesc">
		    			{help_icon title="Имя каталога" message="Введите имя каталога этого МОДа. Например каталог МОДа Counter-Strike: Source будет называться 'cstrike'."}Имя каталога 
		    		</div>
		    	</td>
		    	<td>
			    	<div align="left">
			      		<input type="text" TABINDEX=2 class="textbox" id="folder" name="folder" />
			    	</div>
			    	<div id="folder.msg" class="badentry"></div>
				</td>
			</tr>
      <tr>
				<td valign="top"><div class="rowdesc">{help_icon title="Универсальный номер Steam" message="(STEAM_<b>X</b>:Y:Z) Some games display the steamid differently than others. Type the first number in the SteamID (<b>X</b>) depending on how it's rendered by this mod. (Default: 0)."}Универсальный номер Steam</div></td>
		    	<td>
		    		<div align="left">
		      			<input type="text" TABINDEX=3 class="textbox" id="steam_universe" name="steam_universe" value="0" />
		    		</div>
		    	</td>
		  </tr>
      <tr>
			<td valign="top"><div class="rowdesc">{help_icon title="Включить" message="Выберите если этот МОД должен быть включён и использоваться для назначения блокиовок и серверов."}Включить</div></td>
		    	<td>
		    		<div align="left">
		      			<input type="checkbox" TABINDEX=4 id="enabled" name="enabled" value="1" checked="checked" />
		    		</div>
		    	</td>
		  </tr>
		  	<tr>
		    	<td valign="top" width="35%">
		    		<div class="rowdesc">
		    			{help_icon title="Загрузить иконку МОДа" message="Нажмите здесь чтобы загрузить иконку и связать с этим МОДом."}Загрузить иконку МОДа
		    		</div>
		    	</td>
		    	<td>
		    		<div align="left">
		      			{sb_button text="Загрузить иконку МОДа" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save" id="upload"}
		    		</div>
		    		<div id="icon.msg" style="color:#CC0000;"></div>
		    	</td>
		  	</tr>
		 	<tr>
		    	<td>&nbsp;</td>
		    	<td>		
			     	{sb_button text="Добавить МОД" onclick="ProcessMod();" class="ok" id="amod"}&nbsp;
			     	{sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="aback"}      
		      	</td>
		  	</tr>
		</table>
	</div>
{/if}
