{assign var=showSitesSelection value=false}
{assign var=showPeriodSelection value=false}
{include file="CoreAdminHome/templates/header.tpl"}

<h2>{'SiteSearch_SiteSearch'|translate}</h2>
<p>{'SiteSearch_AdminDescription'|translate}</p>

<form method="POST" action="{url module=SiteSearch action=admin}">
<table class="adminTable adminTableNoBorder" style="width: 550px;">
	<thead>
		<tr>
			<td><b>{'SiteSearch_Website'|translate}</b></td>
			<td><b>{'SiteSearch_SearchParameter'|translate}</b></td>
		</tr>
	</thead>
	<tbody>
		{foreach from=$sitesList item=site}
		<tr>
			<td>{$site.name}</td>
			<td><input name="SiteSearch_Parameters[{$site.idsite}]" value="{$site.sitesearch_parameter}" style="width: 200px"/></td>
		</tr>
		{/foreach}
	</tbody>
</table>

<input type="hidden" value="{$token_auth}" name="token_auth" />
<input type="submit" value="{'SiteSearch_Save'|translate}" name="submit" class="submit" />
</form>

{include file="CoreAdminHome/templates/footer.tpl"}