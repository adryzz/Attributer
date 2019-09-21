import java.io.UnsupportedEncodingException;
import g4p_controls.GLabel;
import g4p_controls.GWindow;
import g4p_controls.GCScheme;
import g4p_controls.GTextField;
import g4p_controls.GWinData;
import g4p_controls.GEvent;
import g4p_controls.GButton;
import g4p_controls.G4P;
import java.nio.*;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.Files;
import java.nio.file.attribute.FileTime;
import java.io.File;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.nio.ByteBuffer;
import processing.sound.*;
import javax.swing.JOptionPane;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JFrame;
import java.io.IOException;
import javax.swing.JRootPane;
import javax.swing.JFrame;
import processing.awt.PSurfaceAWT.SmoothCanvas;
import com.sun.awt.AWTUtilities;
String fileSelected, text1, text2, text3, text4;
void setup() {
  size(640, 360); 
  createGUI();
}
void draw() {
  background(#1CD8B7);
  text("File selected: " + fileSelected, 10, 50);
}

public void selectSketch() {
  String selected = G4P.selectInput("Select the file");
  if (selected != null) {
    File file = new File(selected);
    fileSelected = selected;
    // Get the name of the parent folder
    String FolderName = file.getParent();
    // Get the filename without the extension
    String filename = file.getName();
    int index = filename.lastIndexOf('.');
    String fileName = (index > 0 ) ? filename.substring(0, index) : filename;
  }
}
