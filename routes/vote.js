var express = require("express");
var router = express.Router();
const db = require("../model/helper");

router.get("/", function (req, res, next) {
    db("SELECT * FROM vote;")
      .then((results) => {
        res.send(results.data);
      })
      .catch((err) => res.status(500).send(err));
  });

  router.put("/:id", async (req, res) => {
    let voteId = req.params.id;
    let { yes, no } = req.body;

    try {
        let result = await db(`SELECT * FROM vote WHERE id = ${voteId}`);  
        if (result.data.length === 0) {
            res.status(404).send({ error: 'Data not found' });
        } else {
            let sql = `
                UPDATE vote
                SET yes = ${yes}, no = ${no}
                WHERE id = ${voteId}
            `;

            await db(sql);  
            let result = await db('SELECT * FROM vote');
            let votes = result.data;
            res.send(votes);  
        }
    } catch (err) {
        res.status(500).send({ error: err.message });
    }
});
module.exports = router;