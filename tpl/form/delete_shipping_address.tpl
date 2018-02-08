[{if $shippingAddress}]
    <div class="modal fade" id="delete_shipping_address_[{$shippingAddress->oxaddress__oxid->value}]" tabindex="-1"
         role="dialog" aria-labelledby="delete_shipping_address_modal_label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    [{block name="checkout_wrapping_header"}]
                    <span class="h4 modal-title">[{oxmultilang ident="DELETE_SHIPPING_ADDRESS"}]</span>
                    [{/block}]
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form name="delete_shipping_address" action="[{$oViewConf->getSelfActionLink()}]"
                                  method="post" role="form">
                                <div class="hidden">
                                    [{$oViewConf->getHiddenSid()}]
                                    <input type="hidden" name="cl" value="user">
                                    <input type="hidden" name="fnc" value="deleteShippingAddress">
                                    <input type="hidden" name="oxaddressid"
                                           value="[{$shippingAddress->oxaddress__oxid->value}]">
                                </div>
                                [{include file="widget/address/shipping_address.tpl" delivadr=$shippingAddress}]
                            </form>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    [{block name="checkout_wrapping_submit"}]
                    <button type="button" class="btn btn-default" data-dismiss="modal">[{oxmultilang ident="CANCEL"}]
                    </button>
                    <button type="submit" class="btn btn-primary"
                            onclick="window.delete_shipping_address_modal_form.submit();return false;">
                        [{oxmultilang ident="DELETE"}]
                    </button>
                    [{/block}]
                </div>
            </div>
        </div>
    </div>
[{/if}]