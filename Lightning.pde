int startX=35;
int startY=150;
int endX=35;
int endY=150;

void setup () {
	size(300,300);
	background(0,0,0);
	strokeWeight(1);
}
void hand() {
	noStroke();
    fill(48, 57, 59);
    rect(0,130,30,20);

	//middle
    rect(30,139,3,3);
    rect(35,139,3,3);
    rect(38,139,3,3);
	
	//middle upper
    rect(33,136,3,3);
    rect(36,134,3,3);

	//middle lower
    rect(33,142,3,3);
    rect(36,144,3,3);

    //upper side
    rect(35,120,5,5);
    rect(30,125,5,5);
    rect(40,123,5,5);

    //lower side
    rect(30,150,5,5);
    rect(35,155,5,5);
    rect(40,152,5,5);

    //shading
	fill(67, 79, 82);
	rect(0,130,5,5);
    rect(0,132,5,5);
	rect(5,130,5,5);
    rect(5,135,5,5);
    rect(10,130,5,5);
    rect(10,133,5,5);
	rect(15,130,5,5);
	rect(19,130,5,5);
}

void draw() {
	fill(0,0,0,50);
	rect(0,0,300,300);
	hand();
	
	while (endX<300) {
		stroke(((int)(Math.random()*113+143)),((int)(Math.random()*15+240)),255);
		endX=startX+(int)random(0,10);
		endY= startY + (int)random(-5,5);
		line(startX,startY,endX,endY);
		startX=endX;
		startY=endY;
	}

	startX=35;
	startY=140;
	endX=35;
	endY=140;
}

