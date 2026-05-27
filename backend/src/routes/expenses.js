const router = require('express').Router();
const { pool } = require('../config/db');
router.get('/', async (_, res) => { const [rows] = await pool.query('SELECT * FROM expenses ORDER BY expense_date DESC'); res.json(rows); });
router.post('/', async (req, res) => {
  const { category, amount, note, expense_date } = req.body;
  const [r] = await pool.query('INSERT INTO expenses(category, amount, note, expense_date) VALUES(?,?,?,?)', [category, amount, note, expense_date]);
  res.status(201).json({ id: r.insertId });
});
module.exports = router;
