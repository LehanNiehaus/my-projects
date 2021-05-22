var G = 10
var dt = 0.0001
var maxF = 1000000

class planet{
	constructor(mass,size,position,velocity,color){
		this.mass = mass
		this.size = size
		this.pos = position
		this.vel = velocity
		this.col = color
		this.accel = createVector(0,0)
	}
	draw(){
		push()
		ellipseMode(RADIUS)
  	fill(this.col)
  	stroke(this.col)
  	circle(this.pos.x,this.pos.y,this.size)
		pop()
	}
	addForce(planet2){
		let r = p5.Vector.sub(planet2.pos, this.pos)
		r.normalize()

		let a = p5.Vector.mult(r, (G * planet2.mass) / p5.Vector.dist(this.pos, planet2.pos))
		if (this.checkColide(planet2)) a = createVector(0,0)

		this.accel.add(a)

		//this.pos.x = Math.abs((this.pos.x + windowWidth) % windowWidth)
		//this.pos.y = Math.abs((this.pos.y + windowHeight) % windowHeight)
		if (this.pos.x < 0) this.pos.x = 0
		if (this.pos.x > windowWidth) this.pos.x = windowWidth
		if (this.pos.y < 0) this.pos.y = 0
		if (this.pos.y > windowHeight) this.pos.y = windowHeight
	}
	update(){
		this.vel.add(this.accel)
		this.pos.add(p5.Vector.mult(this.vel, dt))
		this.accel = createVector(0,0)
	}
	checkColide(planet2){
		let dist = this.pos.dist(planet2.pos)
		let minDist = this.size + planet2.size
		if (dist < minDist) return true
		else return false
	}
	static updateAll(planets){
		for (let i = 0; i < planets.length; i++){
			for (let j = 0; j < planets.length; j++){
				if (i != j){
					planets[i].addForce(planets[j])
				}
			}
		}
		for (let i = 0; i < planets.length; i++){
			planets[i].update()
		}
	}
	static drawAll (planets){
		for (let i = 0; i < planets.length; i++){
			planets[i].draw()
		}
	}
}
