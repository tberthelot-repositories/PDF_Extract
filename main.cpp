#include <iostream>

#include <poppler/qt6/poppler-qt6.h>
#include <QtCore>
#include <QIODevice>
#include "pdffile.h"

using namespace std;
class QString;

int main(int argc, char **argv) {

    // Check if there is at least 1 file given as input
    if (argc < 2) {
        cerr << "Usage: " << argv[0] << " <input_file1.pdf> [<input_file2.pdf> ...]" << endl;
        return -1;
    }

    // List of input files to be processed
    vector<QString> inputFiles(argv + 1, argv + argc);

    // Process each file individually
    for (const auto& file : inputFiles) {
        PDFFile inputPDF(file);

        // Only if the input PDF includes annotations
        if (inputPDF.hasAnnotations()) {
            QFileInfo inputFileInfo(file);

            QFileInfo noteFileInfo("Highlights for " + inputFileInfo.baseName() + ".md");


            if (noteFileInfo.exists())          // Display an error if the corresponding Highlight note already exists
                cerr << "The Highlight note already exists" <<endl;
            else {                              // Note creation
                QString mdFileContent = "";

                // Add default tags
                mdFileContent += "#Literature #TODO\n";
                mdFileContent += "\n";

                // Link to source file
                mdFileContent += "Source: [" + inputFileInfo.baseName() + "](file://" + inputFileInfo.absoluteFilePath().replace(" ", "%20") + ")\n";

                // Empty lines, separation line and Notes section
                mdFileContent += "\n-----\n";

                // Insert highlighted summary
                mdFileContent += inputPDF.markdownSummary();

                // Insert highlightted citations
                mdFileContent += inputPDF.markdownCitations();

                // Create a file and save mdFileContent
                QFile mdFile("Highlights for " + inputFileInfo.baseName() + ".md");
                mdFile.open(QIODevice::ReadWrite);
                mdFile.write(mdFileContent.toUtf8());
                mdFile.close();
            }
        }
    }

    // Write markdown output to stdout
//    cout << markdownOutput << endl;

    return 0;
}
