{if NOT $permission_protests}
	Access Denied!
{else}
	<div id="protests">
		<h3 style="margin-top:0px;">Архив протестов на блокировки (<span id="protcountarchiv">{$protest_count_archiv}</span>)</h3>
		Нажмите на нике игрока для просмотра информации о блокировке.<br /><br />
        <div id="banlist-nav"> 
        {$aprotest_nav}
        </div>
		<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
            	<td width="40%" height='16' class="listtable_top"><strong>Ник игрока</strong></td>
      			<td width="20%" height='16' class="listtable_top"><strong>SteamID</strong></td>
            	<td width="25%" height='16' class="listtable_top"><strong>Действия</strong></td>
			</tr>
			{foreach from="$protest_list_archiv" item="protest"}
				<tr id="apid_{$protest.pid}" class="opener5 tbl_out" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'">
          <td class="toggler" style="border-bottom: solid 1px #ccc" height='16'>{if $protest.archiv!=2}<a href="./index.php?p=banlist{if $protest.authid!=""}&advSearch={$protest.authid}&advType=steamid{else}&advSearch={$protest.ip}&advType=ip{/if}" title="Показать блокировку">{$protest.name}</a>{else}<i><font color="#677882">блокировка удалена</font></i>{/if}</td>
          <td style="border-bottom: solid 1px #ccc" height='16'>{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
          <td style="border-bottom: solid 1px #ccc" height='16'>
		  {if $permission_editban}
		  <a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '2');">Восстановить</a> -
            <a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '0');">Удалить</a> -
          {/if}
          <a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">Связаться</a>
          </td>
				</tr>
				<tr id="apid_{$protest.pid}a" >
					<td colspan="4" align="center" id="ban_details_{$protest.pid}">
						<div class="opener5">
							<table width="90%" cellspacing="0" cellpadding="0" class="listtable">
          						<tr>
            						<td height="16" align="left" class="listtable_top" colspan="5">
										<b>Детали блокировки</b>
									</td>
          						</tr>
								<tr align="left">
									<td height="16" align="left" class="listtable_1" colspan="2">
										<b>Причина помещения в архив {$protest.archive}</b>
									</td>
									<td width="30%" rowspan="{if $protest.archiv == "2"}5{else}13{/if}" class="listtable_2">
										<div class="ban-edit">
						                    <ul>
						                      <li>{$protest.protaddcomment}</li>	
						                    </ul>
										</div>
				  					</td>
								</tr>
								{if $protest.archiv!=2}
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Ник игрока</td>
            						<td height="16" class="listtable_1">{$protest.name}</td>
          						</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">SteamID</td>
            						<td height="16" class="listtable_1">
									{if $protest.authid == ""}
										<i><font color="#677882">steamid отсутствует</font></i>
									{else}
										{$protest.authid}
									{/if}
								</td>
            					</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">IP адрес</td>
	     							<td height="16" class="listtable_1">
		     							{if $protest.ip == 'none' || $protest.ip == ''}
		     								<i><font color="#677882">IP адрес игрока отсутствует</font></i>
		     							{else}
		     								{$protest.ip}
		     							{/if}
	     							</td>
          						</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Заблокирован</td>
            						<td height="16" class="listtable_1">{$protest.date}</td>
            					</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Истекает</td>
            						<td height="16" class="listtable_1">
            							{if $protest.ends == 'never'}
		     								<i><font color="#677882">Не применимо.</font></i>
		     							{else}
		     								{$protest.ends}
		     							{/if}
		     						</td>
            					</tr>
						        <tr align="left">
            						<td width="20%" height="16" class="listtable_1">Причина</td>
            						<td height="16" class="listtable_1">{$protest.ban_reason}</td>
            					</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Кем заблокирован</td>
            						<td height="16" class="listtable_1">{$protest.admin}</td>
            					</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Где заблокирован</td>
            						<td height="16" class="listtable_1">{$protest.server}</td>
            					</tr>
								{/if}
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Поместил в архив</td>
                                    <td height="" class="listtable_1">
                                    {if !empty($protest.archivedby)}
                                        {$protest.archivedby}
                                    {else}
                                        <i><font color="#677882">Администратор удалён.</font></i>
                                    {/if}
                                    </td>
                                </tr>
								<tr align="left">
            						<td width="20%" height="16" class="listtable_1">IP адрес протестующего</td>
            						<td height="16" class="listtable_1">{$protest.pip}</td>
            					</tr>
								<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Протест подан</td>
            						<td height="16" class="listtable_1">{$protest.datesubmitted}</td>
            					</tr>
          						<tr align="left">
            						<td width="20%" height="16" class="listtable_1">Текст протеста</td>
            						<td height="16" class="listtable_1">{$protest.reason}</td>
          						</tr>
                      <tr align="left">
                        <td width="20%" height="16" class="listtable_1">Комментарии</td>
                        <td height="60" class="listtable_1" colspan="3">
                        {if $protest.commentdata != "None"}
                        <table width="100%" border="0">
                          {foreach from=$protest.commentdata item=commenta}
                            {if $commenta.morecom}
                            <tr>
                            <td colspan="3">
                              <hr />
                            </td>
                            </tr>
                            {/if}
                            <tr>
                            <td>
                                {if !empty($commenta.comname)}
                                    <b>{$commenta.comname|escape:'html'}</b>
                                {else}
                                    <i><font color="#677882">Администратор удалён</font></i>
                                {/if}
                            </td><td align="right"><b>{$commenta.added}</b>
                            </td>
                            {if $commenta.editcomlink != ""}
                            <td align="right">
                              {$commenta.editcomlink} {$commenta.delcomlink}
                            </td>
                            {/if}
                            </tr>
                            <tr>
                            <td colspan="2" style="word-break: break-all;word-wrap: break-word;">
                              {$commenta.commenttxt}
                            </td>
                            </tr>
                            {if !empty($commenta.edittime)}
                            <tr>
                            <td colspan="3">
                              <span style="font-size:6pt;color:grey;">last edit {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}{else}<i><font color="#677882">Администратор удалён</font></i>{/if}</span>
                            </td>
                            </tr>
                            {/if}
                          {/foreach}
                        </table>
                        {/if}
                        {if $protest.commentdata == "None"}
                          {$protest.commentdata}
                        {/if}
                        </td>
                      </tr>
          					</table>
          				</div>
					</td>
				</tr>
			{/foreach}
		</table>
	</div>
	<script>InitAccordion('tr.opener5', 'div.opener5', 'protests');</script>
{/if}
