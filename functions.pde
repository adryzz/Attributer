public void hideFile(String file) {//hides the file
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:hidden", true);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}



public void systemFile(String file) {//sets the file as a system one
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:system", true);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}



public void readOnly(String file) {//sets the file as read-only
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:readonly", true);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}




public void unHideFile(String file) {//unhides the file
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:hidden", false);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}



public void userFile(String file) {//sets the file as a non-system one
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:system", false);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}



public void readWrite(String file) {//sets the folder as read-write
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "dos:readonly", false);
  }
  catch (IOException ex) {
    println (ex.toString());
    println("Could not find the file " + file);
  }
}



public void setCreationTime(String file, int time) { //sets the creation time to 0
  Path path = Paths.get(file);
  try {
    Files.setAttribute(path, "creationTime", FileTime.fromMillis(time));
  } 
  catch (IOException ex) {
    println("Cannot change the creation time. " + ex);
  }
}



public void setModifiedTime(String file, int time) {//sets the last modified time to 0
  Path path = Paths.get(file);
  FileTime newModifiedTime = FileTime.fromMillis(time);
  try {
    Files.setLastModifiedTime(path, newModifiedTime);
  } 
  catch (IOException ex) {
    println (ex.toString());
    println("Could not change the lst modified time.");
  }
}



public void ok() {
  text1 = name.getText();
  text2 = property.getText();
  window1.forceClose();
  if (!fileSelected.equals(null) || text1.equals("") || text2.equals("")) {
    readAttributes();
    customAttribute(text1, text2);
  } else {
    javax.swing.JOptionPane.showMessageDialog(null, "You must select a file and an attribute before doing this!");
  }
}



public void ok1() {
  text3 = textfield2.getText();
  text4 = textfield3.getText();
  window2.forceClose();
  if (text3.equals("")) {
    text3 = "0";
  }
  if (text4.equals("")) {
    text4 = "0";
  }
  if (!fileSelected.equals(null)) {
    setCreationTime(fileSelected, int(text3));
    setModifiedTime(fileSelected, int(text4));
  } else {
    javax.swing.JOptionPane.showMessageDialog(null, "You must select a file before doing this!");
  }
}
