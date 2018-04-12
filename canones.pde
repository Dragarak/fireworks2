class Canon1{
  float x,y,w,h;
  Body b;
  
  Canon1 (float x_,float y_,float w_,float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    
    BodyDef bd = new BodyDef();
    
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    
    bd.position.set(posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    b.createFixture(fd);
  }
    
    void display(){
    noStroke();
    fill(#717A8E);
    rectMode(CENTER);
    
    pushMatrix();
    translate(140,337);
    rect(0,0,20,48);
    popMatrix();
  }
}

class Canon2{
  float x,y,w,h;
  Body b;
  
  Canon2 (float x_,float y_,float w_,float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    
    BodyDef bd = new BodyDef();
    
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    
    bd.position.set(posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    b.createFixture(fd);
  }
    
    void display(){
    noStroke();
    fill(#717A8E);
    rectMode(CENTER);
    
    pushMatrix();
    translate(220,337);
    rect(0,0,20,48);
    popMatrix();
  }
}

class Canon3{
  float x,y,w,h;
  Body b;
  
  Canon3 (float x_,float y_,float w_,float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    
    BodyDef bd = new BodyDef();
    
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    
    bd.position.set(posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    b.createFixture(fd);
  }
    
    void display(){
    noStroke();
    fill(#717A8E);
    rectMode(CENTER);
    
    pushMatrix();
    translate(300,337);
    rect(0,0,20,48);
    popMatrix();
  }
}

class Canon4{
  float x,y,w,h;
  Body b;
  
  Canon4 (float x_,float y_,float w_,float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    
    BodyDef bd = new BodyDef();
    
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    
    bd.position.set(posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    b.createFixture(fd);
  }
    
    void display(){
    noStroke();
    fill(#717A8E);
    rectMode(CENTER);
    
    pushMatrix();
    translate(380,337);
    rect(0,0,20,48);
    popMatrix();
  }
}

class Canon5{
  float x,y,w,h;
  Body b;
  
  Canon5 (float x_,float y_,float w_,float h_){
    x=x_;
    y=y_;
    w=w_;
    h=h_;
    
    BodyDef bd = new BodyDef();
    
    bd.type = BodyType.STATIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    
    bd.position.set(posicionTransformada);
    
    b = box2d.createBody (bd);
    
    PolygonShape sd = new PolygonShape ();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    
    b.createFixture(fd);
  }
    
    void display(){
    noStroke();
    fill(#717A8E);
    rectMode(CENTER);
    
    pushMatrix();
    translate(460,337);
    rect(0,0,20,48);
    popMatrix();
  }
}
