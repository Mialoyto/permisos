USE linofino;

CALL spu_personas_registrar (
    @idpersona,
    'Contreras Anicama',
    'Luis',
    '987654321',
    '87654321',
    ''
);

SELECT @idpersona AS 'idpersona';

CALL spu_usuarios_registrar (
    @idusuario,
    1,
    'ruben',
    '123456789',
    'ADM',
    1
);



CALL spu_usuarios_registrar (
    @idusuario,
    1,
    'jose',
    '123456789',
    'SUP',
    2
);

CALL spu_usuarios_registrar (
    @idusuario,
    1,
    'luis',
    '123456789',
    'COL',
    3
);

SELECT @idusuario AS 'idusuario';

-- claveacceso: SENATI123
UPDATE usuarios
SET
    claveacceso = '$2y$10$tr6zrOON.xDAhiEL20ywneAQ0UCdKT6GEawhNQywO0/T8MN6MZ2hG';

SELECT * FROM personas;

SELECT * FROM usuarios;

SELECT * FROM perfiles;