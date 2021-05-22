//default mouse pos on image
//let r = 0
//let i = 0

//reselution
let wh = windowHeight
let ww = windowWidth

//default fractal offset
let rc = 0
let ic = 0

//default zoom
let zoom = 1

//default max itterations
let mi = 100

function setup() {
  createCanvas(windowWidth,windowHeight);
  background(220);
  console.log(windowWidth,windowHeight)
  ellipseMode(RADIUS)
  fill(0)
  //fractalDraw(0.00001, -0.740515,0.244, mi)
  //fractalDraw(2, -0.75,0, mi)
  fractalDraw(zoom, rc,ic, mi)
  logstuff()
}

function draw() {
  //background(220)
  //let r = linMap(mouseX, 0,windowWidth, -zoom*windowWidth/windowHeight,zoom*windowWidth/windowHeight)
  //let i = -linMap(mouseY, 0,windowHeight, -zoom,zoom)
  //r += rc
  //i += ic



  //console.log(r, i)
}

function mouseClicked(){
  
  rc = linMap(mouseX, 0,windowWidth, -zoom*windowWidth/windowHeight,zoom*windowWidth/windowHeight) + rc
  ic = -linMap(mouseY, 0,windowHeight, -zoom,zoom) + ic
  background(0)
  zoom *= 0.5
  fractalDraw(zoom, rc,ic, mi)
  logstuff()
}

function logstuff() {
  console.log("r = ",rc)
  console.log("i = ",ic)
  console.log("Zoom = ",1/zoom)
  console.log("Itterations = ", mi)
  //console.log("Render Time = ", Var)
}


function fractalDraw(s,posr,posi, mi) {
  
  console.log("start")
  strokeWeight(0)

  for (x=0; x<ww; x++) {
    for(y=0; y<wh; y++) {
      //let c = new comp(linMap(x, 0,windowWidth, -s,s), linMap(y, 0,windowHeight, -s,s)) //map xy to complex
      let sc = new comp(linMap(x, 0,ww, -s*ww/wh+posr,s*ww/wh+posr), linMap(y, 0,wh, s+posi,-s+posi)) //map xy to complex
      //let ov = new comp(-0.8400254991319445, 0.22430826822916666)
      let ov = new comp(0, 0)

      let f = fractal(sc, ov, mi)
      //let f = fractal(ov, sc, mi)
      if (f >= mi){
        stroke(0) 
      } else {
        stroke(color(i/mi*256,0,0))
      }
      point(x, y)
    }
  }
  
  stroke(0,0,220)
  strokeWeight(5)
  /*
  point(ww/2, wh/2)
  point(linMap(-1,-s*ww/wh,s*ww/wh, 0,ww), wh/2)
  point(linMap( 1,-s*ww/wh,s*ww/wh, 0,ww), wh/2)
  point(ww/2, linMap(-1,-s,s, 0,wh))
  point(ww/2, linMap( 1,-s,s, 0,wh))
  */
  //point(linMap(-1, -s*ww/wh+posr,s*ww/wh+posr, 0,ww), linMap(-1, -s*ww/wh+posi,s*ww/wh+posi, 0,wh))
  //point(linMap(-1,-s*ww/wh,s*ww/wh, 0,ww), wh/2)
  //point(linMap( 1,-s*ww/wh,s*ww/wh, 0,ww), wh/2)
  //point(ww/2, linMap(-1,-s,s, 0,wh))
  //point(ww/2, linMap( 1,-s,s, 0,wh))

  console.log("done")
}

function fractal(sPos, oV, mi){
  //sPos = screen pos
  //oV = other value
  //mi = max itterations


  
  //Mandelbrot
  //let oV =  new comp(0, 0)
  let z = oV
  for (i = 0; i <= mi; i++) {
    //itterate
    z.mult(z)
    //z.mult(z)
    //z.mult(z)
    z.add(sPos)
    //check for explosion
    if (z.abs() > 2) return i
    if (i >= mi) return i
  }

  /*
  oV = new comp(1, 0)
  for (i = 0; i <= mi; i++) {
    //itterate
    sPos.mult(sPos)
    sPos.add(oV)
    //check for explosion
    if (sPos.abs() > 2) return i
    if (i >= mi) return i
  }*/



}
function fractalStep(a){
  let z = a
  z.mult(a)
  z.add(new comp(1,0))
  return z
  


  /*
  let z = a
  z.div(a)
  z.sub(a)
  return z
  */

  /*
  let z = a
  z.mult(a)
  z.mult(new comp(0.0535533906,0.0535533906))
  return z
  */



}

function linMap(x, min1, max1, min2, max2) {
  /* Liniarly maps number from one number system to another.
      e.g.

      -1    0.5         1
      |------x----------|
     min1              max1
             |
             |
             V

      0     2.5         100
      |------y----------|
     min2              max2

      y = (min2*(max1-x) + max2*(x-min1)) / (max1 - min1)
  */
  return (min2*(max1-x) + max2*(x-min1)) / (max1 - min1)

}

class comp{
  constructor(r, i){
    this.r=r
    this.i=i
  }

  add(a){
    this.r += a.r
    this.i += a.i
    return this
  }

  sub(a){
    this.r -= a.r
    this.i -= a.i
    return this
  }

  mult(a){
    let r = this.r*a.r - this.i*a.i
    let i = this.r*a.i + this.i*a.r
    this.r = r
    this.i = i
    if (this.r == -0) this.r = 0
    if (this.i == -0) this.i = 0
    return this
  }

  div(a){
    let d = a.r*a.r + a.i*a.i
    let r = (this.r*a.r + this.i*a.i) / d
    let i = (this.i*a.r - this.r*a.i) / d
    this.r = r
    this.i = i
    return this
  }

  abs(){
    //console.log(this.r*this.r + this.i*this.i)
    return Math.sqrt(this.r*this.r + this.i*this.i)
  }
}