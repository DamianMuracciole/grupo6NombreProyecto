const express = require('express')
const app = express();
const path = require("path")
const methodOverride =  require('method-override'); // Pasar poder usar los métodos PUT y DELETE

// Template Engine EJS
app.set('view engine', 'ejs')
//app.set('views', path.join(__dirname, 'views'));
// Testeando esta desde el proyecto que mandaron como ejemplo
app.set('views', path.resolve(__dirname, './src/views'));
// let dir = path.resolve(__dirname, 'src')
// console.log("El file queda en: ", dir);

// Archivos de rutas || NO HACE FALTA PONER EL .js AL FINAL PARECE...
const rutasMain = require('./src/routes/mainRoutes')
const rutasProductos = require('./src/routes/productRoutes.js')
const rutasUsers = require('./src/routes/userRoutes')

// Configuracion Puerto
const port = process.env.PORT || 3000;
const publicPath = path.resolve(__dirname, 'public');
app.use( express.static(publicPath) );
app.use(methodOverride('_method')); // Pasar poder pisar el method="POST" en el formulario por PUT y DELETE

// Para los formulatios POST
app.use(express.urlencoded({ extended: false }))
app.use(express.json());

// Confirmacion del Servidor Corriendo
app.listen(port, () => {
        console.log(`Servidor corriendo en el puerto ${port}!!`);
    }
);

// Archivos de rutas
// Main
app.use('/', rutasMain)

// Rutas Productos
app.use('/', rutasProductos)

// Rutas Usuarios
app.use('/', rutasUsers)

// Para la 404 - La vista que se va a cargar es la de not-found
// Tiene que ir despues de definir todas las rutas.
app.use((req, res, next) => {
    res.status(404).render("main/404")
})




// app.get('/carro', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/productCart.html'));
//     }
// );
// app.get('/crearProducto', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/crearProducto.html'));
//     }
// );
// app.get('/editarProducto', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/editarProducto.html'));
//     }
// );
















// Rutas Viejas
// app.get('/productCart', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/productCart2.html'));
//     }
// );

// app.get('/carro', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/productCart.html'));
//     }
// );

// app.get('/productDetail', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/productDetail.html'));
//     }
// );


// app.get('/comoComprar', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/comoComprar.html'));
//     }
// );


// app.get('/*', (req, res) => {
//     res.sendFile(path.resolve(__dirname, './views/404.html'));
//     }
// );
