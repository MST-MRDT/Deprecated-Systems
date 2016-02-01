import serial 						
import numpy						
import matplotlib.pyplot as plt
import csv
import argparse

global count
global MAX_PLOT_SIZE
global beginData
global endData
global filename
global port

count = 0
relativeCount = []                              # count used for graphing once scrolling begins
plt.ion()	        		        # interactive mode to plot live data
dataStore = []                                  # empty list of data
graphStore = []
                                                # port_no and baudrate
MAX_PLOT_SIZE = 7                              # maximum graph size in x direction

dataRange = []                                  # y range for scrolling graph
beginData = 0
endData = 0

plt.plot(graphStore, 'r,', label='Humidity')
port = 0
baudrate = 9600
sensor = 0


def graph():
        global count                                    # allow modification of count
        if (count < MAX_PLOT_SIZE):
                plt.clf()
                plt.scatter(count,graphStore[count])    # old graphing method
                plt.ylim(-5,100)
                plt.grid(True)
                plt.title(sensor)
                plt.plot(graphStore)
                plt.show()
                count += 1                              ### count must be incremented in either case
        else:
                plt.clf()
                endData = count+1                          # end of x range
                beginData = (count - MAX_PLOT_SIZE)     # beginning of x range
                dataRange = numpy.arange(beginData,(endData))    # setting x range
                plt.ylim(-5,100)
                plt.grid(True)
                plt.title(sensor)
                plt.scatter(dataRange,graphStore)       # graphing with specified range
                plt.plot(dataRange,graphStore)
                plt.show
        
                count += 1
                graphStore.pop(0)                           # removes first item of array, effectively scrolling graph

        plt.pause(0.001)                                # because humans are slow

def main():
        parser = argparse.ArgumentParser(description='plot scientific data in real time')
        parser.add_argument('-p', default="/dev/tty.usbmodem0F005721", action="store", dest="port",help="name of serial input")
        parser.add_argument('-b', default=9600, action="store", dest="baudrate", help="baudrate for data transfer")
        parser.add_argument('-m', default=7, action="store", dest="MAX_PLOT_SIZE", help="maximum size for x axis (recommended < 10)")
        parser.add_argument('-s', default="Sensor Data", action="store", dest="sensor", help="sensor being used, in order to correctly title plot")
        parser.add_argument('-f', default="sensor_data", action="store", dest="filename", help="name of file for data to be stored in")
        args = parser.parse_args()
        global MAX_PLOT_SIZE
        MAX_PLOT_SIZE = args.MAX_PLOT_SIZE
        global port
        port = args.port
        global filename
        filename = args.filename + '.csv'
        serialData = serial.Serial(port, baudrate)
        sensor = args.sensor
        while(True):
                
                try:
                        y = float(serialData.readline())
                        dataStore.append(y)
                        graphStore.append(y)
                        graph()
                except(KeyboardInterrupt,SystemExit):
                        with open(filename,'w') as data_output:
                                datawriter = csv.writer(data_output, delimiter = ',')
                                datawriter.writerow(dataStore)

if __name__=="__main__":
        main()
