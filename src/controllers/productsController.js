const fs = require('fs')
const path = require('path')

// Me traigo el json que tiene la data de prods y lo parseo
const productsFilePath = path.join(__dirname, '../data/products.json');
const products = JSON.parse(fs.readFileSync(productsFilePath, 'utf-8'));

// Podemos hacer una const para agarrar el parms.id
//const idProduct = req.params.id;

// Agrega los puntos a los numeros que sean 1000
const toThousand = n => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");

const productsController = {
    productCart: (req, res) => {
        //res.send("Estoy aca?")
        res.render('products/productCart');
    },
    comoComprar: (req, res) => {
        //res.send("Estoy aca?")
        res.render('products/comoComprar');
    },
    productDetail: (req, res) => {
        let idProduct = req.params.id;
		let producto = products.find(producto => producto.id == idProduct)
		res.render('products/productDetailNew', {detalleProducto: producto})
        //res.render('products/productDetail');
    },
    crearProducto: (req, res) => {
        //res.send("Estoy aca?")
        res.render('products/crearProducto');
    },
    editarProducto: (req, res) => {
        let idProduct = req.params.id;
        let producto = products.find(producto => producto.id == idProduct)
        res.render('products/editarProducto', { productoAEditar: producto });
    },
    update: (req, res) => {
        let idProduct = req.params.id;
        console.log("🚀 ~ file: productsController.js ~ line 65 ~ idProduct", idProduct)
        
        let productToEdit = products.find(producto => producto.id == idProduct)
        console.log("🚀 ~ file: productsController.js ~ line 66 ~ productToEdit", productToEdit)

        let image
        if(req.files[0] != undefined){
            image = req.files[0].filename;
        } else {
            image = productToEdit.imagen
        };

        productToEdit = {
			id: productToEdit.id,
			...req.body,
			imagen: image
		}

		let newProduct = products.map(product => {			
			if(product.id == productToEdit.id){
				return product = {...productToEdit};
			}
			return product
		})

		fs.writeFileSync(productsFilePath, JSON.stringify(newProduct))
		res.redirect('/productDetail/' + productToEdit.id) //esta no es la vista, es la url

    },
    // productDetailNew: (req, res) => {
    //     //res.send("Estoy aca?")
    //     res.render('products/productDetailNew');
    // },
    productoByID: (req, res) => {
        //res.send("Estoy aca?")
        let idProducto = req.params.id;
        let productoAMostrar = products.find(function(producto){
            return producto.id == idProducto;
        })
        //res.send("Estoy en product id")
        res.render('products/productDetailNew.ejs', {detalleProducto: productoAMostrar});
    }
};


module.exports = productsController;