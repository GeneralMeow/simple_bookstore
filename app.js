const express = require('express')
const path = require('path')
//const favicon = require('serve-favicon');
const logger = require('morgan')
const cookieParser = require('cookie-parser')
const bodyParser = require('body-parser')
const pug = require('pug')

const routes = require('./routes/index')
const books = require('./routes/books')
const search = require('./routes/search')

const app = express()

//view engine setup
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'pug')

app.use(logger('dev'))
