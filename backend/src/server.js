require('dotenv').config();
const express = require('express');
const cors = require('cors');
const helmet = require('helmet');
const { pool } = require('./config/db');
const routes = require('./routes');

const app = express();
app.use(helmet());
app.use(cors());
app.use(express.json({ limit: '2mb' }));
app.use('/api', routes);
app.get('/health', async (_, res) => {
  await pool.query('SELECT 1');
  res.json({ ok: true });
});

app.listen(process.env.PORT || 4000, () => console.log('API running'));
