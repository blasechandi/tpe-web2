{include file="header.tpl"}

{if isset($smarty.session.USER_ID)}
{include file="form-add.tpl"}
{/if}
<!-- Inicio simple -->
<h1> {$inicio} </h1>

{include file="perifericos.tpl"}



{include file="footer.tpl"}