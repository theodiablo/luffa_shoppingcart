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
    <div class="mini-cart-content">
      <div class="mini-cart-header row m-0">
        <div class="cart-subtotals col-11">
          <div class="info-add-product d-none">
            {l s='Product Successfully Added' d='Shop.MyCart'}
            <i class="material-icons">check_circle</i>
          </div>
          {include 'module:luffa_shoppingcart/views/templates/luffa_shoppingcart-header-products.tpl' cart=$cart}
        </div>
        <button type="button" class="close mini-cart-close" data-dismiss="cart_block" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div id="loading-cart">
        <div id="loading-luffa">
            <div class="col-sm-12 text-center">
                <button></button>
            </div>
        </div>
      </div>
      {include 'module:luffa_shoppingcart/views/templates/luffa_shoppingcart-body.tpl' cart=$cart}
      <div class="mini-cart-footer w-100">
          <div class="mini-cart-cta-btn w-100">
              <a href="{$cart_url}" class="btn btn-primary " rel="nofollow">Ver carrito</a>
          </div>
      </div>
    </div>
