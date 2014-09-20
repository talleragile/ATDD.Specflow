#language:es

Característica: Amortización de Cuotas

Escenario: Cancelación de la Primera Cuota
Dado Credito con Capital 5000
Y Interes 10
Y Plazo 10
Y No Registra Pagos
Y No esta vencido
Cuando Se Paga 550.00
Entonces La 1ra Cuota debe estar Cancelada

Escenario: Amortización de la Primera Cuota
Dado Credito con Capital 5000
Y Interes 10
Y Plazo 10
Y No Registra Pagos
Y No esta vencido
Cuando Se Paga 300.00
Entonces La 1ra Cuota NO debe estar Cancelada
Y Saldo Capital es 250.00
Y Saldo Interes es 0

Escenario: Amortización de la Primera Cuota con Mora
Dado Credito con Capital 5000
Y Interes 10
Y Plazo 10
Y No Registra Pagos
Y Esta Vencido 30 dias
Cuando Se Paga 300.00
Entonces La 1ra Cuota NO debe estar Cancelada
Y Saldo Capital de la Primera cuota es 280.00
Y Saldo Interes de la Primera cuota es 0
Y Tiene Mora Pagada de la Primera cuota por 30

Escenario: Amortización de la Primera Cuota con Mora
Dado Credito con Capital 5000
Y Interes 10
Y Plazo 10
Y No Registra Pagos
Y Esta Vencido 30 dias
Cuando Se Paga 1130.00
Entonces La 1ra Cuota debe estar Cancelada
Y La 2da Cuota debe estar Cancelada

Escenario: Amortización de la Primera Cuota con Mora
Dado Credito con Capital 5000
Y Interes 10
Y Plazo 10
Y No Registra Pagos
Y Esta Vencido 30 dias
Cuando Se Paga 1200.00
Entonces La 1ra Cuota debe estar Cancelada
Y La 2da Cuota debe estar Cancelada
Y su Saldo Capital debe ser 3980


Escenario: Amortizacion de un Crédito sin Plan de Pagos
Dado un Credito de 5000 de Capital
Y Interes 10
Y Plazo 10
Y Sin Calendario de Pagos
Cuando se trata de Amortizar 1000 Soles
Entonces debe lanzar una Excepcion de tipo NoCalendarRegisteredException

