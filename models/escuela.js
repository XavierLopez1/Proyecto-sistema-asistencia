const modeloEscuela ={
quieryGetUsers: "SELECT * FROM alumnos",

//Se sustituye cada elemento del arreglo por cada signo de interrogacion, y se acomodan en el orden respectivo
//Si se usa 2 veces se pasa las 2 veces
quieryGetUsersByeID: `SELECT * FROM alumnos WHERE ID = ?`,
quieryDeleteUsersByeID: `UPDATE alumnos SET Activo = 'N' WHERE ID = ?`,
quieryUsersExists: `SELECT Nombre FROM alumnos WHERE Nombre = ?`,
quieryAddUser:`INSERT INTO alumnos (
    Nombre,
    Apellidos,
    Cveprof,
    Escuela,
    Docente,
    Grado,
    Materia,
    Ano,
    Mes,
    Asistencia,
    Ausencia,
    Tardanza,
    Justificacion, 
    Activo
    ) VALUES (
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?,
    ?
    )`,

quieryGetUsersInfo: `
SELECT Nombre, Apellidos, Cveprof, Escuela, Docente, Grado, Materia, Ano, Mes, Asistencia, Ausencia, Tardanza, Justificacion
FROM alumnos
WHERE Nombre = ?`,

quieryUpdateByeUsuario: `
UPDATE alumnos SET 
Nombre = ?,
Apellidos = ?,
Cveprof = ?,
Escuela = ?,
Docente = ?,
Grado = ?,
Materia = ?,
Ano = ?,
Mes = ?,
Asistencia = ?,
Ausencia = ?,
Tardanza = ?,
Justificacion = ?
WHERE Nombre = ?
`
}

module.exports = modeloEscuela