String getHighestEnergy() {
println(table.getRowCount() + " total rows in table");
  float HighestEnergy = 0;
  int counter = 0;
  int row_number = 0;
  String artist = "";
  String title = "";
  
  for (TableRow row : table.rows()) {
    
  float energy = row.getFloat("energy");
   if (energy > HighestEnergy) {
        HighestEnergy = energy;
        row_number = counter;
        title = row.getString("title");
        artist = row.getString("artist");
        
  
    }
     counter += 1;
    
  }
  table.removeRow(row_number);
  return (artist + title);
}
String GetLowestSong() {
  float LowestEnergy = 1;
  int counter = 0;
  int row_number = 0;
  String artist = "";
  String title = "";
  
  for (TableRow row : table.rows()) {
    
  float energy = row.getFloat("energy");
   if (energy < LowestEnergy) {
        LowestEnergy = energy;
        row_number = counter;
        title = row.getString("title");
        artist = row.getString("artist");
        
    
    
     
    }
     counter += 1;
    
  }
  table.removeRow(row_number);
  println(artist + title);
  return (artist + title);
  
} 
