#language:es
Característica: Calculo de Cuota
                      Para el calculo de la cuota debe usarse interes simple

@mytag
 
 Escenario: Calcular Composición de la Cuota
  Cuando Capital es 600
  Y Interes es 1
  Y Plazo es 10
  Entonces CapitalCuota es 60
  Y InteresCuota es 0.60
  Y TotalCuota es 60.60

 Escenario: Calcular Composición de la Cuota
  Cuando Capital es 1000
  Y Interes es 1
  Y Plazo es 10
  Entonces CapitalCuota es 100
  Y InteresCuota es 1
  Y TotalCuota es 101
 
 
 Escenario: Calcular Composición de la Cuota
  Cuando Capital es 5000
  Y Interes es 10
  Y Plazo es 10
  Entonces CapitalCuota es 500
  Y InteresCuota es 50
  Y TotalCuota es 550.00

 


Característica: Calculo de Calendario de Pagos

 Escenario: Calcular Calendario de 10 Cuotas
  Cuando Capital es 5000
  Y Interes es 10
  Y Plazo es 10
  Entonces Calendario es una Lista de Cuotas
  Y Tiene 10 cuotas

  Escenario: Calcular Calendario de 10 Cuotas
  Cuando Capital es 5000
  Y Interes es 10
  Y Plazo es 10
  Entonces el Calendario tiene 10 Cuotas
  Y el Total Interes es 500

 Escenario: Calcular Calendario de 12 Cuotas
  Cuando Capital es 3000
  Y Interes es 20
  Y Plazo es 12
  Entonces el Calendario tiene 12 Cuotas
  Y el Total Interes es 600
  Y Total Capital es 3000

   Escenario: Calcular Calendario de 12 Cuotas con Fechas de Vencimiento
  Cuando Capital es 3000
  Y Interes es 20
  Y Plazo es 12
  Y Desembolso 15/11/2013
  Entonces el Calendario tiene 12 Cuotas
  Y Fecha de Vencimiento de la 1ra Cuota 15/12/2013
  Y Fecha de Vencimiento de la 12va Cuota 10/11/2014

   Escenario: Calcular Calendario de 12 Cuotas con Fechas de Vencimiento
  Cuando Capital es 3000
  Y Interes es 20
  Y Plazo es 10
  Y Desembolso 30/10/2013
  Entonces el Calendario tiene 10 Cuotas
  Y Fecha de Vencimiento de la 1ra Cuota 29/11/2013
  Y Fecha de Vencimiento de la 12va Cuota 26/08/2014