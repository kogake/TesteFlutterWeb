class Cart {
	static make(json) {

		//json em objeto
		
		if ( json.hasOwnProperty("person") 
			&& json.hasOwnProperty("cart")){
			var cart = new Cart(json.person, json.cart.map(CartItem.make));

			if ( json.hasOwnProperty("payment")){
				cart.payment = json.payment;
			}
	
			if ( json.hasOwnProperty("cpf")
			&& json.hasOwnProperty("onCredit")) {
				cart.cpf = cpf;
				cart.onCredit = onCredit;
			}

			return cart;
		} else {
			throw(Error("Missing parameters"));
		}
	}

	constructor(person, itens) {
		this.person = person;
		this.itens = itens;
	}
		//objeto em json
	format() {
		if (this.payment != null){
			return {
				"client": this.person,
				"seller": null,
				"paid": true,
				"cart": this.itens,
			};
		} else {
			return {
				"client": null,
				"seller": this.person,
				"paid": !this.onCredit || true,
				"cart": this.itens,
			};
		}
	}
}

class CartItem {
	static make(json){
		if ( json.hasOwnProperty("product") 
			&& json.hasOwnProperty("quantity")){
			return new CartItem(CartProduct.make(json.product), json.quantity);
		} else {
			throw(Error("Missing parameters"));
		}
	}
	
	constructor(product, quantity){
		this.product = product;
		this.quantity = quantity;
	}
}

class CartProduct {
	static make(json){
		if (json.hasOwnProperty("id")
		&&  json.hasOwnProperty("name")
		&&  json.hasOwnProperty("price")){
		return new CartProduct(json.id, json.name, json.price);
		} else {
			throw(Error("Missing parameters"));
		}
	}

	constructor(id, name, price){
		this.id = id;
		this.name = name;
		this.price = price;
	}
}

module.exports = Cart;