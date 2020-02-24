package Prueba;

public class Electrodomestico {
	//Sus atributos son precio base, color, consumo energético (letras entre A y F) y peso.
	//Indica que se podrán heredar.
	
	protected int iprecioBase;
	protected String scolor;
	protected char cconsumoEnergetico;
	protected double dpeso;
	
// Creamos las constantes segun norma en Mayuscula,
//	Por defecto, el color será blanco, el consumo energético será F, el precioBase es de
//	$100.000 y el peso de 5 kg. Usar constantes para ello
	protected final static String CONSTANTE_SCOLOR= "blanco";
	protected final static char CONSTANTE_CCONSUMOENERGETICO='F';
	protected final static int CONSTANTE_IPRECIOBASE=100000;
	protected final static double CONSTANTE_DPESO=5;

//	 Los colores disponibles son blanco, negro, rojo, azul y gris. No importa si el nombre está
//	 en mayúsculas o en minúsculas
	
	
// Los constructores que se implementarán serán
// Constructor por defecto
	public Electrodomestico(){
        this(CONSTANTE_IPRECIOBASE, CONSTANTE_DPESO, CONSTANTE_CCONSUMOENERGETICO , CONSTANTE_SCOLOR);
    }
	
//	Un constructor con el precio y peso. El resto por defecto.
	 public Electrodomestico(int iprecioBase, double dpeso){
	        this(iprecioBase, dpeso, CONSTANTE_CCONSUMOENERGETICO, CONSTANTE_SCOLOR);
	    }
	 
//  Un constructor con todos los atributos	 
	public Electrodomestico(int iprecioBase, double dpeso, char cconsumoEnergetico, String scolor) {
	this.iprecioBase = iprecioBase;
	this.dpeso= dpeso;
	ComprobarConsumoEnergetico(cconsumoEnergetico);
	comprobarColor(scolor);
	
	}
// Los métodos que implementara serán:
//  Métodos get de todos los atributos y los setters aprovechando

	public int getIprecioBase() {
		return iprecioBase;
	}

	public void setIprecioBase(int iprecioBase) {
		this.iprecioBase = iprecioBase;
	}

	public String getScolor() {
		return scolor;
	}

	public void setScolor(String scolor) {
		this.scolor = scolor;
	}

	public char getCconsumoEnergetico() {
		return cconsumoEnergetico;
	}

	public void setCconsumoEnergetico(char cconsumoEnergetico) {
		this.cconsumoEnergetico = cconsumoEnergetico;
	}

	public double getDpeso() {
		return dpeso;
	}

	public void setDpeso(double dpeso) {
		this.dpeso = dpeso;
	}

	public static String getConstanteScolor() {
		return CONSTANTE_SCOLOR;
	}

	public static char getConstanteCconsumoenergetico() {
		return CONSTANTE_CCONSUMOENERGETICO;
	}

	public static int getConstanteIpreciobase() {
		return CONSTANTE_IPRECIOBASE;
	}

	public static double getConstanteDpeso() {
		return CONSTANTE_DPESO;
	}
//  comprobarConsumoEnergetico(char letra): comprueba que la letra es correcta,
//	sino es correcta usara la letra por defecto. Se invocará al crear el objeto y no
//	sera visible.	
	
	public static char ComprobarConsumoEnergetico(char consumoEnergetico) {
	       
		
			switch (consumoEnergetico) {
            case 'A' :
               System.out.println("Has seleccionado la opcion A");
               consumoEnergetico= 'A';
               
                break;
            case 'B':
                System.out.println("Has seleccionado la opcion 2");
                consumoEnergetico= 'B';
                break;
            case 'C':
                System.out.println("Has seleccionado la opcion 3");
                consumoEnergetico= 'C';
                break;
            case 'D':
            	consumoEnergetico= 'D';
                break;
            case 'E':
            	consumoEnergetico= 'E';
                break;
            case 'F':
            	consumoEnergetico= 'F';
                break;
            default:
            	consumoEnergetico= CONSTANTE_CCONSUMOENERGETICO;
                
            	System.out.println("Se ha asignado el valor por defecto  " +CONSTANTE_CCONSUMOENERGETICO);
            	
                break;
        }
    	
		
		return consumoEnergetico;   
		
        
	}
	
//	comprobarColor(String color): comprueba que el color es correcto, sino lo es
//	usa el color por defecto. Se invocará al crear el objeto y no será visible.	
	  private void comprobarColor(String scolor){
		   
	        //Colores disponibles
	        String colores[]={"blanco", "negro", "rojo", "azul", "gris"};
	        boolean encontrado=false;
	  
	        for(int i=0;i<colores.length && !encontrado;i++){
	              
	            if(colores[i].equals(scolor)){
	                encontrado=true;
	            }
	              
	        }
	          
	        if(encontrado){
	            this.scolor=scolor;
	        }else{
	            this.scolor=CONSTANTE_SCOLOR;
	        }
	          
	          
	    }
//	  precioFinal(): según el consumo energético, aumentara su precio, y según su
//	  tamaño también.
	public int precioFinal() {
		
			double aux = 0, precioFinal = 0;
			switch (cconsumoEnergetico) {
		    case 'A' :
		       aux+= 100;
		       
		        break;
		    case 'B':
		    	aux+= 80;
		        
		        break;
		    case 'C':
		    	aux+= 60;
		        break;
		    case 'D':
		    	aux+= 50;
		        break;
		    case 'E':
		    	aux+= 30;
		    	 break;
		    case 'F':
		    	aux+= 10;
		        break;
			}
		  if (0<dpeso && 19<=dpeso) {
		        aux+= 10;
		}
		  if (19<dpeso && 49<=dpeso) {
			    aux+=50;
			}
		  if (49<dpeso && 79<=dpeso) {
			    aux+=80;
			}
		  if (79<dpeso ) {
			    aux+=100;
			}
		  
		  
		  
		return (int) precioFinal;
		   
		}
	
	
	
	}
