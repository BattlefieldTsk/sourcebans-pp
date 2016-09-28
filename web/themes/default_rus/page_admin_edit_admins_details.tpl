<form action="" method="post">
<div id="admin-page-content">

<div id="add-group">
<h3>Профиль администратора</h3>
<table width="90%" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
  <tr>
    <td valign="top" width="35%"><div class="rowdesc">{help_icon title="Имя пользователя администратора" message="Это имя пользователя администратора будет использоваться для входа в панель администратора. Так же будет идентифицировать все добавленные блокировки."}Имя пользователя администратора </div></td>
    <td><div align="left">
        <input type="text" class="textbox" id="adminname" name="adminname" value="{$user}" />
      </div>
        <div id="adminname.msg" class="badentry"></div></td>
  </tr>
  <tr>
    <td valign="top"><div class="rowdesc">{help_icon title="Steam ID" message="Это 'STEAM' id администратора. Должен быть указан чтобы администратор мог использовать свои права в игре на сервере."}STEAM ID администратора </div></td>
    <td><div align="left">
      <input type="text" class="textbox" id="steam" name="steam" value="{$authid}" />
    </div><div id="steam.msg" class="badentry"></div></td>
  </tr>
  <tr>
    <td valign="top"><div class="rowdesc">{help_icon title="Email администратора" message="Укажите e-mail администратора. Будет использоваться для отправки автоматических сообщений системой, и для восстановления забытого пароля."}Email администратора </div></td>
    <td><div align="left">
        <input type="text" class="textbox" id="email" name="email" value="{$email}" />
      </div>
        <div id="email.msg" class="badentry"></div></td>
  </tr>
  
  {if $change_pass}
  <tr>
    <td valign="top"><div class="rowdesc">{help_icon title="Пароль" message="Пароль администратора будет необходим для доступа к панели администратора."}Пароль </div></td>
    <td><div align="left">
        <input type="password" class="textbox" id="password" name="password" />
      </div>
        <div id="password.msg" class="badentry"></div></td>
  </tr>
  <tr>
    <td valign="top"><div class="rowdesc">{help_icon title="Пароль" message="Введите пароль снова для подтверждения."}Пароль (подтверждение) </div></td>
    <td><div align="left">
        <input type="password" class="textbox" id="password2" name="password2" />
      </div>
        <div id="password2.msg" class="badentry"></div></td>
  </tr>
  <tr>
    <td valign="top" width="35%">
      <div class="rowdesc">
        {help_icon title="Пароль администратора сервера" message="Если это поле отмечено администратору необходимо будет указать этот пароль на сервере прежде чем он сможет использовать свои права."}Пароль администратора сервера <small>(<a href="https://wiki.alliedmods.net/Ru:Adding_Admins_%28SourceMod%29#.D0.9F.D0.B0.D1.80.D0.BE.D0.BB.D0.B8" title="SourceMod пароль администратора сервера" target="_blank">информация</a>)</small>
      </div>
    </td>
    <td>
      <div align="left">
        <input type="checkbox" id="a_useserverpass" name="a_useserverpass"{if $a_spass} checked="checked"{/if} TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;" /> <input type="password" TABINDEX=7 class="textbox" name="a_serverpass" id="a_serverpass"{if !$a_spass} disabled="disabled"{/if} />
      </div>
      <div id="a_serverpass.msg" class="badentry"></div>
    </td>
  </tr>
  
  {/if}
  
 </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
      {sb_button text="Сохранить изменения" class="ok" id="editmod" submit=true}
	&nbsp;
	  {sb_button text="Назад" onclick="history.go(-1)" class="cancel" id="back" submit=false} 
      </td>
  </tr>
</table>
</div></div></form>
