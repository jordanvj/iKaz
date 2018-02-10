<div class="headertop_desc">
	<div class="call">
		<p>
			<span>Need help?</span> call us <span class="number">1-22-3456789</span>
		</p>
	</div>
	<div class="account_desc">
		<ul>
			<li><a href="#">Register</a></li>
			<li><a href="#">Login</a></li>
			<li><a href="#">Delivery</a></li>
			<li><a href="#">Checkout</a></li>
			<li><a href="#">My Account</a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
<div class="header_top">
	<div class="logo">
		<a href="${contextRoot}/home"><img src="${images}/logo.png" alt="" /></a>
	</div>
	<div class="cart">
		<p>
			Welcome to our Online Store! <span>Cart:</span>
		<div id="dd" class="wrapper-dropdown-2">
			0 item(s) - $0.00
			<ul class="dropdown">
				<li>you have no items in your Shopping cart</li>
			</ul>
		</div>
		</p>
	</div>
	<script type="text/javascript">
		function DropDown(el) {
			this.dd = el;
			this.initEvents();
		}
		DropDown.prototype = {
			initEvents : function() {
				var obj = this;

				obj.dd.on('click', function(event) {
					$(this).toggleClass('active');
					event.stopPropagation();
				});
			}
		}

		$(function() {

			var dd = new DropDown($('#dd'));

			$(document).click(function() {
				// all dropdowns
				$('.wrapper-dropdown-2').removeClass('active');
			});

		});
	</script>
	<div class="clear"></div>
</div>
<div class="header_bottom">
	<div class="menu">
		<ul>
			<li id="home"><a href="${contextRoot}/home">Home</a></li>
			<li id="about"><a href="${contextRoot}/about">About</a></li>
			<li id="listProducts"><a href="${contextRoot}/listProducts">View Products</a></li>
			<li id="delivery"><a href="${contextRoot}/delivery">Delivery</a></li>
			<li id="news"><a href="${contextRoot}/news">News</a></li>
			<li id="contact"><a href="${contextRoot}/contact">Contact</a></li>
			<div class="clear"></div>
		</ul>
	</div>
	<div class="search_box">
		<form>
			<input type="text" value="Search" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Search';}"><input
				type="submit" value="">
		</form>
	</div>
	<div class="clear"></div>
</div>
