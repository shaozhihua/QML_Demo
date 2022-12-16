import QtQuick 2.2
import QtQuick.Dialogs 1.0


FileDialog {
    id: fileDialog
    title: "Please choose a file"
    folder: "."
    onAccepted: {
        console.log("You chose: " + fileDialog.fileUrls)
        //Qt.quit()
    }
    onRejected: {
        console.log("Canceled")
        //Qt.quit()
    }
}



