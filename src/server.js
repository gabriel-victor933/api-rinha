import express from "express"

const app = express();

app.get("/test",(req,res)=>res.send("ok"));

app.listen(9999,()=>console.log("running server!"));