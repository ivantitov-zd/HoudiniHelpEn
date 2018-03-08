from hutil.Qt import QtCore, QtWidgets

class ExampleHelpWidget(QtWidgets.QFrame):
    def __init__(self, small_string, full_string, no_margins = False):
        QtWidgets.QFrame.__init__(self)
        self.smallString = small_string
        self.fullString = full_string
        self.state = False
        
        self.helpLabel = QtWidgets.QLabel(self.smallString)
        self.helpLabel.setWordWrap(True)
        self.helpLabel.setTextFormat(QtCore.Qt.RichText)
        
        self.helpExpand = QtWidgets.QPushButton("Show More")
        self.helpExpand.clicked.connect(self.expandHelp)
        
        help_layout = QtWidgets.QGridLayout()
        help_layout.addWidget(self.helpLabel, 0, 0, 1, 5)
        help_layout.addWidget(self.helpExpand, 1, 0, 1, 1)

        self.setLayout(help_layout)

        if no_margins:
            self.setContentsMargins(0,0,0,0)
            help_layout.setContentsMargins(0,0,0,0)
    
        self.setProperty("help_text", True)
        
    def expandHelp(self):
        if self.state:
            self.helpLabel.setText(self.smallString)
            self.helpExpand.setText("Show More")
            self.state = False
        else:
            self.helpLabel.setText(self.fullString)
            self.helpExpand.setText("Show Less")
            self.state = True   
