public void readAttributes() {
  try {
    String att = "";
    Path path = Paths.get(fileSelected);
    BasicFileAttributes basicFileAttributes = Files.readAttributes(path, BasicFileAttributes.class);

    // Print basic file attributes
    att = att + "Attributes of the file : \n" + fileSelected;
    att = att + "\n\nCreation Time: " + basicFileAttributes.creationTime();
    att = att + "\nLast Access Time: " + basicFileAttributes.lastAccessTime();
    att = att + "\nLast Modified Time: " + basicFileAttributes.lastModifiedTime();
    att = att + "\nSize: " + basicFileAttributes.size() + " Byte";
    att = att + "\nIs Regular file: " + basicFileAttributes.isRegularFile();
    att = att + "\nIs Directory: " + basicFileAttributes.isDirectory();
    att = att + "\nIs Symbolic Link: " + basicFileAttributes.isSymbolicLink();
    att = att + "\nOther: " + basicFileAttributes.isOther();
    window3(att);
  } 
  catch (IOException ex) {
    println(ex);
  }
}
