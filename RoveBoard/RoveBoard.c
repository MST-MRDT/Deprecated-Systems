// Missouri Science and Technology Mars Rover Design Team 2015_2016
//
// Author: Judah Schad jrs6w7@mst.edu
//
// mrdt::rovWare
#include "RoveBoard.h"


//C lib
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"

//Rtos Kernel Module Instance Api
//#include <ti/sysbios/knl/Task.h>
//#include <ti/sysbios/knl/Swi.h>
//#include <ti/sysbios/knl/Clock.h>
//#include <ti/sysbios/knl/Semaphore.h>
//TODO #include <ti/drivers/Watchdog.h>

//CCS TI config
#include <xdc/runtime/System.h>

//TODO Clock and Timer Instances
//void roveBoard_DelayMilliSec(uint32_t milliseconds);
//void roveBoard_DelayMicroSec(uint32_t microseconds);



/*TODO Reed, Connor, Owen GPIO Advice??
enum RoveGpioDev16ShortHand {
    PORT_E = GPIO_PORTE_BASE
    ,PORT_H = GPIO_PORTH_BASE
    ,PORT_K = GPIO_PORTK_BASE
    ,PORT_L = GPIO_PORTL_BASE
    ,PORT_M = GPIO_PORTM_BASE
    ,PIN_0 = GPIO_PIN_0
    ,PIN_1 = GPIO_PIN_1
    ,PIN_2 = GPIO_PIN_2
    ,PIN_3 = GPIO_PIN_3
    ,PIN_6 = GPIO_PIN_6
    ,PIN_7 = GPIO_PIN_7
};//end enum



typedef struct ROVE_GPIO_Config   *roveGPIO_Handle
typedef struct roveGPIO_Handle {
    uint32_t port;
    uint8_t pin;
} roveGPIO_Handle;
roveGPIO_Handle roveBoard_GPIO_Open(roveGPIO_Handle gpio, uint32_t gpio_port, uint8_t gpio_pin) {

    gpio->port = gpio_port;
    gpio->pin = gpio_pin;
//TODO
    return gpio;
};//end fnctn
void roveBoard_GPIO_digitalWrite(roveGPIO_Handle gpio_pin, uint8_t digital_value) {

    uint8_t pin_value = 0;

    if(digital_value > 0) {

        pin_value = ~0;
    }//end if

    GPIOPinWrite(gpio_pin->port, gpio_pin->pin, pin_value);
}//endfnctn
*/



rovePWM_Handle roveBoard_PWM_open(unsigned int pwm_index, unsigned int period_in_microseconds){

    PWM_Handle pwmHandle;
    PWM_Params pwmParams;
    PWM_Params_init(&pwmParams);
    //TODO Phase Align params
    pwmParams.period = period_in_microseconds;

    pwmHandle = PWM_open(pwm_index, &pwmParams);
    if (pwmHandle == NULL) {
        System_abort("Error opening the PWM\n");
    }//endif

    return pwmHandle;
}//endfnctn

void roveBoard_PWM_write(rovePWM_Handle tiva_pin, uint32_t duty_in_microseconds) {

    PWM_setDuty(tiva_pin, duty_in_microseconds);
}//endfnctn



roveUART_Handle roveBoard_UART_open(unsigned int uart_index, unsigned int baud_rate){

    UART_Handle uartHandle;
    UART_Params uartParams;
    UART_Params_init(&uartParams);
    uartParams.readReturnMode = UART_RETURN_FULL;
    uartParams.readMode = UART_MODE_BLOCKING;
    uartParams.readEcho = UART_ECHO_OFF;
    uartParams.baudRate = baud_rate;

    uartHandle = (UART_Handle)UART_open(uart_index, &uartParams);
    if (uartHandle == NULL) {
        System_abort("Error opening the UART\n");
    }//endif

    return uartHandle;
}//endfnct

//rove to Tiva Read/Write Hardware I/O Module Wrappers
roveBoard_ERROR roveBoard_UART_write(roveUART_Handle uart, void* write_buffer, size_t bytes_to_write) {

    //roveUARTWrite timing issue?
    //roveDelay_MilliSec(1);
    int bytes_written = UART_write(uart, write_buffer, bytes_to_write);

    if(bytes_written < 0){
        return ROVE_BOARD_ERROR_UNKNOWN;
    }//end if

    return ROVE_BOARD_ERROR_SUCCESS;
}//endfnctn

