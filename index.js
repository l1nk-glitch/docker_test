const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("This is inside a container!");
});

app.listen(port, () => {
  console.log(`Look! We are listening on port ${port}!`);
});

