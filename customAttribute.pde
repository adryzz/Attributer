

public void customAttribute(String name, String value) {
  try {  
    Path path = Paths.get(fileSelected);
    final UserDefinedFileAttributeView view = Files.getFileAttributeView(path, UserDefinedFileAttributeView.class);

    // The file attribute

    // Write the properties
    final byte[] bytes = value.getBytes("UTF-8");
    final ByteBuffer writeBuffer = ByteBuffer.allocate(bytes.length);
    writeBuffer.put(bytes);
    writeBuffer.flip();
    view.write(name, writeBuffer);

    // Read the property
    final ByteBuffer readBuffer = ByteBuffer.allocate(view.size(name));
    view.read(name, readBuffer);
    readBuffer.flip();
    final String valueFromAttributes = new String(readBuffer.array(), "UTF-8");
  } 
  catch (Exception ex) {
    println(ex);
  }
}
