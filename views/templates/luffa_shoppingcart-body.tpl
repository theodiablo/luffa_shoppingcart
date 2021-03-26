{**
 * 2007-2020 PrestaShop and Contributors
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2020 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

      <div class="mini-cart-body m-0 hidden-xs-down">
        <ul class="mini-cart-products">
          {foreach from=$cart.products|@array_reverse item=product}
            {include 'module:luffa_shoppingcart/views/templates/luffa_shoppingcart-product-line.tpl' product=$product}
          {/foreach}
        </ul>
        <div class="mini-cart-shipping row d--flex-between">
          <div class="label">{l s='Shipping:' d='Shop.Theme.Checkout'}</div>
          
            <div class="value">
              <a href="#" data-toggle="tooltip" data-html="true" data-selected-delivery-option="{$selected_delivery_option}" title='<p>4,99&nbsp;€ para peninsula<br>4,50&nbsp;€ para Cataluña<br>Envío estándar gratis a partir de 60&nbsp;€</p>' style="border-bottom: 1px dashed;">
                {if (isset($selected_delivery_option) && $selected_delivery_option|count > 0) || $cart.subtotals.shipping.amount > 0 || $cart.subtotals.products.value > 60 } {*Only show shipping to logged users to prevent to show Free shipping to everyone*}
                    {$cart.subtotals.shipping.value} {hook h='displayCheckoutSubtotalDetails' subtotal=$cart.subtotals.shipping}
                {else}
                  {l s="To be calculated" d="Shop.MyCart"}
                {/if}
                <span class="material-icons">info</span>
              </a>
            </div>
            <script>
              document.addEventListener("DOMContentLoaded", function(){
                $(function (){
                  $('[data-toggle="tooltip"]').tooltip();
                })
              })
            </script>
          </div>
      </div>
