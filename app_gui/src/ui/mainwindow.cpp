#include "mainwindow.h"
#include "QFileDialog"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
        : QMainWindow(parent)
        , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    connect(ui->browseInputButton, &QPushButton::clicked, this, &MainWindow::onBrowseInputClicked);
}

// Destructor
MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::onBrowseInputClicked() {
    QString fileName = QFileDialog::getOpenFileName(this, tr("Open File"), "",
                                                    tr("Video Files (*.yuv *.y4m)"));
}
