void setup() {
  size(1000, 1000);
  sierpinski(100, 900, 900, 900, 500, 100, 6);
}

void draw() {
  
}

void sierpinski(float x1, float y1, float x2, float y2, float x3, float y3, int depth) {
  if (depth <= 0) {
    triangle(x1, y1, x2, y2, x3, y3);
  } else {
    float h1 = (x1 + x2) / 2.0;
    float w1 = (y1 + y2) / 2.0;
    float h2 = (x2 + x3) / 2.0;
    float w2 = (y2 + y3) / 2.0;
    float h3 = (x3 + x1) / 2.0;
    float w3 = (y3 + y1) / 2.0;
    
    sierpinski(x1, y1, h1, w1, h3, w3, depth - 1);
    sierpinski(h1, w1, x2, y2, h2, w2, depth - 1);
    sierpinski(h3, w3, h2, w2, x3, y3, depth - 1);
  }
}