roveBoard_ERROR roveBoard_UART_read(roveUART_Handle uart, void* read_buffer, size_t bytes_to_read) {

    //roveUARTWrite timing issue?
    //roveDelay_MilliSec(1);

    int bytes_read = UART_read(uart, read_buffer, bytes_to_read);

    if(bytes_read < 0){
      return ROVE_BOARD_ERROR_UNKNOWN;
    }//end if

    return ROVE_BOARD_ERROR_SUCCESS;
}//endfnctn


/*
 * //typedef CCP_Handle roveCCP_Handle;
roveCCP_Handle ccpHandle;
roveCCP_Params ccpParams;
roveCCP_Handle roveCCP_open(ccp_index, &ccpParams);

roveCCP_Handle roveBoard_CCP_open(unsigned int ccp_index, unsigned int ccp_sample_period, unsigned int init_flag){

    roveCCP_Handle ccpHandle;
    roveCCP_Params ccpParams;
    roveCCP_Params_init(&ccpParams);

    //TODO: flags
    //uartParams.readReturnMode = roveCCP_RETURN_FULL;
    //uartParams.readMode = UART_MODE_BLOCKING;
    //uartParams.readEcho = UART_ECHO_OFF;

    ccpParams.samplePeriod = ccp_sample_period;

    ccpHandle = (roveCCP_Handle)roveCCP_open(ccp_index, &ccpParams);
    if (ccpHandle == NULL) {
        System_abort("Error opening the CCP\n");
    }//endif

    return uartHandle;
}//endfnct



//Todo int roveTIVAWARE_CCP_read(ccp, read_buffer, read_flag);
roveBoard_ERROR roveBoard_CCP_read(roveCCP_Handle ccp, void* read_buffer, unsigned int read_flag) {

    //roveUARTWrite timing issue?
    //roveDelay_MilliSec(1);

    int bytes_read = roveTIVAWARE_CCP_read(ccp, read_buffer, read_flag);

    if(bytes_read < 0){
      return ROVE_BOARD_ERROR_UNKNOWN;
    }//end if

    return ROVE_BOARD_ERROR_SUCCESS;
}//endfnctn

*/




typedef struct ROVE_ADC_Config
{
    uint32_t roveBaseAddr;
} ROVE_ADC_Config;

typedef struct ROVE_ADC_Config   *roveADC_Handle;

// ADC_0 : S_SQR 1x6
// TODO roveADC_Handle* roveBoard_InitAdcCFG(UInt adc_index , UInt adc_cfg??);
roveADC_Handle roveBoard_ADC_open(unsigned int adc_index, unsigned int adc_flags);

roveADC_Handle roveBoard_ADC_open(unsigned int adc_index, unsigned int adc_flags)
{
    //TODO
    roveADC_Handle ADC_Handle = NULL;


    /*reed
    uint32_t output;
    const uint32_t MY_SEQUENCER_INDEX = 0;
    const uint32_t HIGHEST_PRIORITY = 0;
    // Enable the first sample sequencer to capture the value of channel MY_SEQUENCER_INDEX when the processor trigger occurs.
    ADCSequenceConfigure(ADC0_BASE, MY_SEQUENCER_INDEX, ADC_TRIGGER_PROCESSOR, HIGHEST_PRIORITY);
    ADCSequenceStepConfigure(ADC0_BASE, MY_SEQUENCER_INDEX, 0, ADC_CTL_IE | ADC_CTL_END | ADC_CTL_CH0);
    ADCSequenceEnable(ADC0_BASE, MY_SEQUENCER_INDEX);
    // Trigger the sample sequence.
    ADCProcessorTrigger(ADC0_BASE, MY_SEQUENCER_INDEX);
    // Wait until the sample sequence has completed.
    while(!ADCIntStatus(ADC0_BASE, MY_SEQUENCER_INDEX, false));
    // Read the value from the ADC.
    ADCSequenceDataGet(ADC0_BASE, MY_SEQUENCER_INDEX, &output);
*/


    //UInt adcParams;
    if (ADC_Handle == NULL) {
        System_abort("Error opening the ADC\n");
    } //endif

    return ADC_Handle;
}//endfnct




/*TODO
Watchdog_Handle watchdog;
*/

