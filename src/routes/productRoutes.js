const express = require('express');
const productsController = require('../controllers/productsController')
const router = express.Router();
const multer = require('multer')
const path = require('path')

const storage = multer.diskStorage({    
    destination: function(req, file, cb) {
        cb(null, 'public/images')
    },
    filename: function(req, file, cb) {
        // const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
        // cb(null, file.fieldname + uniqueSuffix + path.extname(file.originalname));
        cb(null, file.fieldname + file.originalname);
    }
})

const upload = multer({ storage: storage });
// Carrito y Como comprar
router.get('/carrito', productsController.productCart)
//router.get('/comprar', productsController.howToBuy)

// Mostrar todos los productos
router.get('/', productsController.index )

// Mostrar Producto por id
//router.get('/:id', productsController.productoByID)

// Crear un producto
router.get('/crear', productsController.crearProducto)
router.post('/crear',upload.any(),productsController.create)

/*** GET ONE PRODUCT ***/ 
router.get('/detalle/:id/', productsController.productDetail)
//router.get('/detalle', productsController.productDetail)

/*** EDIT ONE PRODUCT ***/ 
// no es una mala practica repetir las rutas de get y put, como aca
router.get('/editar/:id', productsController.editarProducto)
router.put('/editar/:id', upload.any(), productsController.update); 

// Borrar un producto
router.delete('/borrar/:id', productsController.destroy);


module.exports = router;