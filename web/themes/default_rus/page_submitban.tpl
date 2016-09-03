<table style="width: 101%; margin: 0 0 -2px -2px;">
	<tr>
		<td colspan="3" class="listtable_top"><b>Запрос на блокировку игрока</b></td>
	</tr>
</table>
<div id="submit-main">
	Здесь вы можете подать запрос на блокировку игрока который нарушил правила игрового сервера. При подаче запроса на длокировку просьба заполнять внимательно и все поля и быть максимально информативным в комментарии. Это гарантирует, что ваш запрос на блокировку будет обработан быстрее.<br /><br />
    Для получени краткой инструкции о том как создать демо нажмите <a href="javascript:void(0)" onclick="ShowBox('Как записать демо', 'Когда вы находитесь в режиме спектатора или используете GoTV и наблюдаете за игроком, нажмите клавишу ` на клавиатуре. Затем введите record demoname и нажмите Enter. Полученный файл будет находиться в каталоге с модом.', 'blue', '', true);">ЗДЕСЬ</a><br /><br />
<form action="index.php?p=submit" method="post" enctype="multipart/form-data">
<input type="hidden" name="subban" value="1">
<table cellspacing='10' width='100%' align='center'>
<tr>
	<td colspan="3">
		Детали блокировки:	</td>
</tr>
<tr>
	<td width="20%">
		SteamID игрока:</td>
	<td>
		<input type="text" name="SteamID" size="40" maxlength="64" value="{$STEAMID}" class="textbox" style="width: 250px;" />
	</td>
</tr>
<tr>
	<td width="20%">
		IP игрока:</td>
	<td>
		<input type="text" name="BanIP" size="40" maxlength="64" value="{$ban_ip}" class="textbox" style="width: 250px;" />
	</td>
</tr>
<tr>
	<td width="20%">
        Ник игрока<span class="mandatory">*</span>:</td>
	<td>
        <input type="text" size="40" maxlength="70" name="PlayerName" value="{$player_name}" class="textbox" style="width: 250px;" /></td>
</tr>
<tr>
	<td width="20%" valign="top">
		Комментарий<span class="mandatory">*</span>:<br />
		(Пожалуйста опишите детально. Не надо писать: "читер")	</td>
	<td><textarea name="BanReason" cols="30" rows="5" class="textbox" style="width: 250px;">{$ban_reason}</textarea></td>
    </tr>
<tr>
	<td width="20%">
		Ваше имя:	</td>
	<td>
		<input type="text" size="40" maxlength="70" name="SubmitName" value="{$subplayer_name}" class="textbox" style="width: 250px;" />	</td>
    </tr>

<tr>
	<td width="20%">
		Ваш Email<span class="mandatory">*</span>:	</td>
	<td>
		<input type="text" size="40" maxlength="70" name="EmailAddr" value="{$player_email}" class="textbox" style="width: 250px;" />	</td>
    </tr>
<tr>
	<td width="20%">
		Сервер<span class="mandatory">*</span>:	</td>
	<td colspan="2">
        <select id="server" name="server" class="select" style="width: 277px;">
			<option value="-1">-- Выберите сервер --</option>
			{foreach from="$server_list" item="server}
				<option value="{$server.sid}" {if $server_selected == $server.sid}selected{/if}>{$server.hostname}</option>
			{/foreach}
			<option value="0">Другой сервер / Нет в списке</option>
		</select> 
    </td>
    </tr>
<tr>
	<td width="20%">
		Загрузите демо:	</td>
	<td>
		<input name="demo_file" type="file" size="25" class="file" style="width: 268px;" /><br />
		Примечание: Только DEM, <a href="http://www.winzip.com" target="_blank">ZIP</a>, <a href="http://www.rarlab.com" target="_blank">RAR</a>, <a href="http://www.7-zip.org" target="_blank">7Z</a>, <a href="http://www.bzip.org" target="_blank">BZ2</a> или <a href="http://www.gzip.org" target="_blank">GZ</a> разрешены.	</td>
    </tr>
<tr>
	<td width="20%"><span class="mandatory">*</span> = Поля обязательные для заполнения</td>
	<td>
		{sb_button text=Submit onclick="" class=ok id=save submit=true}
	</td>
    <td>&nbsp;</td>
</tr>
</table>
</form>
<b>Что произойдёт если кто-то будет заблокирован?</b><br />
Если кто-то будет заблокирован, по STEAMID или IP он будет включён в данную базу SourceBans, и этот игрок каждый раз при подключении к одному из указанных здесь серверов будет получать отказ в подключении и сообщение что он заблокирован SourceBans. 
</div>
