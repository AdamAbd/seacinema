'use strict';
const {
  Model
} = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Movie extends Model {
    static associate(models) {
      // Define association here
      Movie.belongsToMany(models.Category, {
        through: 'MovieCategories',
        foreignKey: 'movieId',
        otherKey: 'categoryId'
      });
    }
  }
  Movie.init({
    title: DataTypes.STRING,
    description: DataTypes.TEXT,
    release_date: DataTypes.DATE,
    poster_url: DataTypes.STRING,
    age_rating: DataTypes.INTEGER,
    ticket_price: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Movie',
  });

  return Movie;
};
