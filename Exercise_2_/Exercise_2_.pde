/*
Environment is from a top-down perspective
Legend:
Blue = Water
Green = Grass/Land
Yellow/Sand = Beach/Desert/Land
Pink = Coral
Red = Berry Bush
Smaller Green / Yellow Green = Cactus
*/

int x, y, type, override = 0;
int[][] data = new int[120][80];

void setup() {
  size(1200, 800);
}

void draw() {
  x = (int)random(120);
  y = (int)random(80);
  type = (int)random(3);
  data[x][y] = (int)random(3);
  if (data[x][y] == type) {
    data[x][y] += 3;
  }
  stroke(0, 0, 0);
  if (data[x][y] == 0) {
    fill(237, 217, 161);
    rect(x * 10, y * 10, 10, 10);
  } else if (data[x][y] == 1) {
    fill(56, 153, 214);  
    rect(x * 10, y * 10, 10, 10);
  } else if (data[x][y] == 2) {
    fill(40, 153, 53);
    rect(x * 10, y * 10, 10, 10);
  } else if (data[x][y] == 3) {
    fill(130, 184, 44);
    rect(x*10 + 2, y * 10 + 2, 6, 6);
  } else if (data[x][y] == 4) {
    fill(235, 164, 226);
    rect(x*10 + 2, y * 10 + 2, 6, 6);
  } else if (data[x][y] == 5) {
    fill(255, 43, 43);  
    rect(x*10 + 2, y * 10 + 2, 6, 6); 
  }
}
