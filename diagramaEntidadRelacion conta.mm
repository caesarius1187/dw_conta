erDiagram
    Estudios ||--|{ GrupoClientes : contiene
    GrupoClientes ||--|{ Clientes : contiene
    Clientes ||--|{ Empleados : emplea
    Empleados ||--|{ ValorRecibos : tiene
    Estudios {
        string id
        string name
        string email
    }
    GrupoClientes {
        string id
        string name
    }
    Clientes {
        string id
        string name
        string email
    }
    Empleados {
        string id
        string Nombre
    }
    ValorRecibos {
        string id
        string conceptoxconvenio_id
        float monto
        string periodo
    }
