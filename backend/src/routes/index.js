const router = require('express').Router();
router.use('/fields', require('./fields'));
router.use('/expenses', require('./expenses'));
module.exports = router;
