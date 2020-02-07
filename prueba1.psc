
	Proceso sin_titulo
		Repetir
			// mostrar menu
			Limpiar Pantalla
			Escribir "Menú de Prueba"
			Escribir "   1. Secuencial"
			Escribir "   2. Condicional si entonces"
			Escribir "   3. Condicional si entonces anidado"
			Escribir "   4. Condicional Segun"
			Escribir "   5. Repetitiva Mientras"
			Escribir "   6. Repetitiva Repetir"
			Escribir "   7. repetitiva Para"
			Escribir "   8. Arreglo Simple"
			Escribir "   9. Arreglo Bidimensional"
			Escribir "  10. Salir"
			// ingresar una opcion
			Escribir "Elija una opción (1-10): "
			Leer OP
			// procesar esa opción
			Segun OP Hacer
				1:
					Escribir ' bienvenido usted elegio la primera opcion' ,  '   bienvenido al juego'
					Escribir ' ingrese primer numero'
					leer n1
					Escribir ' ingrese segundo numero'
					Leer n2
					Escribir 'ingrese tercer numero'
					leer n3
					promedio= (n1+n2+n3)/3
					Escribir ' El promedio de los 3 numeros es = ' promedio
				2:
					// En un lugar tradicional antiguo se pedirá Nombre y 
					//Género de la persona, siendo el género determinante para derivarlo al baño de mujeres u hombres.
					Escribir 'ingrese su nombre'
					leer n
					Escribir ' ingrese su genero' , ' M = masculino o F= Femenino'
					leer g
					
					Si g=M o g=m Entonces
						Escribir "Usted elegio el sexo Masculino por lo tanto le corresponde utilizar el bano de hombres"
					SiNo
						Escribir "Usted elegio el sexo Femenino por lo tanto le corresponde utilizar el bano de mujeres"
					Fin Si
					
				3:
					//Función 3: Considerar función 2, y adicionar cobro de $250 si desea utilizar el baño o $ 2.500 si desea utilizar la ducha. -
					Definir  d Como Caracter
					Escribir 'ingrese su nombre'
					leer n
					Escribir ' ingrese su genero' , ' M = masculino o F= Femenino'
					leer g
					escribir ' desea ademas ducharse ( si o no) ?' 
					leer d
					// pasamos toda la frase a minusculas para no tener que preguntar 2 veces 
					d<-Minusculas(d)
					g<- minusculas(g)
					
					Si  g="m" y d="si" Entonces
						Escribir "Usted elegio el sexo Masculino por lo tanto le corresponde utilizar el bano de hombres"
						Escribir " ustede eligio ducharse por lo que tendra que cancelar $2.500 Clp " 
						
					SiNo
						Si g="m" y d="no" Entonces
							Escribir "Usted elegio el sexo Masculino por lo tanto le corresponde utilizar el bano de hombres"
							Escribir " ustede eligio Pasar al bano  por lo que tendra que cancelar $250 Clp " 
						SiNo
							Si g="f" y d="si" Entonces
								Escribir "Usted elegio el sexo Femenino por lo tanto le corresponde utilizar el bano de Mujeres"
								Escribir " ustede eligio ducharse por lo que tendra que cancelar $2.500 Clp " 
							SiNo
								Si g="f" y d="no" Entonces
									Escribir "Usted elegio el sexo Femenino  por lo tanto le corresponde utilizar el bano de Mujeres"
									Escribir " ustede eligio Pasar al bano  por lo que tendra que cancelar $250 Clp " 
								SiNo
									Escribir  ' elija una opcion valida '
								Fin Si
							Fin Si
						Fin Si
						
					Fin Si	
				4:
					// mostrar menu
					Escribir "Favor ingrese un numero del 1 al 10 "
					Leer OP
					// procesar esa opción
					Segun OP Hacer
						1:
							Escribir "Usted ingreso el numero uno "
							
						2:
							Escribir "Usted ingreso el numero dos "
						3:
							Escribir "Usted ingreso el numero tres "
						4:
							Escribir "Usted ingreso el numero cuatro "
						5:
							Escribir " Usted ingreso el numero cinco  "
						6:
							Escribir " Usted ingreso el numero seis  "
						7:
							Escribir " Usted ingreso el numero siete  "
						8:
							Escribir " Usted ingreso el numero ocho  "
						9:
							Escribir " Usted ingreso el numero nueve  "
						10:
							Escribir " Usted ingreso el numero diez  "
							
						De otro modo:
							Escribir "Favor elegir un numero del 1 al 10 "
					FinSegun
				5:
					//Función 5: Ingresar N números, detener el ingreso al digitar un cero, 
					// terminado el proceso mostrar la cantidad de números ingresados excluyendo el 0,
					//finalmente, calcular el promedio de estos números.
					Escribir ' ingrese un numero '
					n=1
					Mientras n>0 Hacer
						leer n 
						cont=cont+1
						sn=sn+n
						
					Fin Mientras
					p= sn/(cont-1)
					escribir ' el promedio de estos numeros es ' p 
					escribir sn 
					escribir cont
				6:
					//Función 6: Ingresar N nombres con “J”, cuando ingrese el nombre "Juan" me diga “Ganaste”
					// y muestre la cantidad de intentos antes de haber ganado.
					definir k como caracter
					escribir ' adivina nombres con j'
					Repetir
						Escribir "ingrese un Nombre"
						leer k
						cont=cont+1
						k=minusculas(k)
					Hasta Que k="juan"
					Escribir " Felcidades,  ganastes  el nombre a adivinar era Juan"
					Escribir " la cantidad de intentos que usastes " , cont
				7:   
					//unción 7: Para un máximo de 10 personas preguntar su nombre y mostrar los que repiten más de 1 vez, 
					//en caso que los nombres no se repitan mostrar que no existen nombres repetidos
					dimension nom[10]
					j=1
					Para i<-1 Hasta 10 Con Paso 1 Hacer
						Escribir 'ingrese Su nombre   ', i
						leer nom[i]
						nom[i]=nom[j]
						j=j+1
					Fin Para
					
					Para i<-1 Hasta 10 Con Paso 1 Hacer
						Para j<-1 Hasta 10 Con Paso 1 Hacer
							Si nom[i]= nom[j]  Entonces
								Si i=j Entonces
									a=a+1
								SiNo
									Escribir ' los nombres  ', nom[i] , '  se repiten'
									nom[i]='ya no sirve '
								Fin Si
								
							Fin Si
							
						Fin Para
					Fin Para
				8:
					//Función 8: Pedir el tamaño de un arreglo en el cual debo ingresar la lista de Talentos Digitales Full Satck Java
					//para luego desplegarlos en pantalla con un máximo de 5 alumnos por línea
					definir tamanio Como Entero
					tamanio=5
					dimension num[tamanio]
					Para i<-1 Hasta tamanio Con Paso 1 Hacer
						Escribir 'ingrese un Nombre de un alumno de Talent Digital'
						leer num[i]
					Fin Para
					Para i<-1 Hasta tamanio Con Paso 1 Hacer
						Escribir num[i]
						
					Fin Para
					
				9:
					Definir num como caracter
					definir  h como entero
					Escribir  ' cuantos alumnos registrara ?'
					leer h
					Dimension num[h,4]
					
					
					PARA columna<-1 HASTA h CON PASO 1 Hacer
						PARA fila<-1 Hasta 4 con paso 1 Hacer
							Escribir 'introduce el valor de la columna ' ,  columna , ' y  ' , fila
							Leer num[columna,fila]
						FinPara
					FinPara
					
					PARA columna<-1 HASTA h CON PASO 1 Hacer
						Para fila<-1 Hasta 4 Con Paso 1  Hacer
							Escribir " nombre" , "apellido" " telefono" "email"
							escribir num[columna,fila]
						Fin Para
						
					FinPara
					
				10:
					Escribir "Gracias, vuelva prontos"
				De otro modo:
					Escribir "Opción no válida"
			FinSegun
			Escribir "Presione enter para continuar"
			Esperar Tecla
		Hasta Que OP=10
FinProceso


