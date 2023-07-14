var express = require('express');
var router = express.Router();
var models = require('../models');
var Category = models.Category; // Add this line to import the Category model

/* GET movies listing. */
router.get('/movies', function (req, res, next) {
  models.Movie.findAll()
    .then(movies => res.respond(movies))
    .catch(err => res.failServerError(err));
});

/* GET movie by ID. */
router.get('/movies/:id', function (req, res, next) {
  models.Movie.findByPk(req.params.id, {
    include: [
      {
        model: Category,
        attributes: ['title'] // Add this line to include the 'title' column from the 'Categories' table
      }
    ]
  })
    .then(movie => res.respond(movie))
    .catch(err => res.failServerError(err));
});

module.exports = router;
