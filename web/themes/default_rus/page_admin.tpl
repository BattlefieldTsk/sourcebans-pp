<table style="width: 101%; margin: 0 0 -2px -2px;">
	<tr>
		<td colspan="3" class="listtable_top"><b>Пожалуйста выберите раздел для управления</b></td>
	</tr>
</table>
<div id="cpanel">
	<ul>
		{if $access_admins}
			<li>
				<a href="index.php?p=admin&amp;c=admins">
				<img src="themes/default_rus/images/admin/admins.png" alt="Управление администраторами" border="0" /><br />
				Управление администраторами
		  		</a>
			</li>
		{/if}
		{if $access_servers}
			<li>
				<a href="index.php?p=admin&amp;c=servers">
				<img src="themes/default_rus/images/admin/servers.png" alt="Управление серверами" border="0" /><br />
				Управление серверами
		  		</a>
			</li>
		{/if}
		{if $access_bans}
			<li>
				<a href="index.php?p=admin&amp;c=bans">
				<img src="themes/default_rus/images/admin/bans.png" alt="Управление блокировками" border="0" /><br />
				Управление блокировками
		  		</a>
			</li>
		{/if}
		{if $access_groups}
			<li>
				<a href="index.php?p=admin&amp;c=groups">
				<img src="themes/default_rus/images/admin/groups.png" alt="Управление группами" border="0" /><br />
				Управление группами
		  		</a>
			</li>
		{/if}
		{if $access_settings}
			<li>
				<a href="index.php?p=admin&amp;c=settings">
				<img src="themes/default_rus/images/admin/settings.png" alt="Управление веб-панелью SourceBans" border="0" /><br />
				Управление веб-панелью SourceBans
		  		</a> 
			</li>
		{/if}
		{if $access_mods}
			<li>
				<a href="index.php?p=admin&amp;c=mods">
				<img src="themes/default_rus/images/admin/mods.png" alt="Управление модами" border="0" /><br />
				Управление модами
		  		</a>
			</li>
		{/if}
	</ul>
</div>	
<br />

<table width="100%" border="0" cellpadding="3" cellspacing="0">
	<tr>
		<td width="33%" class="listtable_top" align="center" style="border-right: 3px solid #CFCAC6;">Версия</td>
		<td width="33%" class="listtable_top" align="center" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">Информация об администраторах</td>
		<td width="33%" class="listtable_top" align="center" style="border-left: 3px solid #CFCAC6;">Информация о блокировках</td>
	</tr>
	<tr>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6;">Последняя версия: <strong id='relver'>Пожалуйста подождите...</strong></td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">Всего администраторов: <strong>{$total_admins}</strong></td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">Всего блокировок: <strong>{$total_bans}</strong></td>
	</tr>
	<tr>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6;">
			{if $sb_svn}
				Последняя в репозитории Git: <strong id='svnrev'>Пожалуйста подождите...</strong>
			{/if}		
		</td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">&nbsp;</td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">Подключений отклонено: <strong>{$total_blocks}</strong></td>
	</tr>
	<tr>
		<td class="listtable_1" id='versionmsg' style="border-right: 3px solid #CFCAC6;">Пожалуйста подождите...</td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;"><strong> </strong></td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">Общий размер демо: <strong>{$demosize}</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td width="33%" class="listtable_top" align="center" style="border-right: 3px solid #CFCAC6;">Информация о серверах</td>
		<td width="33%" class="listtable_top" align="center" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">Информация о протестах</td>
		<td width="33%" class="listtable_top" align="center" style="border-left: 3px solid #CFCAC6;">Запросы на блокировку</td>
	</tr>
	<tr>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6;">Всего серверов: <strong>{$total_servers}</strong></td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">Ожидающие протесты: <strong>{$total_protests}</strong></td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">Ожидающие запросы на блокировку: <strong>{$total_submissions}</strong></td>
	</tr>
	<tr>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6;">&nbsp;</td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">Архивные протесты: <strong>{$archived_protests}</strong></td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">Архивные запросы на блокировку: <strong>{$archived_submissions}</strong></td>
	</tr>
	<tr>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6;">&nbsp;</td>
		<td class="listtable_1" style="border-right: 3px solid #CFCAC6; border-left: 3px solid #CFCAC6;">&nbsp;</td>
		<td class="listtable_1" style="border-left: 3px solid #CFCAC6;">&nbsp;</td>
	</tr>
</table>
<script type="text/javascript">xajax_CheckVersion();</script>