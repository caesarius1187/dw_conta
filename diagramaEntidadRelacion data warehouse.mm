erDiagram
    dwSueldos |{--|| dwContribuyentes : tiene
    dwSueldos |{--|| dwEstudios : tiene
    dwContribuyentes |{--|| dwEstudios : tiene
    dwEstudios
    dwTiempos ||--|{ dwSueldos : tiene

    dwSueldos {
        string id
        int dwTiempo_id
        int dwContribuyente_id
        int cantEmpleados
        date fecha
        string periodo
    }
    dwContribuyentes {
        string id
        string name
        string email
    }
    dwTiempos {
        string id
        string mes
        string anio
        string periodo
        date fecha
    }
    dwEstudios {
        string id
        string nombre
    }