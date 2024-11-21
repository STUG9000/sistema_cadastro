const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const db = require('./sequelize');
const cadastroRoutes = require('./routes/cadastros');

const app = express();

app.use(cors());
app.use(bodyParser.json());

app.use('/cadastros', cadastroRoutes);

const PORT = 3000;
db.sync().then(() => {
    app.listen(PORT, () => console.log(`Servidor rodando em http://localhost:${PORT}`));
});