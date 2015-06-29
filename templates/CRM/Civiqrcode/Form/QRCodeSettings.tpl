{* HEADER *}

{* FIELD EXAMPLE: OPTION 1 (AUTOMATIC LAYOUT) *}

{foreach from=$elementNames item=elementName}
  <div class="crm-section">
    <div class="label">{$form.$elementName.label}</div>
    <div class="content">
    {$form.$elementName.html}
    <br>
    <small>{$helpText.$elementName}</small>
    </div>
    <div class="clear"></div>
  </div>
{/foreach}

{if $existingQrcodeTokens}
<div class="crm-accordion-wrapper crm-search_filters-accordion">
    <div class="crm-accordion-header">
    List of QR Code Tokens
    </div><!-- /.crm-accordion-header -->
    <div class="crm-accordion-body" style="display: block;">
      <table id="qrcodetokens">
        <thead>
        <tr>
          <th> Qr Code Tokens </th>
          <th> Qr Code Targets </th>
          <th> Argument Membersihp Enabled </th>
          <th> Argument Checksum Enabled</th>
          <th> </th>
        </tr>
        </thead>
        <tbody>
          {foreach from=$existingQrcodeTokens item=qrcode}
          <tr>
            <td>{$qrcode.qr_token_name}</td>
            <td>{$qrcode.qr_target_url}</td>
            <td>{$qrcode.arg_membershipid}</td>
            <td>{$qrcode.arg_checksum}</td>
            <td>{$qrcode.action}</td>
          </tr>
          {/foreach}
        </tbody>
      </table>
    </div><!-- /.crm-accordion-body -->
</div>
{/if}

<div style="display:none;" id="deleteQr">
  <p> Are you sure want to delete this settings ? </p>
</div>
{* FOOTER *}
<div class="crm-submit-buttons">
{include file="CRM/common/formButtons.tpl" location="bottom"}
</div>

{literal}
<script type="text/javascript">
 
  function delQrCode(id) {
      cj('#deleteQr').dialog({
        title: "Delete QrCode Settings",
        modal: true,
        buttons: { 
          "Delete": function() { 
           var dataUrl = {/literal}"{crmURL p='civicrm/ajax/rest' h=0 q='className=CRM_Civiqrcode_Page_AJAX&fnName=deleteQrCode&json=1'}";{literal}
              cj.ajax({
                     url     : dataUrl,
                     data    : { id : id },
                     dataType: "html",
                     timeout : 5000, //Time in milliseconds
                     success : function( data ){
                         cj( "#casedetails").html( data ).trigger('crmLoad');
                   },
               });
            location.reload(true); 
          }
        }
    });
  }
</script>
{/literal}
