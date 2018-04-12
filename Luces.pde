class Luz {

  Body body;
  float w;
  float h;

  Luz(float x, float y) {
    w = random(4,10);
    h = random(4, 16);
    makeBody(new Vec2(x, y), w, h);
  }

  void killBody() {
    box2d.destroyBody(body);
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    if (pos.y > height+w*h) {
      killBody();
      return true;
    }
    return false;
  }

  void display() {
    switch(key){
      
    case '1':
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x-110,pos.y);
    rotate(-a);
    fill(random (255),random(0),random(0));
    stroke(0);
    ellipse(0, 0, w, h);
    popMatrix();
    break;
    
    case '2':
    Vec2 pos2 = box2d.getBodyPixelCoord(body);
    float a2 = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos2.x - 30, pos2.y);
    rotate(-a2);
    fill(random (0),random(200),random(200));
    stroke(0);
    ellipse(0, 0, w, w);
    popMatrix();
    break;
    
    case '3':
    Vec2 pos3 = box2d.getBodyPixelCoord(body);
    float a3 = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos3.x + 50, pos3.y);
    rotate(-a3);
    fill(random (250),random(255),random(10));
    stroke(0);
    ellipse(0, 0, w, w);
    popMatrix();
    break;
    
    case '4':
    Vec2 pos4 = box2d.getBodyPixelCoord(body);
    float a4 = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos4.x +130, pos4.y);
    rotate(-a4);
    fill(random (0),random(255),random(50));
    stroke(0);
    ellipse(0, 0, w, w);
    popMatrix();
    break;
    
    case '5':
    Vec2 pos5 = box2d.getBodyPixelCoord(body);
    float a5 = body.getAngle();
    rectMode(CENTER);
    pushMatrix();
    translate(pos5.x +210, pos5.y);
    rotate(-a5);
    fill(#DB00A5);
    stroke(0);
    ellipse(0, 0, w, w);
    popMatrix();
    break;
  }
  }

  void makeBody(Vec2 center, float w_, float h_) {

    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);

    body.setLinearVelocity(new Vec2(random(-5, 5), random(100)));
    body.setAngularVelocity(random(-5, 5));
  }
}
