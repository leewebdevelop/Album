import interfascia.*;
Table table;
GUIController c;
IFLabel l;
IFButton b1, b2, b3, b4;

String HighestEnergySong = "";
String LowestEnergySong = "";
int HighEnergyCounter = 0;
int LowEnergyCounter = 0;
int songData = 0;


void setup() {
  table = loadTable("NOW-Kaggle-dataset.csv", "header");
  size(1200, 800); 
  c = new GUIController(this);
  
  b1 = new IFButton("Song Choice 1", 100, height/2, 100, 100);
  b2 = new IFButton("Song Choice 2", 1000, height/2, 100, 100);
  b3 = new IFButton("I dont know", 600, height/2, 100, 100);
  b4 = new IFButton("Click here to begin", width/2, 100, 100, 100);
  
  
  

  
  c.add(b1);
  c.add(b2);
  c.add(b3);
  c.add(b4);
  
  
  b1.addActionListener(this);
  b2.addActionListener(this);
  b3.addActionListener(this);
  b4.addActionListener(this);

}


void draw() {
  background(#D39922);
  textSize(15);
  text(HighestEnergySong, 100, 600);
  text(LowestEnergySong, 820, 600);
  text("Please Select a song", width/2, 97);
  text("Your predicted personality trait is:", 290, 700);
  
  
  if (songData > 5); {
      text(getPersonalityTrait(), 800, 700);
}

}
  
   
 
  


void actionPerformed (GUIEvent e) {
  if (e.getSource() == b1) {
    HighEnergyCounter += 1;
    HighestEnergySong = getHighestEnergy();
    LowestEnergySong = GetLowestSong();
    songData += 1;
  } else if (e.getSource() == b2) {
    LowEnergyCounter += 1;
    HighestEnergySong = getHighestEnergy();
    LowestEnergySong = GetLowestSong();
    songData += 1;
  } else if (e.getSource() == b3) {
    HighestEnergySong = getHighestEnergy();
    LowestEnergySong = GetLowestSong();
    songData += 1;
  } else if (e.getSource() == b4) {
    println("It has now began....");
      if ( HighEnergyCounter == 0 && LowEnergyCounter == 0) {
        HighestEnergySong = getHighestEnergy();
        LowestEnergySong = GetLowestSong();
      }
  
  }
    

}
