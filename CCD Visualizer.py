# Missouri University of Science and Technology
# Mars Rover Design Team
# Shannon Klaus         smk43b@mst.edu
# John Maruska          jwmbq6@mst.edu

# TODO: Fix display error. Showing gray window with no graph.
#       --> Likely fixed by plt.clf() position, pausing graph, or added delay
#           from CCD

import numpy # do we use numpy library at all?
import matplotlib.pyplot as plt
import csv

""" Serial Port Functions Libraries"""
import serial
import argparse
import glob
import sys

port = 'COM5'
BAUD_RATE = 115200
PACKET_SIZE = 3648

""""""""""""""""""""""""""""""""""""""""""
""" COOPER FUNCTIONS CONFIRMED WORKING """
""""""""""""""""""""""""""""""""""""""""""

def serial_ports():
    """ Lists serial port names

        :raises EnvironmentError:
            On unsupported or unknown platforms
        :returns:
            A list of the serial ports available on the system
    """
    if sys.platform.startswith('win'):
        ports = ['COM%s' % (i + 1) for i in range(256)]
    elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
        # this excludes your current terminal "/dev/tty"
        ports = glob.glob('/dev/tty[A-Za-z]*')
    elif sys.platform.startswith('darwin'):
        ports = glob.glob('/dev/tty.*')
    else:
        return 0

    result = []
    for port in ports:
        try:
            s = serial.Serial(port)
            s.close()
            result.append(port)
        except (OSError, serial.SerialException):
            Pass
    return result

def serial_check(list_of_ports):
    valid_ports = []
    for port in list_of_ports:
        test_input = serial.Serial(port, BAUD_RATE, timeout=.001)
        print("Testing serial input: ",port)
        test_data = test_input.readline()
        try:
            print(float(test_data))
        except (NameError, ValueError):
            print("Serial input invalid: ",port)
            Pass
        else:
            print("made it to else clause")
            valid_ports.append(port)
    if (len(valid_ports) == 1):
        return port
    else:
        print("There is more than one valid serial input, you must specify which to use by using th -p tag.")
        print("These are the valid inputs: ",valid_ports)

""""""""""""""""""""""""""""""""""""""""""
""" COOPER FUNCTIONS CONFIRMED WORKING """
""""""""""""""""""""""""""""""""""""""""""

def graph(data_store):    # confirmed working
    MAX_Y_VALUE = 4096
    
    plt.title('CCD Visualizer')
    plt.ylim(0,MAX_Y_VALUE)
    plt.grid(True)
    plt.clf()   # TODO: Test moving plt.clf() to fix display error
    plt.setp(plt.plot(data_store), linewidth=2, color='r')
    plt.show()


def main():
    data_store = []
    serial_data = serial.Serial(port, BAUD_RATE)

    plt.ion()

    while(True):
        try:
            for x in range(PACKET_SIZE):
                print(x)
                y = float(serial_data.readline())
                data_store.append(y)
            graph(data_store)
        except(KeyboardInterrupt,SystemExit):
            with open(file_name,'w') as data_output:
                datawriter = csv.writer(data_output, delimiter = ',')
                datawriter.writerow(data_store)
    

if __name__=="__main__":
        main()
