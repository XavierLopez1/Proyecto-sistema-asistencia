const {Router} = require("express")
const {getUsers, getUserByID, deleteUserByID, addUser, updateUserByUsuario} = require("../controllers/escuela")
const router = Router()


//http://localhost:4000/api/v1/escuela
//http://localhost:4000/api/v1/escuela/id/1

//GET
router.get("/", getUsers)

//Lo siguiente despues de //id es el identificador que esta declarado en controllers (la constante)
router.get("/id/:id", getUserByID)

//DELETE
router.delete("/", deleteUserByID)

//POST
router.post("/", addUser)

//PUT
router.put("/", updateUserByUsuario)

module.exports = router