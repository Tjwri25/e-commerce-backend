// import models
const Product = require('../models/products');
const Category = require('../models/category');
const Tag = require('../models/tag');
const ProductTag = require('../models/productTag');

// Products belongsTo Category
Product.belongsTo(Category, {
  foreignKey: "category_id"
})

// Categories have many Products 
Category.hasMany(Product, {
  foreignKey: "category_id"
})

// Products belongToMany Tags (through ProductTag)
Product.belongsToMany(Tag, {
  through: ProductTag,
  foreignKey: "product_id"
})
// Tags belongToMany Products (through ProductTag)
Tag.belongsToMany(Product, {
  through: ProductTag,
  foreignKey: "tag_id"
});

module.exports = {
  Product,
  Category,
  Tag,
  ProductTag,
};