rectX = 250
rectY = 250
CircleR = 20
CircleX = 510
CircleY = 510
CircleX2 = -10
CircleX3 = -10
CircleY2 = -10
CircleY3 = 510
CircleX4 = 510
CircleY4 = -10
CircleX5 = random(15,85)
CircleY5 = -10
CircleX6 = random(415,485)
CircleY6 = -10
CircleX7 = -10
CircleY7 = random(15,85)
CircleX8 = 510
CircleY8 = random(415,485)
CircleR2 = 30
x = random(1,6)
y = random(1,2)
Score = 0
gameOver = False 
displayText = True
def setup():
    global gameOverPic
    gameOverPic = loadImage("https://res.cloudinary.com/teepublic/image/private/s--pwYj01fo--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1506281479/production/designs/1927365_1.jpg")
    size(500,500)
    background(0,0,0)
    frameRate(60)
def draw():
    global displayText,gameOver,x,y,Score
    Rectangle()
    if gameOver == True:
        image(gameOverPic,-70,-50)
        text("Press x to restart",175,150)
        text("Score:",200,300)
        text(Score,265,300)
        if (key == 'x'):
            Score = 0
            rectX = 250
            rectY = 250
            CirclePosReset()
            background(0)
            mouseMoved()
            frameRate(60)
            x = random(1,6)
            Projectiles()
            gameOver = False
    else:
        displayText == True
        StartingText()
        if(key == 'r'):
            background(0)
            mouseMoved()
            Projectiles()
            ScoreText()
            if y < 1.5:
                SideProjectiles()                    
        if (CircleX < -10):
            ScoreChange()
            CirclePosReset()
            Projectiles()
            FrameRateChange()
            
def ScoreText():
    text("Score:", 360,20)
    text(Score,420,20)
            
def ScoreChange():
    global x,y,Score,CircleX
    Score = Score + 1
    x = random(1,6)
    y = random(1,2)
        
def FrameRateChange():
    global Score
    if (3 <= Score < 6):
        frameRate(90)
    if (6 <= Score < 8):
        frameRate(120)
    if (8 <= Score < 10):
        frameRate(150)
    if (10 <= Score):
        frameRate(200)
        y = 1.4
            
def SideProjectiles():
    global CircleX5,CircleY5,CircleR2,CircleX6,CircleY6,CircleX7,CircleY7,CircleX8,CircleY8,gameOver
    ellipse(CircleX5,CircleY5,CircleR2,CircleR2)
    ellipse(CircleX6,CircleY6,CircleR2,CircleR2)
    ellipse(CircleX7,CircleY7,CircleR2,CircleR2)
    ellipse(CircleX8,CircleY8,CircleR2,CircleR2)
    CircleY5 = CircleY5 + random(2,10)
    CircleY6 = CircleY6 + random(2,10)
    CircleX7 = CircleX7 + random(2,10)
    CircleX8 = CircleX8 - random(2,10)
    if dist(rectX,rectY,CircleX5,CircleY5) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX6,CircleY6) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX7,CircleY7) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX8,CircleY8) < 40:
        gameOver = True
    
def StartingText():
    textSize(20)
    text("Press R to start the game", 135 ,225)
    text("Move your mouse to avoid being hit",80,300)
    
def Rectangle():
    global rectX,rectY
    rect(rectX,rectY,10,10)
    smooth()
    fill(255,255,255)    
    
def mouseMoved():
    global rectX,rectY,displayText
    if (key == 'r'):
        rect(rectX,rectY,10,10)
        displayText == False
        rectX = mouseX
        rectY = mouseY
        
def CirclePosReset():
    global CircleX,CircleY,CircleX2,CircleY2,CircleR,CircleX3,CircleY3,CircleX4,CircleY4,CircleX5,CircleY5,CircleX6,CircleY6,CircleX7,CircleY7,CircleX8,CircleY8
    rectX = 250
    rectY = 250
    CircleR = 20
    CircleX = 510
    CircleY = 510
    CircleX2 = -10
    CircleX3 = -10
    CircleY2 = -10
    CircleY3 = 510
    CircleX4 = 510
    CircleY4 = -10
    CircleX5 = random(15,85)
    CircleY5 = -10
    CircleX6 = random(415,485)
    CircleY6 = -10
    CircleX7 = -10
    CircleY7 = random(15,85)
    CircleX8 = 510
    CircleY8 = random(415,485)
    
def Projectiles():
    global x
    if 1 < x < 2:       
        Projectiles1()
    elif 2 < x < 3:
        Projectiles2()
    elif 3 < x < 4:
        Projectiles3()
    elif 4 < x < 5:
        Projectiles4()
    elif 5 < x < 6:
        Projectiles5()
        
