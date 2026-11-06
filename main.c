/**
 * @file main.c
 * @author ltpe
 * @date 2026-11-05
 * @brief Main function
 */

#include "include/ProjectDefines.h"
#include "include/Timer/Timer.h"
#include "include/UART/Uart.h"

void ConvertReceivedCharMain(char *ReceivedChar)
{
	// Den smarte måde at få konverteret små bogstaver om til store bogstaver og
	// modsat er ved brug af Xor, som vi tidligere har set. Så kan vi klare det i
	// én linje kode.
	if ( ((*ReceivedChar >= 0x41) && (*ReceivedChar <= 0x5D)) ||
	     ((*ReceivedChar >= 0x61) && (*ReceivedChar <= 0x7D)))
	{
		*ReceivedChar = *ReceivedChar & (~Upper_Lower_Bit_Value);
	}
}

int main(void) {
    DDRB |= (1 << GreenLedBit);  // Sæt PB1 som output for den grønne LED

    // Eksempel 1: Sæt timeout til 500 ms
    Timer1_Init_ms(500);

    // Hvis du vil skifte til 250ms eller 1000ms, kalder du blot funktionen igen:
    // Timer1_Init_ms(250);
    // Timer1_Init_ms(1000);

    RS232Init();
    Enable_UART_Receive_Interrupt();

    // Aktivér globale interrupts
    sei();

    while (1) {
        // Hovedloop kan køre her uafhængigt
    }
}
