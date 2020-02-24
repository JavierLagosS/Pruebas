package Prueba;

import java.util.*;
public class Menu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		 Crea un array de Electrodomésticos de 10 posiciones
		Scanner Leer= new Scanner(System.in);
		ArrayList<Electrodomestico> electrodomesticos = new ArrayList<>();
		
		// Mostramos las opciones si el objeto a ingresa es una lavadora , un televisor o un Electrodomestico en general
        boolean salir = false;
        int opcion; //Guardaremos la opcion del usuario
 
        while (!salir) {
            System.out.println("Eliga una de las siguientes opciones a agregar");
            System.out.println("1. Lavadora ");
            System.out.println("2. Television");
            System.out.println("3. Electrodomestico");
 
            try {
 
                System.out.println("Escribe una de las opciones");
                opcion = Leer.nextInt();
         //   	precio base, color, consumo energético (letras entre A y F) y peso.
         
                switch (opcion) {
                    case 1:
                       System.out.println("Ingresaste una Lavadora al sistema");
                       System.out.println("Cual es el precio de la lavadora?");
                       int ipreciobase= Leer.nextInt();
                       System.out.println("Cual es el color? blanco negro , rojo , azul, gris");
                       String scolor = Leer.nextLine();
                       System.out.println("cual es el consumo energetico (de la A hasta la F)");
                       
                        break;
                    case 2:
                        System.out.println("Ingresaste una Television al sistema");
                        
                        break;
                    case 3:
                        System.out.println("Ingresaste un Electrodomestico al sistema");	
                        break;

                    default:
                        System.out.println("Ingrese una opcion valida por favor ");
                }
            } catch (InputMismatchException e) {
                System.out.println("Debes insertar un número");
                Leer.next();
            }
        }
 
    }

		
		
		
	}


