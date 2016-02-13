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

//CCS TI config
#include "inc/hw_memmap.h"
#include "driverlib/gpio.h"
#include "driverlib/sysctl.h"
#include <xdc/runtime/System.h>



roveWatchdog_Handle roveBoard_WATCHDOG_open(unsigned int watchdog_index, roveBoard_WATCHDOG_Callback attach_isr_countdown)
{
  Watchdog_Handle watchdogHandle;
  Watchdog_Params watchdogParams;

  // Create and enable a Watchdog with resets enabled
  Watchdog_Params_init(&watchdogParams);
  watchdogParams.callbackFxn = attach_isr_countdown;
  watchdogParams.resetMode = Watchdog_RESET_OFF;

  watchdogHandle = Watchdog_open(watchdog_index, &watchdogParams);
  if (watchdogHandle == NULL) {
      System_abort("Error opening Watchdog!\n");
  }//end if

  Watchdog_clear(watchdogHandle);

  return watchdogHandle;
}//endfnctn



rovePWM_Handle roveBoard_PWM_open(unsigned int pwm_index, unsigned int period_in_microseconds){

    //Todo: DO NOT INIT PWM_0 -> ethernet support conflict: roveBoard/EK_TM4C1294XL.h
    //These are hardcode configured as OUTPUTS in the roveBoard/EK_TM4C1294XL.C file
    if (pwm_index == 0) {
        System_abort("Error opening the PWM\n");
    }//endif

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
        return ROVEBOARD_ERROR_UNKNOWN;
    }//end if

    return ROVEBOARD_ERROR_SUCCESS;
}//endfnctn

roveBoard_ERROR roveBoard_UART_read(roveUART_Handle uart, void* read_buffer, size_t bytes_to_read) {

    //roveUARTWrite timing issue?
    //roveDelay_MilliSec(1);

    int bytes_read = UART_read(uart, read_buffer, bytes_to_read);

    if(bytes_read < 0){
      return ROVEBOARD_ERROR_UNKNOWN;
    }//end if

    return ROVEBOARD_ERROR_SUCCESS;
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

    //        ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
    //        ROM_GPIOPinTypeADC((uint32_t) portBASERegister(port), digitalPinToBitMask(pin));

    // Enable the first sample sequencer to capture the value of channel SEQUENCER_INDEX when the processor trigger occurs.
    ADCSequenceConfigure(ADC0_BASE, adc_index, ADC_TRIGGER_PROCESSOR, 0);
    ADCSequenceStepConfigure(ADC0_BASE, adc_index, 0, ADC_CTL_CH0 | ADC_CTL_IE | ADC_CTL_END);

    //UInt adcParams;
    if (ADC_Handle == NULL) {
        System_abort("Error opening the ADC\n");
    } //endif

    return ADC_Handle;
}//endfnct

roveBoard_ERROR roveBoard_ADC_read(roveADC_Handle adc, void* read_buffer, unsigned int read_flag)
{
    uint32_t adc_read = 0;

    ADCSequenceEnable(ADC0_BASE, SEQUENCER_INDEX);

    // Trigger the sample sequence.
    ADCProcessorTrigger(ADC0_BASE, SEQUENCER_INDEX);

    // Wait until the sample sequence has completed.
    while(!ADCIntStatus(ADC0_BASE, SEQUENCER_INDEX, false));

   // ROM_ADCIntClear(ADC0_BASE, 3);
   // ROM_ADCProcessorTrigger(ADC0_BASE, 3);

    // Read the value from the ADC.
    ADCSequenceDataGet(ADC0_BASE, SEQUENCER_INDEX, &adc_read);

    //ROM_ADCIntClear(ADC0_BASE, 3);

    if(adc_read <= 0){
       return ROVE_BOARD_ERROR_UNKNOWN;
     }//end if

     return ROVE_BOARD_ERROR_SUCCESS;
 }//endfnctn


    uint16_t analogRead(uint8_t pin) {

        uint8_t port = digitalPinToPort(pin);

        uint16_t value[1];
        uint32_t channel = digitalPinToADCIn(pin);


        if (channel == NOT_ON_ADC) { //invalid ADC pin
            return 0;
        }

        ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_ADC0);
        if(channel != ADC_CTL_TS)
            ROM_GPIOPinTypeADC((uint32_t) portBASERegister(port), digitalPinToBitMask(pin));

        ROM_ADCSequenceConfigure(ADC0_BASE, 3, ADC_TRIGGER_PROCESSOR, 0);
        ROM_ADCSequenceStepConfigure(ADC0_BASE, 3, 0, channel | ADC_CTL_IE | ADC_CTL_END);
        ROM_ADCSequenceEnable(ADC0_BASE, 3);

        ROM_ADCIntClear(ADC0_BASE, 3);
        ROM_ADCProcessorTrigger(ADC0_BASE, 3);

        while(!ROM_ADCIntStatus(ADC0_BASE, 3, false)) {
        }//endwhile

        ROM_ADCIntClear(ADC0_BASE, 3);
        ROM_ADCSequenceDataGet(ADC0_BASE, 3, (unsigned long*) value);

        return mapResolution(value[0], 12, _readResolution);
    }
*/
