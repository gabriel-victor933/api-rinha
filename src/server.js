import express from "express"
import { validateBody } from "./middlewares/validateBody.js";
import { postTransaction } from "./controllers/serverController.js";

const app = express();
app.use(express.json())

app.post("/clientes/:id/transacoes",validateBody,postTransaction);

app.listen(9999,()=>console.log("running server!"));