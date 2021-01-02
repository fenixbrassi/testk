# Las respuestas a las preguntas del 1 - 4
# estan en los archivos contenidos en la ruta /PrimeraParteTestK

#Respuesta a la pregunta 5
5. Explain the difference between calling super and super() methods (OOP)

La diferencia es que Super sin argumentos envia todos los parametros y super con
parentesis no envia parametros.

##############################################################################
##############################################################################
##############################################################################
##############################################################################

#Para levantar la aplicación es necesario ejecutar lo siguiente
#1) bundle install
#2) rake db:migrate

#Esta app corre sobre lo mas nuevo hasta el momento de rails (Rails 6.0.3.4)
#y ruby (ruby 2.7.2p137)

###########################ALGORITMO para SHORTPATH ###########################
#El algoritmo que utiliza para crear el shortestpath es seleccionar aleatoriamente
#6 veces una letra del abecedario con la siguiente expresion
#(0...6).map { ('a'..'z').to_a[rand(26)] }.join


##############################BASE DE DATOS
#Base de datos es SQLite