def Projectiles1():
    global CircleX,CircleY,CircleR,gameOver
    ellipse(CircleX,CircleY,CircleR,CircleR)
    CircleX = CircleX - random(1,5)
    CircleY = CircleY - random(1,5)
    if dist(rectX,rectY,CircleX,CircleY) < 40:
        gameOver = True
        
def Projectiles2():
    global CircleX,CircleY,CircleR,CircleX2,CircleY2,CircleR,gameOver
    ellipse(CircleX,CircleY,CircleR,CircleR)
    ellipse(CircleX2,CircleY2,CircleR,CircleR)        
    CircleX = CircleX - random(1,5)
    CircleY = CircleY - random(1,5)
    CircleX2 = CircleX2 + random(1,5)
    CircleY2 = CircleY2 + random(1,5)
    if dist(rectX,rectY,CircleX,CircleY) < 40:
        gameOver = True 
    elif dist(rectX,rectY,CircleX2,CircleY2) < 40:
        gameOver = True
        
def Projectiles3():
    global CircleX,CircleY,CircleX2,CircleY2,CircleR,CircleX3,CircleY3,gameOver
    ellipse(CircleX,CircleY,CircleR,CircleR)
    ellipse(CircleX2,CircleY2,CircleR,CircleR)
    ellipse(CircleX3,CircleY3,CircleR,CircleR)
    CircleX = CircleX - random(1,5)
    CircleY = CircleY - random(1,5)
    CircleX2 = CircleX2 + random (1,5)
    CircleY2 = CircleY2 + random(1,5)
    CircleX3 = CircleX3 + random(1,5)
    CircleY3 = CircleY3 - random(1,5)
    if dist(rectX,rectY,CircleX,CircleY) < 40:
        gameOver = True    
    elif dist(rectX,rectY,CircleX2,CircleY2) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX3,CircleY3) < 40:
        gameOver = True
        
def Projectiles4():
    global CircleX,CircleY,CircleX2,CircleY2,CircleR,CircleX3,CircleY3,gameOver,CircleX4,CircleY4
    ellipse(CircleX,CircleY,CircleR,CircleR)
    ellipse(CircleX2,CircleY2,CircleR,CircleR)
    ellipse(CircleX3,CircleY3,CircleR,CircleR)
    ellipse(CircleX4,CircleY4,CircleR,CircleR)
    CircleX = CircleX - random(1,5)
    CircleY = CircleY - random(1,5)
    CircleX2 = CircleX2 + random (1,5)
    CircleY2 = CircleY2 + random(1,5)
    CircleX3 = CircleX3 + random(1,5)
    CircleY3 = CircleY3 - random(1,5)
    CircleX4 = CircleX4 - random(1,5)
    CircleY4 = CircleY4 + random(1,5)
    if dist(rectX,rectY,CircleX,CircleY) < 40:
        gameOver = True    
    elif dist(rectX,rectY,CircleX2,CircleY2) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX3,CircleY3) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX4,CircleY4) < 40:
        gameOver = True
        
def Projectiles5():
    global CircleX,CircleY,CircleX2,CircleY2,CircleR,CircleX3,CircleY3,gameOver,CircleX4,CircleY4,CircleX5,CircleY5,CircleX6,CircleY6,CircleX7,CircleY7,CircleX8,CircleY8,CircleR2
    ellipse(CircleX,CircleY,CircleR,CircleR)
    ellipse(CircleX2,CircleY2,CircleR,CircleR)
    ellipse(CircleX3,CircleY3,CircleR,CircleR)
    ellipse(CircleX4,CircleY4,CircleR,CircleR)
    ellipse(CircleX5,CircleY5,CircleR2,CircleR2)
    ellipse(CircleX6,CircleY6,CircleR2,CircleR2)
    ellipse(CircleX7,CircleY7,CircleR2,CircleR2)
    ellipse(CircleX8,CircleY8,CircleR2,CircleR2)
    CircleX = CircleX - random(1,5)
    CircleY = CircleY - random(1,5)
    CircleX2 = CircleX2 + random (1,5)
    CircleY2 = CircleY2 + random(1,5)
    CircleX3 = CircleX3 + random(1,5)
    CircleY3 = CircleY3 - random(1,5)
    CircleX4 = CircleX4 - random(1,5)
    CircleY4 = CircleY4 + random(1,5)
    CircleY5 = CircleY5 + random(2,10)
    CircleY6 = CircleY6 + random(2,10)
    CircleX7 = CircleX7 + random(2,10)
    CircleX8 = CircleX8 - random(2,10)
    if dist(rectX,rectY,CircleX,CircleY) < 40:
        gameOver = True    
    elif dist(rectX,rectY,CircleX2,CircleY2) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX3,CircleY3) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX4,CircleY4) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX5,CircleY5) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX6,CircleY6) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX7,CircleY7) < 40:
        gameOver = True
    elif dist(rectX,rectY,CircleX8,CircleY8) < 40:
        gameOver = True

