class Product{
	static make(json){
		if ( json.hasOwnProperty("_id") 
			&& json.hasOwnProperty("nome") 
			&& json.hasOwnProperty("preco") 
			&& json.hasOwnProperty("qtd")){
			return new Product(json._id, json.nome, json.preco , json.qtd);
		} else if (
				json.hasOwnProperty("id") 
		&&  json.hasOwnProperty("name") 
		&&  json.hasOwnProperty("price") 
		&&  json.hasOwnProperty("qtyInStock")){
			return new Product(json.id, json.name, json.price , json.qtyInStock);
		} else {
			throw(Error("Missing parameters"));
		}
	}

	constructor(id, name, price, qtyInStock){
		this.id = id;
		this.name = name;
		this.price = price;
		this.qtyInStock = qtyInStock;
	}
}

module.exports = Product