import csv
import dateutil.parser
import sys
from PyQt4 import QtGui, QtCore
from customWidgets import GraphArea, DataStore


# TODO: functions - plot spectrometer data

class StartQT4(QtGui.QMainWindow):
    def __init__(self, parent=None):
        self.current_file = ""
        self.ds = DataStore()

        QtGui.QWidget.__init__(self, parent)
        self.setWindowTitle("Ehrenfreund")
        self.resize(946, 542)
        self.setSizeIncrement(QtCore.QSize(1, 1))
        self.centralWidget = QtGui.QWidget(self)
        self.digMainLayout = QtGui.QVBoxLayout(self.centralWidget)
        self.digMainLayout.setMargin(11)
        self.digMainLayout.setSpacing(6)

        self.inputFrame = QtGui.QHBoxLayout()
        self.inputFrame.setMargin(11)
        self.inputFrame.setSpacing(6)

        self.fileInput = QtGui.QLineEdit(self.centralWidget)
        self.fileInput.setMinimumSize(QtCore.QSize(400, 0))
        self.fileInput.setMaximumSize(QtCore.QSize(400, 16777215))
        spacer_item = QtGui.QSpacerItem(40, 20, QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Minimum)
        # self.graphButton = QtGui.QPushButton("Graph", self.centralWidget)
        self.inputFrame.addWidget(self.fileInput)
        # self.inputFrame.addWidget(self.graphButton)
        self.inputFrame.addItem(spacer_item)

        self.displayFrame = QtGui.QHBoxLayout()
        self.displayFrame.setMargin(11)
        self.displayFrame.setSpacing(6)

        # sensor enables go here

        self.graphTabs = QtGui.QTabWidget()

        self.basic = QtGui.QWidget()
        self.basicGraphLayout = QtGui.QHBoxLayout(self.basic)
        self.basicGraphLayout.setMargin(0)
        self.basicGraph = GraphArea()
        self.basicGraphLayout.addWidget(self.basicGraph)
        self.graphTabs.addTab(self.basic, "Temp/Humid")

        self.spectrometer = QtGui.QWidget()
        self.spectrometerGraphLayout = QtGui.QHBoxLayout(self.spectrometer)
        self.spectrometerGraphLayout.setMargin(0)
        self.spectrometerGraph = GraphArea()
        self.spectrometerGraphLayout.addWidget(self.spectrometerGraph)
        self.graphTabs.addTab(self.spectrometer, "Spectrometer")

        self.digMainLayout.addLayout(self.inputFrame)
        self.displayFrame.addWidget(self.graphTabs)
        self.digMainLayout.addLayout(self.displayFrame)

        self.connect(self.fileInput, QtCore.SIGNAL("returnPressed()"), self.enterfile)

        self.setCentralWidget(self.centralWidget)

    def enterfile(self):
        filename = self.fileInput.text()
        if filename != self.current_file:
            if filename.lower().endswith('.csv'):
                # Assuming basic temp/humid.
                self.parsecsv(filename)
                self.current_file = filename
                self.basicGraph.graph_basic(self.ds)
            else:
                self.showdialogue("Unsupported file type. Please input a .csv file.")

        else:
            self.showdialogue("File requested is already entered.")

    def parsecsv(self, csv_name):
        with open(csv_name, 'r') as csvfile:
            csv.reader(csvfile, delimiter=' ')
            # check header for Spectrometer or Temp/Humid readings.
            # Assuming Temp/Humid
            for row in csvfile.readlines():
                datestamp, sensor, raw_data = row.split(' ')
                if sensor == "Temp1":
                    self.ds.temp1.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Temp2":
                    self.ds.temp2.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Temp3":
                    self.ds.temp3.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Temp4":
                    self.ds.temp4.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Humid1":
                    self.ds.humid1.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Humid2":
                    self.ds.humid2.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Humid3":
                    self.ds.humid3.append((dateutil.parser.parse(datestamp), raw_data))
                elif sensor == "Humid4":
                    self.ds.humid4.append((dateutil.parser.parse(datestamp), raw_data))

    def showdialogue(self, errormessage):
        msg = QtGui.QMessageBox()
        msg.setIcon(QtGui.QMessageBox.Critical)
        msg.setText(errormessage)
        msg.setWindowTitle("ERROR")
        msg.setStandardButtons(QtGui.QMessageBox.Ok)
        msg.exec_()



def main():
    app = QtGui.QApplication(sys.argv)
    myapp = StartQT4()
    myapp.show()
    sys.exit(app.exec_())

if __name__ == "__main__":
    main()
