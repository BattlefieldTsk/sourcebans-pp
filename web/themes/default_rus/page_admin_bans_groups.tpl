{if NOT $permission_addban}
	Access Denied!
{else}
	{if NOT $groupbanning_enabled}
		This feature is disabled! Only follow links!
	{else}
		<h3>Добавить блокировку группы</h3>
		{if NOT $list_steam_groups}
		Здесь вы можете добавить блокировку участников группы steam сообщества. Каждый участник группы будет заблокирован по отдельности.<br />
		Например <code>http://steamcommunity.com/groups/interwavestudios</code><br /><br />
		<table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
		<tr>
			<td valign="top" width="35%">
				<div class="rowdesc">
					{help_icon title="Ссылка на группу" message="Укажите здесь ссылку на группу steam сообщества."}Ссылка на группу 
				</div>
			</td>
			<td>
				<div align="left">
					<input type="text" TABINDEX=1 class="textbox" id="groupurl" name="groupurl" style="width: 229px" />
				</div>
				<div id="groupurl.msg" class="badentry"></div>
			</td>
		</tr>
		<tr>
			<td valign="top" width="35%">
				<div class="rowdesc">
					{help_icon title="Причина блокировки группы" message="Укажите причину почему вы блокируете группу steam сообщества."}Причина блокировки группы 
				</div>
			</td>
			<td>
				<div align="left">
					<textarea class="textbox" TABINDEX=2 cols="30" rows="5" id="groupreason" name="groupreason" /></textarea>
				</div>
				<div id="groupreason.msg" class="badentry"></div>
			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				{sb_button text="Добавить блокировку группы" onclick="ProcessGroupBan();" class="ok" id="agban" submit=false}
					  &nbsp;
				{sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="aback"}
			</td>
		</tr>
		</table>
		{else}
		Все группы участником которых является игрок {$player_name} перечислены здесь.<br />
		Выберите группы сообщества steam которые вы хотите заблокировать.<br /><br />
		<div id="steamGroupsText" name="steamGroupsText">Загрузка групп...</div>
		<div id="steamGroups" name="steamGroups" style="display:none;">
			<table id="steamGroupsTable" name="steamGroupsTable" border="0" width="500px">
			<tr>
				<td height="16" class="listtable_1" style="padding:0px;width:3px;" align="center"><div class="ok" style="height:16px;width:16px;cursor:pointer;" id="tickswitch" name="tickswitch" onclick="TickSelectAll();"></div></td>
				<td height="16" class="listtable_top" align="center"><b>Группы</b></td>
			</tr>
			</table>
			&nbsp;&nbsp;L&nbsp;&nbsp;<a href="#" onclick="TickSelectAll();return false;" title="Select All" name="tickswitchlink" id="tickswitchlink">Select All</a><br /><br />
			<table width="90%" style="border-collapse:collapse;" id="group.details" cellpadding="3">
				<tr>
					<td valign="top" width="35%">
						<div class="rowdesc">
							{help_icon title="Причина блокировки группы" message="Укажите причину почему вы блокируете группу steam сообщества."}Причина блокировки группы 
						</div>
					</td>
					<td>
						<div align="left">
							<textarea class="submit-fields" TABINDEX=2 cols="30" rows="5" id="groupreason" name="groupreason" /></textarea>
						</div>
						<div id="groupreason.msg" class="badentry"></div>
					</td>
				</tr>
			</table>
			<input type="button" class="btn ok" onclick="CheckGroupBan();" name="gban" id="gban" onmouseover="ButtonOver('gban');" onmouseout="ButtonOver('gban');" value="Добавить блокировку группы">
		</div>
		<div id="steamGroupStatus" name="steamGroupStatus" width="100%"></div>
		<script type="text/javascript">$('tickswitch').value = 0;xajax_GetGroups('{$list_steam_groups}');</script>
		{/if}
	{/if}
{/if}