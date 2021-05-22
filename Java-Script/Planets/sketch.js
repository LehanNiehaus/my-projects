let obj = []

function setup() {
  createCanvas(windowWidth,windowHeight);
  background(220);
  obj = [
    new planet(5,5,createVector(windowWidth/2-100,windowHeight/2),createVector(0,-12000),color(255,0,0)),
    new planet(5,5,createVector(windowWidth/2+100,windowHeight/2),createVector(0,12000),color(0,200,0)),
    new planet(500,20,createVector(windowWidth/2,windowHeight/2),createVector(0,0),color(0,0,255))
  ]
  console.log(obj[1])
}

function draw() {
  background(220,220,220,20)

  for (i = 0; i < 10; i++) {
    planet.updateAll(obj)
  }

  planet.drawAll(obj)
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  /*background(220);
  
  ob1.addForce(ob2)
  ob1.addForce(ob3)

  ob2.addForce(ob1)
  ob2.addForce(ob3)

  ob3.addForce(ob1)
  ob3.addForce(ob2)

  ob1.update()
  ob2.update()
  ob3.update()

  ob1.draw()
  ob2.draw()
  ob3.draw()*/
  //console.log(ob1.vel)



  //ob1.accel = createVector(0.1, 0.1)
  //ob1.vel.add(ob1.accel)
  //ob1.pos.add(ob1.vel)
}


