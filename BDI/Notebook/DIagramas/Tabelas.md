erDiagram
    PESSOA {
        int cdpessoa PK
        varchar(100) nome
        varchar(30) fone
    }
    
    TURMA {
        varchar(1) cdturma PK
        varchar(100) nome
        int profe FK
    }
    
    PARTICIPANTE {
        int cdpessoa "PK,FK"
        varchar(1) cdturma "PK,FK"
    }
