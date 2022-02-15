//Page Load JS begins too
if (document.readyState == 'loading') {
    document.addEventListener('DOMContentLoaded', ready)
} else {
    ready()
}
$(function () {
    //$('[data-toggle="tooltip"]').tooltip();

    $('.btn-danger').on('click', function () {
        for (var i = 0; i < $(this).length; i++) {
            var button = $(this)[i];
            removeCartItem($(button));
        }
    });
})
var cartModel = {
    Qty: 0,
    Size: 0,
    Color: null
}
var price = 0;
var newVal = 1;
function qtyChangeCustom(e) {
    var $button = $(e);
    var oldValue = $button.parent().find('input').val();
    if ($button.hasClass('btn-plus')) {
        newVal = parseFloat(oldValue) + 1;
        cartModel.Qty = newVal;
        price = newVal * parseInt(localStorage.getItem("size"));
        $('.total-prodprice').text('Rs. ' + price);
        $('.tprc').text('Rs. ' + price);
        $('.gprc').text('Rs. ' + (price + 100));
        localStorage.setItem("tp", price);
        localStorage.setItem("qty", newVal);
    } else {
        if (oldValue > 0) {
            newVal = parseFloat(oldValue) - 1;
            cartModel.Qty = newVal;
            price = newVal * parseInt(localStorage.getItem("size"));
            $('.total-prodprice').text('Rs. ' + price);
            $('.tprc').text('Rs. ' + price);
            $('.gprc').text('Rs. ' + (price + 100));
            localStorage.setItem("tp", price);
            localStorage.setItem("qty", newVal);
        } else {
            newVal = 0;
        }
    }
    $button.parent().find('input').val(newVal);
    $('#qty-no').text('(' + newVal + ')');
}
function updateSize(val) {
    cartModel.Size = val;
    price = newVal * cartModel.Size;
    $('.total-prodprice').text('Rs. ' + price);
    localStorage.setItem("tp", price);
    localStorage.setItem("size", val);
}
function updateColor(clr) {
    cartModel.Color = clr;
    price = 0;
    newVal = 1;
    $('.total-prodprice').text('Rs. 0');
    localStorage.setItem("clr", clr);
}

