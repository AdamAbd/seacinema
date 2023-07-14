require("dotenv").config();

var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require('cors');

const responseHelpers = require('./helper/ResponseHelper').helper;

var indexRouter = require('./routes/index');
var moviesRouter = require('./routes/movies');

var app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(cors());
app.use(responseHelpers());

app.use('/', indexRouter);
app.use('/api/v1', moviesRouter);

module.exports = app;
