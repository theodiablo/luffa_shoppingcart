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
<div id="blockcart" class="blockcart {if $page.page_name != 'cart'}js-cart {/if} cart-preview header__rightitem" {if $page.page_name != 'cart'}data-refresh-url="{$refresh_url}"{/if}>
  <div class="header">
    <a id="show-mini-cart-btn" rel="nofollow" href="{$cart_url}" class="u-link-body" title="{l s='Cart' d='Shop.Theme.Checkout'}">
      <span class="cart-icon">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 90 100">
          <path d="M84.12,30.26H95.86c2.16,0,2.32.17,2.32,2.36q0,26.25,0,52.49c0,10.71-7.62,18.25-18.37,18.25H27.32c-10.5,0-18.22-7.63-18.24-18.11q0-26.33,0-52.65c0-2.08.28-2.35,2.39-2.35H24A28,28,0,0,1,36.91,6.73,30,30,0,0,1,54.54,1.62,29.81,29.81,0,0,1,75.32,9.9,27.09,27.09,0,0,1,84.12,30.26Z" transform="translate(-9.06 -1.61)"/>
          <path d="M75.11,30.16h-42c.23-7.17,3.31-13.65,9.24-17.35C49.6,8.25,57.23,8,64.77,12.14,71.35,15.75,74.76,22.5,75.11,30.16Z" transform="translate(-9.06 -1.61)" style="fill:#fff"/>
        </svg>
      </span>
      <span class="visible--desktop icon-description blockcart__label">{l s='Cart' d='Shop.Theme.Checkout'}</span>
      <span class="cart-products-count blockcart__count">
        {$cart.products_count}
      </span>
    </a>
  </div>
  <div id="mini-cart" class="body">
    <div class="mini-cart-marker hidden-xs-down"></div>
    {include 'module:luffa_shoppingcart/views/templates/luffa_shoppingcart-content.tpl' cart=$cart}
  </div>
</div>