//Remove cart item function
function removeCartItem(event) {
    var buttonClicked = event[0];
    buttonClicked.parentElement.parentElement.remove()
    updateCartTotal()
}
//Remove An Item from cart
function ready() {
    //var removeCartItemButtons = document.getElementsByClassName('btn-danger')
    //for (var i = 0; i < removeCartItemButtons.length; i++) {
    //    var button = removeCartItemButtons[i]
    //    button.addEventListener('click', removeCartItem)
    //}

    //Quantity add&subtract
    var quantityInputs = document.getElementsByClassName('cart-quantity-input')
    for (var i = 0; i < quantityInputs.length; i++) {
        var input = quantityInputs[i]
        input.addEventListener('change', quantityChanged)
    }

    //Add to Cart Button
    var addToCartButtons = document.getElementsByClassName('shop-item-button')
    for (var i = 0; i < addToCartButtons.length; i++) {
        var button = addToCartButtons[i]
        button.addEventListener('click', addToCartClicked)
    }

    //Price Button
    //document.getElementsByClassName('shop-item-price')
    //button.addEventListener('click', priceBtnClicked)


    //Checkout Button
    //document.getElementsByClassName('btn-purchase')[0]
    //button.addEventListener('click', purchaseClicked)


    function purchaseClicked() {
        alert('Thank you for your purchase')
        var cartItems = document.getElementsByClassName('cart-items')[0]
        while (cartItems.hasChildNodes()) {
            cartItems.removeChild(cartItems.firstChild)
        }
        updateCartTotal()
    }



    //Price Button Function
    function priceBtnClicked(event) {
        var buttonClicked = event.target
        buttonClicked.document.getElementsByClassName('shop-item-price')[0].innerText
        updateProductTotal()
    }


    //Product Total
    function updateProductTotal() {
        var prodTotal = document.getElementsByClassName('total-prodprice')[0].innerText
        var prodpriceElement = document.getElementsByClassName('shop-item-price')[0]
        var quantityElement = document.getElementsByClassName('cart-quantity-input')[0]
        var prodprice = parseFloat(prodpriceElement.innerText.replace('Rs. ', ''))
        var quantity = quantityElement.value
        prodTotal = prodprice * quantity

        document.getElementsByClassName('total-prodprice')[0].innerText = 'Rs. ' + prodTotal
    }

    /*Quantity Plus Buttons
     
        document.getElementsByClassName('btn-plus')[0]
        button.addEventListener('click', addBtn)
    
        $(function addBtn() {
            var counter = document.getElementsByClassName('cart-quantity-input'),
            while (counter <= 10) {
                counter = counter + 1;
            }
        });
    
    //Quantity Minus Buttons
        document.getElementsByClassName('btn-minus')[0]
        button.addEventListener('click', subBtn)
    
        $(function subBtn() {
            var counter = document.getElementsByClassName('cart-quantity-input'),
            while (counter <= 10) {
                counter = counter - 1;
            }
        });
    
    */

    // Quantity
    //$('.qty button').on('click', function () {
    //    var $button = $(this);
    //    var oldValue = $button.parent().find('input').val();
    //    if ($button.hasClass('btn-plus')) {
    //        var newVal = parseFloat(oldValue) + 1;
    //    } else {
    //        if (oldValue > 0) {
    //            var newVal = parseFloat(oldValue) - 1;
    //        } else {
    //            newVal = 0;
    //        }
    //    }
    //    $button.parent().find('input').val(newVal);
    //});



    //Quantity function
    function quantityChanged(event) {
        var input = event.target
        if (isNaN(input.value) || input.value <= 0) {
            input.value = 1
        }
        updateProductTotal()
        updateCartTotal()
    }


    //Add to cart function
    function addToCartClicked(event) {
        var button = event.target
        var shopItem = button.parentElement.parentElement
        var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText
        var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText
        var imageSrc = shopItem.getElementsByClassName('shop-item-image')[0].src
        addItemToCart(title, price, imageSrc)
        updateCartTotal()
    }

    //Adding to cart when item already exists
    function addItemToCart(title, price, imageSrc) {
        var cartRow = document.createElement('div')
        cartRow.classList.add('cart-row')
        var cartItems = document.getElementsByClassName('cart-items')[0]
        var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
        for (var i = 0; i < cartItemNames.length; i++) {
            if (cartItemNames[i].innerText == title) {
                alert('This item is already added to the cart')
                return
            }
        }

        //Maintaining rows of cart table
        var cartRowContents = `
        <div class="cart-item cart-column">
            <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
            <span class="cart-item-title">${title}</span>
        </div>
        <span class="cart-price cart-column">${price}</span>
        <div class="cart-quantity cart-column">
            <input class="cart-quantity-input" type="number" value="1">
            <button class="btn btn-danger" type="button">REMOVE</button>
        </div>`
        cartRow.innerHTML = cartRowContents
        cartItems.append(cartRow)
        cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem)
        cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)
    }

    //Grand Total
    function updateCartTotal() {
        var cartItemContainer = document.getElementsByClassName('cart-items')[0]
        var cartRows = cartItemContainer.getElementsByClassName('cart-row')
        var total = 0
        for (var i = 0; i < cartRows.length; i++) {
            var cartRow = cartRows[i]
            var priceElement = cartRow.getElementsByClassName('cart-price')[0]
            var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
            var price = parseFloat(priceElement.innerText.replace('Rs. ', ''))
            var quantity = quantityElement.value
            total = total + (price * quantity)
        }
        total = Math.round(total * 100) / 100
        document.getElementsByClassName('cart-total-price')[0].innerText = 'Rs. ' + total
    }
}