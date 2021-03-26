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
 <li>
    <div class="product-line">
        <a href="{$product.url}" class="product-img">
            <img class="media-object w-100" src="{$product.cover.small.url}" alt="{$product.name}"/>
        </a>
        <div class="product-info">
            <div class="product-name">
                <p class="m-0">{$product.name}</p>
                {if isset($product.attributes) && count($product.attributes) > 0}
                    {foreach from=$product.attributes item=attributeValue key=attributeName}
                    <p class="product-variation">
                        {$attributeValue}
                    </p>
                    {/foreach}
                {/if}
            </div>
            <div class="product-actions-content">
                <div class="box-inc-dec-quantity " data-token="">
                    <i class="fa fa-minus down-quantity-button" data-id-product="{$product.id}" data-id-product-attribute="{$product.id_product_attribute}" data-down-product-url="{if $product.cart_quantity == 1}{$product.remove_from_cart_url}{else}{$product.down_quantity_url}{/if}" data-product-quantity="{$product.cart_quantity}"></i>
                    <div class="product-quantity">{$product.cart_quantity}</div>
                    <i class="fa fa-plus up-quantity-button" data-id-product="{$product.id}" data-id-product-attribute="{$product.id_product_attribute}" data-up-product-url="{$product.up_quantity_url}" data-pprice="{$product.price_with_reduction}"></i>
                </div>
                <div>
                    <a class="remove-from-cart " data-id-product="{$product.id}" data-id-product-attribute="{$product.id_product_attribute}" data-removeproduct-url="{$product.remove_from_cart_url}" data-link-action="remove-from-cart" title="eliminar del carrito">
                        <i class="fa fa-trash"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="product-price-container">
            <div class="product-price">
                {$product.price}
            </div>
        </div>
    </div>
</li>