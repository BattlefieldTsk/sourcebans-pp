<table style="width: 101%; margin: 0 0 -2px -2px;">
	<tr>
		<td colspan="3" class="listtable_top"><b>Опротестовать блокировку</b></td>
	</tr>
</table>
<div id="submit-main">
Прежде чем продолжит убедитесь что вы проверили наш список блокировок и нашли <a href="index.php?p=banlist"><b>здесь</b></a>, что вы перечислены и по какой причине.<br />
Если вы нашли себя в списке блокировок, а прична не соответствует действительности вы можете написать протест.<br /><br />
<form action="index.php?p=protest" method="post">
<input type="hidden" name="subprotest" value="1">
<table cellspacing='10' width='100%' align='center'>
<tr>
	<td colspan="3">
		Ваши данные:	</td>
</tr>
<tr>
	<td width="20%">Тип блокировки:</td>
	<td>
		<select id="Type" name="Type" class="select" style="width: 250px;" onChange="changeType(this[this.selectedIndex].value);">
			<option value="0">Steam ID</option>
			<option value="1">IP адрес</option>
		</select>
	</td>
</tr>
<tr id="steam.row">
	<td width="20%">
		Ваш SteamID<span class="mandatory">*</span>:</td>
	<td>
		<input type="text" name="SteamID" size="40" maxlength="64" value="{$steam_id}" class="textbox" style="width: 223px;" />
	</td>
</tr>
<tr id="ip.row" style="display: none;">
	<td width="20%">
		Ваш IP адрес<span class="mandatory">*</span>:</td>
	<td>
		<input type="text" name="IP" size="40" maxlength="64" value="{$ip}" class="textbox" style="width: 223px;" />
	</td>
</tr>
<tr>
	<td width="20%">
        Ник игрока<span class="mandatory">*</span>:</td>
	<td>
        <input type="text" size="40" maxlength="70" name="PlayerName" value="{$player_name}" class="textbox" style="width: 223px;" /></td>
    </tr>
<tr>
	<td width="20%" valign="top">
		Причина по которой вы должны быть разблокированы <span class="mandatory">*</span>: (Более детально, на сколько это возможно) </td>
	<td><textarea name="BanReason" cols="30" rows="5" class="textbox" style="width: 223px;">{$reason}</textarea></td>
    </tr>
<tr>
	<td width="20%">
		Ваш Email<span class="mandatory">*</span>:	</td>
	<td>
		<input type="text" size="40" maxlength="70" name="EmailAddr" value="{$player_email}" class="textbox" style="width: 223px;" /></td>
    </tr>
<tr>
	<td width="20%"><span class="mandatory">*</span> = Поля обязательные для заполнения</td>
	<td>
		{sb_button text=Отправить class=ok id=alogin submit=true}
	</td>
    <td>&nbsp;</td>
</tr>
</table>
</form>
<b>Что произойдёт после того как вы отправите свой протест?</b><br />
  Администраторы получат уведомление о вашем протесте. Они будут пересматривать является ли решение по блокировке окончательным. В случае снятия блокировки при пересмотре вы получите ответ, обычно это занимает 24 часа.<br /><br />
  <b>Примечание:</b> Отправка сообщений с угрозами нашим администраторам, брань и крики не приведут к снятию блокировки! Мы лишь удалим ваш протест! 
</div>
