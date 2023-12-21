Algoritmo  CalcularCostoProducto
	//Declaracion Variables
	Definir precioOriginal, descuentoCupon, iva, descuentoCantidad, peso, costoEnvio, costoFinal, precioConDescuento, precioConIva, precioConDescuentoCantidad Como Real
	Definir cantidad Como Entero
	Definir destinoEnvio como Cadena
	
	//Entrada de datos
	Escribir "Ingrese el precio original del producto: "
	Leer precioOriginal
	
	Escribir "Ingrese el porcentaje de descuento del cupón: "
	Leer descuentoCupon
	
	Escribir "Ingrese el porcentaje de IVA: "
	Leer iva
	
	Escribir "Ingrese la cantidad de productos: "
	Leer cantidad
	
	Escribir "Ingrese el peso del paquete en kg: "
	Leer peso
	
	Escribir "Ingrese el destino del envío: "
    Leer destinoEnvio
	
	// Procesamiento
    // Aplicar descuento del cupón
    precioConDescuento = precioOriginal - (precioOriginal * (descuentoCupon / 100))
	
	// Aplicar IVA
    precioConIva = precioConDescuento * (1 + (iva / 100))
	
	// Aplicar descuento por cantidad
    descuentoCantidad = 0
    Si cantidad >= 2 Entonces
        descuentoCantidad = precioConIva * 0.05
    FinSi
	
	precioConDescuentoCantidad = precioConIva - descuentoCantidad
	
	// Calcular costo de envío
    costoEnvio = 10 + (2 * peso)
	
	// Calcular costo final
    costoFinal = (precioConDescuentoCantidad * cantidad) + costoEnvio
	
	// Salida de resultados
    Escribir "Costo final del producto: $", costoFinal
    Escribir "Desglose: "
    Escribir "  - Descuento: $", descuentoCupon
    Escribir "  - Impuestos: $", precioConIva - precioConDescuentoCantidad
    Escribir "  - Descuento por cantidad: $", descuentoCantidad
    Escribir "  - Costo de envío: $", costoEnvio
	
FinAlgoritmo
    
