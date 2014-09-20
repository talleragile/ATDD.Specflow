#language:es

Característica: Creación de Creditos

Escenario: Crear un Credito con Capital Cero

Dado un Nuevo Credito
Cuando el Capital es Menor o Igual que Cero
Entonces debe lanzar una Exception CapitalZeroNotAllowedException

Dado un Nuevo Crédito
Cuando el interes es Menor o Igual que Cero
Entonces debe lanzar una Exception InvalidRateException

Dado un Nuevo Crédito
Cuando el plazo es Menor o Igual que Cero
Entonces debe lanzar una Exception InvalidTermException
