import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;
import java.util.Random;	// Generador Aleatorio
import java.util.Scanner;	// Ingresa informaicon por pantalla

public class DataG {

    public static void main(String[] args) {
        
		//***********************************************************************************************
		Scanner scanner = new Scanner(System.in);

		//##################################################
		System.out.print("Ingrese el Sexo 0=XY , 1=XX: ");
        int sexo = scanner.nextInt();
		
		//##################################################
		
		System.out.print("Ingrese el valor minimo del Edad: ");
        int minimoEdad = scanner.nextInt();

        System.out.print("Ingrese el valor maximo del Edad: ");
        int maximoEdad = scanner.nextInt();
		
		//##################################################
		
		System.out.print("Ingrese el valor minimo del Estatura: ");
        int minimoEstatura = scanner.nextInt();

        System.out.print("Ingrese el valor maximo del Estatura: ");
        int maximoEstatura = scanner.nextInt();	
		
		//##################################################	
		
		System.out.print("Ingrese el valor minimo del Peso: ");
        int minimoPeso = scanner.nextInt();
		
        System.out.print("Ingrese el valor maximo del Peso: ");
        int maximoPeso = scanner.nextInt();
		
		//##################################################
		
		System.out.print("Ingrese el rango minimo de la Comuna: ");
        int minimoComuna = scanner.nextInt();

        System.out.print("Ingrese el rango maximo de la Comuna: ");
        int maximoComuna = scanner.nextInt();
		
		//##################################################
		
        System.out.print("Ingrese la cantidad de datos a generar: ");
        int cantidadDatos = scanner.nextInt();

        scanner.close();
		//************************************************************************************************		
		
		
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
        String fechaHora = dateFormat.format(new Date());
        String nombreArchivo = fechaHora + "_datos_aleatorios.txt";

		
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(nombreArchivo));

            for (int i = 0; i < cantidadDatos; i++) {
                String dato = generarDatoAleatorio(sexo, minimoEdad, maximoEdad, minimoPeso, maximoPeso, minimoEstatura, maximoEstatura, minimoComuna, maximoComuna);
                writer.write(dato);
                writer.newLine();
            }

            writer.close();
            System.out.println("Datos aleatorios generados y escritos en el archivo: " + nombreArchivo);
        } catch (IOException e) {
            System.err.println("Error al escribir en el archivo: " + e.getMessage());
        }
    }

    private static String generarDatoAleatorio(int sexo, int minimoEdad, int maximoEdad, int minimoEstatura, int maximoEstatura, int minimoPeso, int maximoPeso, int minimoComuna, int maximoComuna  ) {
        Random random = new Random();
		
        int numeroAleatorioEdad = random.nextInt(maximoEdad - minimoEdad + 1) + minimoEdad;
		int numeroAleatorioEstatura = random.nextInt(maximoEstatura - minimoEstatura + 1) + minimoEstatura;		
		int numeroAleatorioPeso = random.nextInt(maximoPeso - minimoPeso + 1) + minimoPeso;
		int numeroAleatorioComuna = random.nextInt(maximoComuna - minimoComuna + 1) + minimoComuna;
		
		return sexo + "	" + numeroAleatorioEdad + "	" + numeroAleatorioEstatura + "	" + numeroAleatorioPeso + "	" + numeroAleatorioComuna ;
    
	}
}
