const router = require('express').Router();
const { pool } = require('../config/db');
router.get('/', async (_, res) => { const [rows] = await pool.query('SELECT * FROM fields ORDER BY created_at DESC'); res.json(rows); });
router.post('/', async (req, res) => {
  const { name, area, soil_type, irrigation_source, latitude, longitude } = req.body;
  const [r] = await pool.query('INSERT INTO fields(name, area, soil_type, irrigation_source, latitude, longitude) VALUES(?,?,?,?,?,?)', [name, area, soil_type, irrigation_source, latitude, longitude]);
  res.status(201).json({ id: r.insertId });
});
module.exports = router;
