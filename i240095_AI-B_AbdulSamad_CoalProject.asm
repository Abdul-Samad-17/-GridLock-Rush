INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
INCLUDELIB Winmm.lib

PlaySound PROTO,
    pszSound: PTR BYTE,
    hmod: DWORD,
    fdwSound: DWORD

.data


grid BYTE "111000000000000000000000000000000000000000000000000000000000000000000000000",0
     BYTE "101000000000000000000000000000000000000000000000000000000000000000000000000",0
     BYTE "000000000000000000000000000000000000000000000000000000333000000000000000000",0
     BYTE "000000000000000000000000000000000000000000000000000000040000000000000000000",0
     BYTE "000000000000000022222222222220000000002222000022222222222222222222222222000",0
     BYTE "000000000000000022222222222220000000002222000022222222222222222222222222000",0
     BYTE "000333000000000000000000000000000000002222000000000000000000000000000000000",0
     BYTE "000040000000000000000000000000000033302222000000000000000000000000000000000",0
     BYTE "222222222200000000000000000000000004002222000000000000222200000000002222000",0
     BYTE "222222222200000022222222222000022222222222000022220000222200000000002222000",0
     BYTE "000000000000000022222222222000022222222222000022220000222200000000002222000",0
     BYTE "000000000000000000000002222000000000000000000000000000222222222200002222000",0
     BYTE "000000000000000000000002222000000000000000000000000000222222222200002222000",0
     BYTE "000000000333000000000002222000000000000000000022220000000000000000000000000",0
     BYTE "000000000040000000000000000000000000033300000022220000000000000000000000000",0
     BYTE "000000022222220000000000000000000000004000000022220000000000000000000000000",0
     BYTE "000000022222220000000002222000022222222222222222220000000000000000000000000",0
     BYTE "000000022222220000000002222000022222222222222222220000000000000000000000000",0
     BYTE "000000022222220000000002222000022220000000000000000000000000000333000000000",0
     BYTE "000000000000000000000002222000022220000000000000000000000000000040000000000",0
     BYTE "000000000000000000000002222000022220000222222222222222220000022222222222222",0
     BYTE "000000000000000000000002222000022220000222222222222222220000022222222222222",0
     BYTE "222222222222000000000002222000000000000000000000000022220000022220000000000",0
     BYTE "222222222222000000000000000000000000000000000000000022220000022220000000000",0
     BYTE "000000002222000000000000000000000000000000000000000022220000022220002222000",0
     BYTE "000000002222000000000000000000000000000022220000000022220000022220002222000",0
     BYTE "000000000000000000000000000000000000333022220000000000000000000000000000000",0
     BYTE "000000000000000000000000000000000000040022220000000000000000000000000000000",0


; ----- Coordinates -----
width1 byte 30
height1 byte 75
rows  BYTE 28
cols  BYTE 75

gameTitle1 BYTE "  ____  _   _ ____  _   _     _   _  ___  _   _ ____  ", 0
gameTitle2 BYTE " |  _ \| | | / ___|| | | |   | | | |/ _ \| | | |  _ \ ", 0
gameTitle3 BYTE " | |_) | | | \___ \| |_| |   | |_| | | | | | | | |_) |", 0
gameTitle4 BYTE " |  _ <| |_| |___) |  _  |   |  _  | |_| | |_| |  _ < ", 0
gameTitle5 BYTE " |_| \_\___/|____/ |_| |_|   |_| |_|\___/ \___/|_| \_\", 0

GameOverMsg db "                                                                                                                        ",0
         db "                                                                                                                        ",0
         db "             %%%%%%%%%%%    %%%%%%%%%%  %%             %%  %%%%%%%%%%%                                                  ",0
         db "           %%%             %%        %% %%%%         %%%%  %%                                                           ",0
         db "          %%%              %%        %% %%  %%     %%  %%  %%                                                           ",0
         db "          %%%              %%        %% %%    %% %%    %%  %%                                                           ",0
         db "          %%%    %%%%%%%%% %%%%%%%%%%%% %%      %%     %%  %%%%%%%%%%%                                                  ",0
         db "          %%%            % %%        %% %%             %%  %%                                                           ",0
         db "           %%%           % %%        %% %%             %%  %%                                                           ",0
         db "             %%%%%%%%%%% % %%        %% %%             %%  %%%%%%%%%%%                                                  ",0
         db "                                                                                                                        ",0
         db "                                                                                                                        ",0
         db "                                              %%%%%%%%%%     %%            %%  %%%%%%%%%%  %%%%%%%%%%                   ",0
         db "                                            %%          %%    %%          %%   %%          %%       %%                  ",0
         db "                                           %%            %%    %%        %%    %%          %%       %%                  ",0 
         db "                                           %%            %%     %%      %%     %%%%%%%%%%  %%%%%%%%%%%                  ",0
         db "                                           %%            %%      %%    %%      %%          %% %%                        ",0
         db "                                            %%          %%        %%  %%       %%          %%    %%                     ",0
         db "                                              %%%%%%%%%%            %%%        %%%%%%%%%%  %%       %%                  ",0

YouWonMsg db "                                                                                                                        ",0
          db "                                                                                                                        ",0
          db "          %%           %%   %%%%%%%%%%   %%          %%                                                                 ",0
          db "           %%         %%   %%        %%  %%          %%                                                                 ",0
          db "            %%       %%    %%        %%  %%          %%                                                                 ",0
          db "             %%     %%     %%        %%  %%          %%                                                                 ",0
          db "              %%   %%      %%        %%  %%          %%                                                                 ",0
          db "                % %        %%        %%  %%          %%                                                                 ",0
          db "                %%%        %%        %%  %%          %%                                                                 ",0
          db "                %%%        %%        %%  %%          %%                                                                 ",0
          db "                %%%         %%%%%%%%%%    %%%%%%%%%%%%                                                                  ",0
          db "                                                                                                                        ",0
          db "                                                                                                                        ",0
          db "                                                                                                                        ",0
          db "                       %%           %%%%            %%  %%%%%%%%%%  %%            %%                                    ",0
          db "                        %%         %%  %%          %%       %%      %%%%          %%                                    ",0
          db "                         %%       %%    %%        %%        %%      %%  %%        %%                                    ",0 
          db "                          %%     %%      %%      %%         %%      %%    %%      %%                                    ",0
          db "                           %%   %%        %%    %%          %%      %%      %%    %%                                    ",0
          db "                            %% %%          %%  %%           %%      %%        %%  %%                                    ",0
          db "                             %%%             %%%            %%      %%          %%%%                                    ",0
          db "                              %               %         %%%%%%%%%%  %%            %%                                    ",0
                                                                                                                                           


welcomeMsg BYTE "Welcome to Rush Hour!", 0
promptName BYTE "Please enter your name: ", 0
pressEnterMsg BYTE "Press ENTER to continue...", 0
playerName BYTE 50 DUP(0)
nameLength DWORD 0

; Menu Page 2 strings
menuTitle BYTE " --- MAIN MENU --- ", 0
menuOption1 BYTE "1. Start Game", 0
menuOption2 BYTE "2. Display Leaderboard", 0
menuOption3 BYTE "3. User Manual", 0
menuOption4 BYTE "4. Exit", 0
menuPrompt BYTE "Enter your choice: ", 0
leaderboardMsg BYTE "Leaderboard feature coming soon! Press any key...", 0

; Menu Page 3 strings
modeTitle BYTE "--- SELECT GAME MODE ---", 0
modeOption1 BYTE "1. Career Mode", 0
modeOption2 BYTE "2. Time Mode", 0
modeOption3 BYTE "3. Endless Mode", 0

; Menu Page 4 strings
carTitle BYTE "--- SELECT YOUR TAXI ---", 0
carOption1 BYTE "1. Red Taxi", 0
carOption2 BYTE "2. Blue Taxi", 0
carOption3 BYTE "3. Random Taxi", 0

; User Manual strings
manualTitle BYTE "--- USER MANUAL ---", 0
instruction1 BYTE "OBJECTIVE: Navigate your taxi through traffic and reach the destination!", 0
instruction2 BYTE "CONTROLS: Use arrow keys to move your taxi (Up, Down, Left, Right)", 0
instruction3 BYTE "AVOID: Crashing into other vehicles or obstacles on the road", 0
instruction4 BYTE "CAREER MODE: Complete levels with increasing difficulty", 0
instruction5 BYTE "TIME MODE: Race against the clock to reach your destination", 0
instruction6 BYTE "ENDLESS MODE: Survive as long as possible in endless traffic", 0
instruction7 BYTE "SCORING: Earn points for safe driving and quick completion", 0
backToMenu BYTE "Press ESC to return to menu...", 0
escBack BYTE "Press ESC to go back", 0

; Game End Screen strings
congratsMsg BYTE "Congratulations, ", 0
betterLuckMsg BYTE "Better luck next time, ", 0
finalScoreMsg BYTE "Your Score: ", 0
pressAnyKeyMsg BYTE "Press any key to continue...", 0

; ----- Colors -----

whiteonwhite dd 15+(15*16)
whiteonblack dd 15+(0*16)
blackonblack dd 0+(0*16)
blackonwhite dd 0+(15*16)
yellowonyellow dd 14+(14*16)
yellowonwhite dd 14+(15*16)
redonwhite dd 4+(15*16)
redonred dd 4+(4*16)
greenongreen dd 2+(2*16)
greenonwhite dd 2+(15*16)
brownonbrown dd 6+(6*16)
greyongrey dd 8+(8*16)
cyanoncyan dd 3+(3*16)
cyanonwhite dd 3+(15*16)
lgreenonlgreen dd 10+(10*16)
blueonblue dd 1+(1*16)
blueonwhite dd 1+(15*16)
redonlgreen dd 4+(10*16)
brownonlgreen dd 6+(10*16)
cyanonblack dd 3+(0*16)
redonblack dd 4+(0*16)
greyonblack dd 8+(0*16)
blueonblack dd 1+(0*16)
brownonblack dd 6+(0*16)
lgreenonblack dd 10+(0*16)

; Colors for menu
titleColor dd 14+(0*16)             ; Yellow on black
welcomeColor dd 15+(0*16)           ; White on black
promptColor dd 11+(0*16)            ; Cyan on black


; ----- Rectangle -----
recw byte 2
rech byte 3


; ----- Car -----
carx byte 2
cary byte 0
carw byte 2
carh byte 3
carType byte 1        ; 0 for red-Taxi and 1 for Blue-Taxi
right byte 1
left byte 0
up byte 0
down byte 1

; ----- NPC Cars -----
npc1x byte 2
npc1y byte 5
npc2x byte 5
npc2y byte 7

npc1dir BYTE 0        ; NPC direction : 0=right, 1=down, 2=left, 3=up
npc2dir BYTE 0
npcCarCount BYTE 2
currentNPC BYTE 0
moveNPC byte 1


; ----- Player -----
playerx byte ?
playery byte ?
playersCount byte 0

; ----- Destination -----
destx byte ?
desty byte ?

; ----- Leader Board -----
leaderboardFile BYTE "leaderboard.txt", 0
leaderNames BYTE 10 DUP(50 DUP(?))     
leaderScores DWORD 10 DUP(0)    
leaderCount BYTE 0          
tempName BYTE 50 DUP(?)       
fileHandle DWORD ?               
fileBuffer BYTE 1000 DUP(?)          
bytesRead DWORD 0                  
currentTotalScore DWORD 0        
newScoreBuffer BYTE 20 DUP(0)
errorMsg BYTE "File create failed!",0

; Leaderboard Display strings
leaderboardTitle BYTE "--- LEADERBOARD ---", 0
rankHeader BYTE "RANK", 0
nameHeader BYTE "PLAYER NAME", 0
scoreHeader BYTE "SCORE", 0
separatorLine BYTE "------------------------------------------------------------", 0
emptyLeaderMsg BYTE "No scores yet. Be the first!", 0
leaderboardBack BYTE "Press ESC to return to menu...", 0

; ----- Others -----
scoreStr byte "Score: ",0
score dWord 0
scorey byte 49
timeStr byte "Time: ",0
time dWord 0
timey byte 32
msCounter dWord 0
careerMode byte "Career Mode",0
timeMode byte "Time Mode",0
endlessMode byte "Endless Mode",0
curr byte 0
curc byte 0
cursorx byte 0
cursory byte 0
loopcount byte 0
mode byte 1     ; mode status: 0 for Career , 1 for Time and 2 for Endless
randx byte ?
randy byte ?
passengerInCar byte 0
passengerDropedCount byte 0
endTheGame byte 0
gameStartFlag DWORD 0
passengerCountForNPCspeed byte 0
npcMoveDelay byte 20
temp BYTE 0 

;------- Sound Paths ------------
SND_FILENAME DWORD 00020000h 
SND_ASYNC    DWORD 00000001h

hornSound BYTE "D:\COAL-Project-Sounds\horn.wav", 0  
youwinSound BYTE "D:\COAL-Project-Sounds\youwin.wav", 0  
gameoverSound byte "D:\COAL-Project-Sounds\gameover.wav",0
ignitionSound byte "D:\COAL-Project-Sounds\ignition.wav",0
treasureSound byte "D:\COAL-Project-Sounds\treasure.wav",0
crashSound byte "D:\COAL-Project-Sounds\crash.wav",0
coinSound byte "D:\COAL-Project-Sounds\coin.wav",0


;----------------------------------------------- Code Segment ---------------------------------------
.code
main PROC
    call Clrscr
    call Randomize

call displayMenuPage1
    call clrscr
    mov esi,offset grid
    call drawScreen
    ;call drawRectangle
    call drawCar
    call drawBuildings
    call drawTrees
call getRandomIndexForNPCs
call drawNPCCar
mov currentNPC,1
call drawNPCCar
    mov carx,2
    mov cary,0
    cmp mode,1
    jne ezy
    mov time,110
    ezy:
    mov ecx,5
    drawPassengersInStart:
        call drawPassenger
        inc playersCount
        loop drawPassengersInStart

INVOKE PlaySound, ADDR ignitionSound, NULL, SND_ASYNC
gameloop:



    cmp endTheGame,0
    je continue
    jmp endGame
    continue:
    cmp carType,0
    jne nodelay
    mov eax,5
    call delay
    jmp delayed
    nodelay:
    mov eax, 1          ; 1 millisecond
    call Delay 
    delayed:
    inc msCounter
    inc moveNPC
    cmp msCounter, 80
    jl skipSecond       ; sec is not completed yet

    ; 1 SECOND COMPLETED

    cmp score,0
    jl endGame
    mov msCounter, 0
    cmp score,9
    jg next3
    mov dh,0
    mov dl,scorey
    inc dl
    call gotoxy
    mov eax,blackonblack
    call setTextColor
    mov al,'.'
    call writechar
    call updateScore
    next3:
    cmp mode,1
    je timeMode1
    inc time
    cmp time,9
    jg next2
    trimTens:
    mov dh,0
    mov dl,timey
    inc dl
    call gotoxy
    mov eax,blackonblack
    call setTextColor
    mov al,'.'
    call writechar
    next2:
    cmp mode,0
    je careerMode1

    jmp done
    timeMode1:
        cmp time,0
        jle youwon1
        dec time
        cmp time,9
        jle trimTens
        cmp time,99
        jne done
        mov dh,0
        mov dl,timey
        add dl,2
        call gotoxy
        mov eax,blackonblack
        call settextcolor
        mov al,'.'
        call writeint
        jmp done
    careerMode1:
        cmp passengerDropedCount,5
        jge youwon1
        

    done:
    mov eax,whiteonblack
    call settextcolor
    mov dh,0
    mov dl,timey
    call gotoxy
    mov eax,time
    call writeDec

skipSecond:
    cmp passengerCountForNPCspeed,2
    je increaseNPCspeed
    mov bl,npcMoveDelay
    cmp moveNPC, bl
    je moveNPCs
    cmp playersCount,3
    jle drawMorePassengers
    call ReadKey
    jz gameloop           ; no key pressed, continue
    mov bl, ah
    cmp al, 20h           ; Check if spacebar
    je spacebar
    cmp al,70h
    je pauseIt
    cmp bl, 4Dh
    je moving
    cmp bl, 4Bh
    je moving
    cmp bl, 48h
    je moving
    cmp bl, 50h
    je moving
    jmp gameloop

moving:
    call moveCar
    jmp gameloop
    
spacebar:

    cmp passengerInCar, 0
    je tryPickup
    ; If passenger already in car, check for destination
    call checkForDestination
    jmp gameloop
    
tryPickup:
    call checkForPassenger
    jmp gameloop

drawMorePassengers:
        call drawPassenger
        inc playersCount
        jmp gameloop
pauseIt:
    call PauseTheGame
    jmp gameloop
moveNPCs:
    mov moveNPC,0
    call moveNPCcars
    jmp gameloop
increaseNPCspeed:
    mov passengerCountForNPCspeed,0
    cmp npcMoveDelay,0
    jle nodec
    sub npcMoveDelay,4
    INVOKE PlaySound, ADDR coinSound, NULL, SND_ASYNC
    nodec:
    jmp gameloop
endGame:
  call gameOver
  jmp finish
youwon1:
    call youWon

finish:
exit
main ENDP


;---------------------------------- Display Screen ----------------------------------
displayLeaderboardScreen PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    call Clrscr
    mov eax, whiteonblack
    call SetTextColor
    
    mov dh, 2
    mov dl, 32
    call Gotoxy
    mov eax, cyanonblack
    call SetTextColor
    mov edx, OFFSET leaderboardTitle
    call WriteString
    
    mov dh, 5
    mov dl, 15
    call Gotoxy
    mov eax, lgreenonblack
    call SetTextColor
    mov edx, OFFSET rankHeader
    call WriteString
    
    mov dl, 25
    call Gotoxy
    mov edx, OFFSET nameHeader
    call WriteString
    
    mov dl, 60
    call Gotoxy
    mov edx, OFFSET scoreHeader
    call WriteString
    
    mov dh, 6
    mov dl, 15
    call Gotoxy
    mov eax, greyonblack
    call SetTextColor
    mov edx, OFFSET separatorLine
    call WriteString
    
    cmp leaderCount, 0
    je showEmpty
    
    mov bl, 0
    mov dh, 8
displayLoop:
    cmp bl, leaderCount
    jge displayEnd
    
    mov dl, 17
    call Gotoxy
    mov eax, whiteonblack
    call SetTextColor
    movzx eax, bl
    inc eax
    call WriteDec
    mov al, '.'
    call WriteChar
    
    mov dl, 25
    call Gotoxy
    mov eax, redonblack
    call SetTextColor
    
    movzx eax, bl
    mov ecx, 50
    imul eax, ecx
    mov esi, OFFSET leaderNames
    add esi, eax
    mov edx, esi
    call WriteString
    
    mov dl, 60
    call Gotoxy
    movzx eax, bl
    mov eax, [leaderScores + eax*4]
    call WriteDec
    
    inc bl
    inc dh
    jmp displayLoop
    
showEmpty:
    mov dh, 10
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET emptyLeaderMsg
    call WriteString
    
displayEnd:
    mov dh, 22
    mov dl, 28
    call Gotoxy
    mov eax, greyonblack
    call SetTextColor
    mov edx, OFFSET leaderboardBack
    call WriteString
    
waitForEsc:
    call ReadChar
    cmp al, 27
    jne waitForEsc
    
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
displayLeaderboardScreen ENDP


;------------------------------------------------ You Won -------------------------------------------
youWon PROC
    push eax
    push ebx
    push ecx
    push edx
    
    ; Clear screen
    call Clrscr

    mov eax,2000
    call delay

    mov eax, blackonblack ; for black bacjground
    call SetTextColor
        movzx ecx, rows        
outer_loop:
    push ecx           
    movzx ecx, cols        
inner_loop:
 mov al,'.'
 call writechar
    loop inner_loop

    pop ecx             
    loop outer_loop
    
    mov eax,whiteonblack
    call settextcolor
    mov bl, 0
    mov temp, bl
    mov edx, OFFSET YouWonMsg
    mov ecx, 22
    
youWonLoop:
    mov ebx, edx
    mov dl, 0
    mov dh, temp
    call Gotoxy
    mov edx, ebx
    call WriteString
    add edx, 121
    inc temp
    
    LOOP youWonLoop

    mov eax, redonblack
    call SetTextColor
    

    mov dl, 20
    mov dh, 24
    call Gotoxy
    mov edx, OFFSET finalScoreMsg
    call WriteString
    

    mov dl, 25
    mov dh, 26
    call Gotoxy
    mov eax,score
    call WriteInt
    INVOKE PlaySound, ADDR youwinSound, NULL, SND_ASYNC

    mov eax,5000
    call delay
    
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
youWon ENDP

;---------------------------------------------- Game Over Screen ------------------------------------------
gameOver PROC
    push eax
    push ebx
    push ecx
    push edx
    
    call Clrscr
    INVOKE PlaySound, ADDR gameoverSound, NULL, SND_ASYNC

    mov eax, redonblack
    call SetTextColor

    movzx ecx, rows        
outer_loop:
    push ecx           
    movzx ecx, cols        
inner_loop:
 mov al,'.'
 call writechar
    loop inner_loop

    pop ecx             
    loop outer_loop

     mov eax,whiteonblack
    call settextcolor
    mov bl, 0
    mov temp, bl
    mov edx, OFFSET GameOverMsg
    mov ecx, 19
    
gameOverLoop:
    mov ebx, edx
    mov dl, 0
    mov dh, temp
    call Gotoxy
    mov edx, ebx
    call WriteString
    add edx, 121
    inc temp
    
    LOOP gameOverLoop
    
    mov eax, redonblack
    call SetTextColor
    
    mov dl, 55
    mov dh, 22
    call Gotoxy
    mov edx, OFFSET finalScoreMsg
    call WriteString
    
    mov dl, 63
    mov dh, 24
    call Gotoxy
    mov eax, 0
    call WriteInt
    

    mov eax, 5000
    call Delay
    
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
gameOver ENDP

;---------------------------------------- Display Menu Page 1 ------------------------------------
displayMenuPage1 PROC
    push eax
    push ebx
    push ecx
    push edx
    
    ; Clear screen
    call Clrscr
    
    ; Display game title (ASCII art)
    mov dh, 3             
    mov dl, 10     
    call Gotoxy
    mov eax, titleColor
    call SetTextColor
    mov edx, OFFSET gameTitle1
    call WriteString
    
    mov dh, 4         
    mov dl, 10            
    call Gotoxy
    mov edx, OFFSET gameTitle2
    call WriteString
    
    mov dh, 5           
    mov dl, 10            
    call Gotoxy
    mov edx, OFFSET gameTitle3
    call WriteString
    
    mov dh, 6         
    mov dl, 10         
    call Gotoxy
    mov edx, OFFSET gameTitle4
    call WriteString
    
    mov dh, 7             
    mov dl, 10            
    call Gotoxy
    mov edx, OFFSET gameTitle5
    call WriteString
    
    ; Display welcome message
    mov dh, 10
    mov dl, 14           
    call Gotoxy
    mov eax, welcomeColor
    call SetTextColor
    mov edx, OFFSET welcomeMsg
    call WriteString
    
    ; Display prompt for name
    mov dh, 15
    mov dl, 22
    call Gotoxy
    mov eax, promptColor
    call SetTextColor
    mov edx, OFFSET promptName
    call WriteString
    
    ; Get player name input
    mov dh, 17
    mov dl, 47
    call Gotoxy
    mov eax, whiteonblack  
    call SetTextColor
    
    ; Read string from user
    mov edx, OFFSET playerName
    mov ecx, 49            
    call ReadString
    mov nameLength, eax  
    
    ; Display press enter message
    mov dh, 20
    mov dl, 25
    call Gotoxy
    mov eax, welcomeColor
    call SetTextColor
    mov edx, OFFSET pressEnterMsg
    call WriteString
    
    ; Wait for ENTER key
    call ReadChar
    call displayMenuPage2
    
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
displayMenuPage1 ENDP

; ------------- getPlayerName --------------
; Returns pointer to player name in EDX
getPlayerName PROC
    mov edx, OFFSET playerName
    ret
getPlayerName ENDP

; ------------ getPlayerNameLength ---------------
; Returns length of player name in EAX
getPlayerNameLength PROC
    mov eax, nameLength
    ret
getPlayerNameLength ENDP

;-------------------------------------------- Display menu page 2 -----------------------------------------
displayMenuPage2 PROC
    push eax
    push ebx
    push ecx
    push edx
    
menuPage2Loop:
  
    call Clrscr
  
    mov eax, whiteonblack
    call SetTextColor
    

    mov dh, 3
    mov dl, 30
    call Gotoxy
    mov eax, cyanonblack
    call SetTextColor
    mov edx, OFFSET menuTitle
    call WriteString
    
   
    mov dh, 7
    mov dl, 28
    call Gotoxy
    mov eax, redonblack
    call SetTextColor
    mov edx, OFFSET menuOption1     ; Display menu options
    call WriteString
    
    mov dh, 9
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET menuOption2    
    call WriteString
    
    mov dh, 11
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET menuOption3
    call WriteString
    
    mov dh, 13
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET menuOption4
    call WriteString
    
    ; Display prompt
    mov dh, 16
    mov dl, 25
    call Gotoxy
    mov eax, whiteonblack
    call SetTextColor
    mov edx, OFFSET menuPrompt
    call WriteString
    
    ; Get user input
    call ReadChar
    
    ; Process input
    cmp al, '1'
    je startGameMenu
    cmp al, '2'
    je showLeaderboard
    cmp al, '3'
    je showManual
    cmp al, '4'
    je exitGame
    
    ; Invalid input, loop again
    jmp menuPage2Loop
    
startGameMenu:
    call displayMenuPage3
    jmp menuPage2End 

    
showLeaderboard:
    call displayLeaderboardScreen
    jmp menuPage2Loop
    
showManual:
    call displayUserManual
    jmp menuPage2Loop
    
exitGame:
    mov endTheGame,1
    mov gameStartFlag, 0
    pop edx
    pop ecx
    pop ebx
    pop eax
    call clrscr
    exit

    
    
menuPage2End:
    mov gameStartFlag, 0
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
displayMenuPage2 ENDP

;------------------------------------------------ Display menu page 3 --------------------------------
displayMenuPage3 PROC
    push eax
    push ebx
    push ecx
    push edx
    
menuPage3Loop:

    call Clrscr
    
    mov eax, whiteonblack
    call SetTextColor
   
    mov dh, 3
    mov dl, 28
    call Gotoxy
    mov eax, cyanonblack
    call SetTextColor
    mov edx, OFFSET modeTitle
    call WriteString
    

    mov dh, 7
    mov dl, 28
    call Gotoxy
    mov eax, redonblack
    call SetTextColor
    mov edx, OFFSET modeOption1       ; Display mode options
    call WriteString
    
    mov dh, 9
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET modeOption2
    call WriteString
    
    mov dh, 11
    mov dl, 28
    call Gotoxy
    mov edx, OFFSET modeOption3
    call WriteString
    
  
    mov dh, 14
    mov dl, 28
    call Gotoxy
    mov eax, greyonblack
    call SetTextColor
    mov edx, OFFSET escBack      ; Display back option
    call WriteString
    
    mov dh, 17
    mov dl, 25
    call Gotoxy
    mov eax, whiteonblack
    call SetTextColor
    mov edx, OFFSET menuPrompt
    call WriteString
    
 
    call ReadChar
    
    ; Check for ESC key (ASCII 27)
    cmp al, 27
    je backToMenu2
    
    ; Process input
    cmp al, '1'
    je careerMode1
    cmp al, '2'
    je timeMode1
    cmp al, '3'
    je endlessMode1
    
    ; Invalid input, loop again
    jmp menuPage3Loop
    
backToMenu2:
    pop edx
    pop ecx
    pop ebx
    pop eax
    call displayMenuPage2

    
careerMode1:
    mov mode, 0
    jmp carSelection
    
timeMode1:
    mov mode, 1
    jmp carSelection
    
endlessMode1:
    mov mode, 2
    jmp carSelection
    
carSelection:
    call displayMenuPage4
    cmp gameStartFlag, 1
    je exitMenu3          
    jmp menuPage3Loop         ; Return to mode selection if ESC was pressed
    
exitMenu3:
    mov gameStartFlag, 0     
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
    
displayMenuPage3 ENDP

;---------------------------------------------- Menu Page 4 (Car Selection) ------------------------------------------
displayMenuPage4 PROC
    push eax
    push ebx
    push ecx
    push edx
    
menuPage4Loop:
    call Clrscr
    
    mov eax, whiteonblack
    call SetTextColor
    
  
    mov dh, 3
    mov dl, 26
    call Gotoxy
    mov eax, cyanonblack
    call SetTextColor
    mov edx, OFFSET carTitle     ; Display title
    call WriteString
    

    mov dh, 7
    mov dl, 28
    call Gotoxy
    mov eax, redonblack
    call SetTextColor
    mov edx, OFFSET carOption1       ; Display car options
    call WriteString
    
    mov dh, 9
    mov dl, 28
    call Gotoxy
    mov eax, blueonblack
    call SetTextColor
    mov edx, OFFSET carOption2
    call WriteString
    
    mov dh, 11
    mov dl, 28
    call Gotoxy
    mov eax, brownonblack
    call SetTextColor
    mov edx, OFFSET carOption3
    call WriteString
    
    mov dh, 14
    mov dl, 28
    call Gotoxy
    mov eax, greyonblack
    call SetTextColor
    mov edx, OFFSET escBack       ; Display back option
    call WriteString
    
    mov dh, 17
    mov dl, 25
    call Gotoxy
    mov eax, whiteonblack
    call SetTextColor
    mov edx, OFFSET menuPrompt
    call WriteString
    

    call ReadChar
    
    cmp al, 27
    je backToMenu3
    
    cmp al, '1'
    je redCar
    cmp al, '2'
    je blueCar
    cmp al, '3'
    je randomCar
    
  
    jmp menuPage4Loop     ; Invalid input, loop again
    
backToMenu3:
    mov gameStartFlag, 0      ; Mark that ESC was pressed
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
    
redCar:
    mov carType, 0
    mov gameStartFlag, 1
    jmp startGame
    
blueCar:
    mov carType, 1
    mov gameStartFlag, 1
    jmp startGame
    
randomCar:
    ; Generate random number (0 or 1)
    call Randomize
    mov eax, 2
    call RandomRange    
    mov carType, al
    mov gameStartFlag, 1      ; Mark that game should start
    jmp startGame
    
startGame:
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
displayMenuPage4 ENDP

;---------------------------------------------- User Manual ------------------------------------------
displayUserManual PROC
    push eax
    push ebx
    push ecx
    push edx
    
    call Clrscr
    
    mov eax, whiteonblack
    call SetTextColor
    

    mov dh, 2
    mov dl, 30
    call Gotoxy
    mov eax, cyanonblack
    call SetTextColor
    mov edx, OFFSET manualTitle        ; Display manual title
    call WriteString
    

    mov dh, 5
    mov dl, 5
    call Gotoxy
    mov eax, whiteonblack
    call SetTextColor
    mov edx, OFFSET instruction1        ; Display instructions
    call WriteString
    
    mov dh, 7
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction2
    call WriteString
    
    mov dh, 9
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction3
    call WriteString
    
    mov dh, 11
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction4
    call WriteString
    
    mov dh, 13
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction5
    call WriteString
    
    mov dh, 15
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction6
    call WriteString
    
    mov dh, 17
    mov dl, 5
    call Gotoxy
    mov edx, OFFSET instruction7
    call WriteString
    

    mov dh, 22
    mov dl, 25
    call Gotoxy
    mov eax, greyonblack
    call SetTextColor
    mov edx, OFFSET backToMenu        ; Display back message
    call WriteString
    
    ; Wait for ESC key
    manualLoop:
        call ReadChar
        cmp al, 27        ; Check for ESC
        jne manualLoop    ; If not ESC, keep waiting
    
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
displayUserManual ENDP

; ----------------------------------------------- Draw Screen ----------------------------------------
drawScreen PROC

    call Clrscr
    mov eax,whiteonwhite
    call SetTextColor      ; apply color

    movzx ecx, width1    ; total rows
    mov dh, 0

fillRows:
    mov dl, 0
    call Gotoxy

    movzx ebx, height1     ; total columns
    mov bl, height1
    

fillCols:
    cmp dh,1
    jle blackenFirstRow
    jmp elsebody
    blackenFirstRow:
    mov eax,blackonblack
    call SetTextColor 
    jmp body
    elsebody:
    mov eax,whiteonwhite
    call SetTextColor 

    body:
    mov al,'.'    ; draw white color
    call WriteChar
    
    dec bl
    jnz fillCols

    inc dh
    loop fillRows

    ; using gotoxy for mouse movements for display top display bar

    mov eax,whiteonblack
    call SetTextColor  
    mov dh,0
    mov dl,2
    call gotoxy
    mov edx, offset playerName
    call writestring
    mov dh,0
    mov dl,2
    mov eax,12
    add dl,al
    add dl,12
    mov al,dl
    call gotoxy
    mov edx,offset timeStr
    call writestring
    mov dh,0
    mov dl,al
    inc dl
    mov eax,0
    mov eax,score
    call writeint
    add dl,15
    call gotoxy
    mov bl,dl
    mov edx,offset scoreStr
    call writestring
    mov dh,0
    mov dl,al
    inc dl
    mov eax,0
    mov eax,score
    call writeint

    mov dl,bl
    add dl,18
    call gotoxy
    cmp mode,0
    jz careermode1
    cmp mode,1
    jz timemode1
    cmp mode,2
    jz endlessmode1
    jmp outside
    careermode1:
        mov edx,offset careerMode
        call writestring
        jmp outside
    timemode1:
        mov edx,offset timeMode
        call writestring
        jmp outside
    endlessmode1:
        mov edx,offset endlessmode 
        call writestring
        jmp outside
    outside:

        

    mov dh,1
    mov dl,0
    call gotoxy
    movzx ecx,height1
    secondRowBoundary:
        mov al,'_'
        call writechar
        loop secondRowBoundary


        
        
        

    ret
drawScreen ENDP
;-------------- Pause The Game -----------------
pauseTheGame PROC
mov al,0
l1:
    call readkey
    cmp al,70h
    je startTheGame
    jmp l1

startTheGame:
ret
pauseTheGame ENDP
;------------------------------------------------ Status Bar Item Updates --------------------------------------
;-------------- Update Score ------------------
updateScore PROC
mov eax,whiteonblack
call settextcolor
mov dh,0
mov dl,scorey
call gotoxy
mov eax,score
call writeDec
ret
updateScore ENDP

;---------------------------------- Draw Car --------------------------------------------
drawCar PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    push edi
    
    ; First, populate the grid with '1' where car will be
    mov bl, carx
    mov bh, cary
    sub bl, 2          
    
    inc cols             
    movzx ecx, carw      
    
populateGridRows:
    push ecx            
    push ebx          
    
    movzx ecx, carh     
    
populateGridCols:
    ; Calculate grid position: bl * cols + bh
    movzx eax, bl
    movzx edx, cols
    imul eax, edx        
    movzx edx, bh
    add eax, edx         
    
    ; Set grid[index] = '1'
    mov byte ptr [esi + eax], '1'
    
    inc bh              
    loop populateGridCols
    
    pop ebx               
    inc bl                
    mov bh, cary          
    pop ecx                
    loop populateGridRows
    
    dec cols           
    
    ; Now draw the car on screen
    mov dh, carx
    mov dl, cary
    call gotoxy
    movzx ecx, carw        ; setting height for the car
    movzx ebx, carh        ; setting width for the car
    
    cmp cartype, 0
    jz redcar
    jmp yellowcar
    
redcar:
    mov eax, redonred
    call setTextColor
    jmp colordone
    
yellowcar:
    mov eax, blueonblue
    call setTextColor
    
colordone:
l1:
    mov bl, carh
    mov dl, cary           ; Reset to starting column
    call gotoxy
    cmp ecx, 1
    jz tyres
    jmp body
    
tyres:
    cmp cartype, 0
    jz redtyre
    jmp yellowtyre
    
redtyre:
    mov eax, redonwhite
    call setTextColor
    jmp tyrecolordone
    
yellowtyre:
    mov eax, blueonwhite
    call setTextColor
    
tyrecolordone:
body:
l2:
    cmp ecx, 1
    jz checkcol
    jmp remain
    
checkcol:
    cmp bl, 2
    jz getout
    mov al, 'O'
    call writechar
    jmp done
    
remain:
    mov al, '-'
    call writechar
    jmp done
    
getout:
    inc dl
    call gotoxy
    jmp done
    
done:
    inc dl
    dec bl
    cmp bl, 0
    jnz l2
    inc dh
    loop l1
    
    pop edi
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret 
drawCar ENDP

;---------------------------------- Draw Buildings ---------------------------------------
drawBuildings PROC
mov cursorx,2
inc cols
movzx ecx,rows
mov bl,cols
mov eax,greyongrey
call setTextColor
mov edx,0
mov dh,cursorx
mov dl,cursory
call gotoxy
mov eax,0
mov curr,0

l1:
     mov dl,0
    mov curc,0
    mov cursory,0
    mov dh,cursorx

    ; removed the gotoxy call here to avoid extra cursor moves
    mov bl,cols
    l2:
        movzx eax,curr
        movzx edx,cols
        imul eax,edx
        movzx edx,curc
        add eax,edx
        mov al,[esi+eax]
        cmp al,'2'
        jz buildingFound
        jmp nobuilding
        buildingFound:
            mov dh,cursorx
            mov dl,cursory
            call gotoxy
            mov al,','
            call writechar
            inc curc
            inc cursory
            jmp done
        nobuilding:
            inc cursory
            inc curc
        
            ; do NOT call gotoxy here for non-building cells
        done:

            dec bl
        cmp bl,0
        jnz l2

        inc curr
        inc cursorx

    dec ecx
    jnz l1
    dec cols

ret
drawBuildings ENDP

;---------------------------------- Draw Trees ------------------------------------------
; Add to .data section:


drawTrees PROC
    mov cursorx, 2
    inc cols
    movzx ecx, rows
    mov bl, cols
    mov edx, 0
    mov dh, cursorx
    mov dl, cursory
    call gotoxy
    mov eax, 0
    mov curr, 0

l1:
    mov dl, 0
    mov curc, 0
    mov cursory, 0
    mov dh, cursorx
    mov bl, cols
    
l2:
    movzx eax, curr
    movzx edx, cols
    imul eax, edx
    movzx edx, curc
    add eax, edx
    mov al, [esi+eax]
    
    cmp al, '3'
    jz leavesFound
    cmp al, '4'
    jz trunkFound
    jmp noTree
    
leavesFound:
    mov dh, cursorx
    mov dl, cursory
    call gotoxy
    mov eax, greenongreen
    call setTextColor
    mov al, 'O'
    call writechar
    inc curc
    inc cursory
    jmp done
    
trunkFound:
    mov dh, cursorx
    mov dl, cursory
    call gotoxy
    mov eax, brownonbrown
    call setTextColor
    mov al, '|'
    call writechar
    inc curc
    inc cursory
    jmp done
    
noTree:
    inc cursory
    inc curc
    
done:
    dec bl
    cmp bl, 0
    jnz l2
    
    inc curr
    inc cursorx
    
    dec ecx
    jnz l1
    dec cols

    ret
drawTrees ENDP

; --------------------------------- Draw Passenger --------------------------------------

drawPassenger PROC
getRandom:     ; Random generation of coordinates
    movzx eax, rows
    sub eax, 4
    call RandomRange
    add eax, 1
    mov randx, al
    
    movzx eax, cols
    sub eax, 2
    call RandomRange
    add eax, 1
    mov randy, al
    
    inc cols
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    cmp byte ptr [esi+eax], '0'             ; check if the random index has free space
    jne cleanupAndRetryPass
    
checkUp:
    movzx eax, randx
    dec al
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    cmp byte ptr [esi+eax], '0'               ; check if the random index has free space
    jne cleanupAndRetryPass
    
checkDown:
    movzx eax, randx
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    cmp byte ptr [esi+eax], '0'                  ; check if the random index has free space
    jne cleanupAndRetryPass
    
checkRight:
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    inc dl
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetryPass
    
checkLeft:
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    dec dl
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetryPass
    
checkBuildingBelow:
    movzx eax, randx
    add al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    cmp byte ptr [esi+eax], '2'
    jne cleanupAndRetryPass
    
    jmp insertPassenger
    
cleanupAndRetryPass:
    dec cols
    jmp getRandom
    
insertPassenger:                        ; Insert passenger in grid
    movzx eax, randx
    dec eax
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    mov byte ptr [esi+eax], '5'  
    
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    dec edx
    add eax, edx
    mov byte ptr [esi+eax], '6'
    
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    mov byte ptr [esi+eax], '7'
    
    movzx eax, randx
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    inc edx
    add eax, edx
    mov byte ptr [esi+eax], '8'
    
    movzx eax, randx
    inc eax
    movzx edx, cols
    imul eax, edx
    movzx edx, randy
    add eax, edx
    mov byte ptr [esi+eax], '9'
    
    dec cols
    
    movzx edx, randx                ; display on screen
    dec dl
    add dl, 2
    mov dh, dl
    mov dl, randy
    call Gotoxy
    mov eax, blackonwhite
    call SetTextColor
    mov al, 'O'
    call WriteChar
    
    movzx edx, randx
    add dl, 2
    mov dh, dl
    mov dl, randy
    dec dl
    call Gotoxy
    mov eax, blackonblack
    call SetTextColor
    mov al, '-'
    call WriteChar
    
    movzx edx, randx
    add dl, 2
    mov dh, dl
    mov dl, randy
    call Gotoxy
    mov eax, blackonblack
    call SetTextColor
    mov al, '-'
    call WriteChar
    
    movzx edx, randx
    add dl, 2
    mov dh, dl
    mov dl, randy
    inc dl
    call Gotoxy
    mov eax, blackonblack
    call SetTextColor
    mov al, '-'
    call WriteChar
    
    movzx edx, randx
    inc dl
    add dl, 2
    mov dh, dl
    mov dl, randy
    call Gotoxy
    mov eax, blackonblack
    call SetTextColor
    mov al, '|'
    call WriteChar
    
    ret
drawPassenger ENDP

;---------------------------------- Get Random Destination ------------------------------------------
getRandomDestination PROC
getRandomDest:                  ; similarily gets random coordination, insert them in grid and then showing on screen
    movzx eax, rows
    sub eax, 3
    call RandomRange
    add eax, 1
    mov destx, al
    
    movzx eax, cols
    sub eax, 4
    call RandomRange
    add eax, 1
    mov desty, al
    
    inc cols
    
    movzx eax, destx
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    movzx eax, destx
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    inc dl
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    movzx eax, destx
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add dl, 2
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    movzx eax, destx
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    movzx eax, destx
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    inc dl
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    movzx eax, destx
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add dl, 2
    add eax, edx
    cmp byte ptr [esi+eax], '0'
    jne cleanupAndRetry1
    
    dec cols
    ret
    
cleanupAndRetry1:
    dec cols
    jmp getRandomDest

getRandomDestination ENDP

;---------------------------------- Draw Destination ------------------------------------
drawDestination PROC
    
    inc cols
    mov bl, 0
    
insertGridRows:
    mov bh, 0
    
insertGridCols:
    movzx eax, destx
    add al, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add dl, bh
    add eax, edx
    mov byte ptr [esi+eax], '8'
    
    inc bh
    cmp bh, 3
    jl insertGridCols
    
    inc bl
    cmp bl, 2
    jl insertGridRows
    
    dec cols
    
    mov eax, lgreenonlgreen
    call SetTextColor
    
    mov bl, 0
    
drawRows:
    mov bh, 0
    
drawCols:
    movzx eax, destx
    add al, bl
    add al, 2
    mov dh, al
    
    movzx eax, desty
    add al, bh
    mov dl, al
    
    call Gotoxy
    mov al, '-'
    call WriteChar
    
    inc bh
    cmp bh, 3
    jl drawCols
    
    inc bl
    cmp bl, 2
    jl drawRows
    
    ret
drawDestination ENDP
;---------------------------------- Check for Destination -------------------------------
checkForDestination PROC
    cmp passengerInCar, 0
    je noPassenger
    
    mov bl, carx
    mov bh, cary
    sub bl, 2
    
    inc cols
    
    ;  checks in all directions if there is destination or not when spacebar is pressed.
checkRight:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add dl, 3
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add dl, 3
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
checkLeft:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    dec dl
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    dec dl
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
checkUp:
    movzx eax, bl
    dec al
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    dec al
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    inc dl
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    dec al
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add dl, 2
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
checkDown:
    movzx eax, bl
    add al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    add al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    inc dl
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    movzx eax, bl
    add al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add dl, 2
    add eax, edx
    cmp byte ptr [esi+eax], '8'
    je foundDestination
    
    dec cols
    jmp noPassenger
    
foundDestination:
    mov bl, 0
    
clearDestGrid:
    mov bh, 0
    
clearDestGridCols:
    movzx eax, destx
    add al, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, desty
    add dl, bh
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    inc bh
    cmp bh, 3
    jl clearDestGridCols
    
    inc bl
    cmp bl, 2
    jl clearDestGrid
    
    dec cols
    
    mov eax, whiteonwhite
    call SetTextColor
    
    mov bl, 0
    
clearDestScreen:
    mov bh, 0
    
clearDestScreenCols:
    movzx eax, destx
    add al, bl
    add al, 2
    mov dh, al
    
    movzx eax, desty
    add al, bh
    mov dl, al
    
    call Gotoxy
    mov al, ' '
    call WriteChar
    
    inc bh
    cmp bh, 3
    jl clearDestScreenCols
    
    inc bl
    cmp bl, 2
    jl clearDestScreen
    
    dec playersCount
    mov passengerInCar, 0
    inc passengerDropedCount
    inc passengerCountForNPCspeed
    add score,10
    call updateScore
    INVOKE PlaySound, ADDR treasureSound, NULL, SND_ASYNC

    
noPassenger:
    ret
    
checkForDestination ENDP

;---------------------------------- Check For Passenger ---------------------------------
checkForPassenger PROC
    
    inc cols
    ;                this proc cheks when space bar is preesed and passenger is not in the car, then if there is any passenger in any direction
checkLeftRow1:
    movzx eax, carx
    sub al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, cary
    sub dl,2
    add eax, edx
    mov al, [esi+eax]
    cmp al, '7'
    je foundLeftRow1
    
checkLeftRow2:
    movzx eax, carx
    sub al, 2
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, cary
    sub dl,2
    add eax, edx
    mov al, [esi+eax]
    cmp al, '7'
    je foundLeftRow2
    
checkRightRow1:
    movzx eax, carx
    sub al, 2
    movzx edx, cols
    imul eax, edx
    movzx edx, cary
    add dl, 4
    add eax, edx
    mov al, [esi+eax]
    cmp al, '7'
    je foundRightRow1
    
checkRightRow2:
    movzx eax, carx
    sub al, 2
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, cary
    add dl, 4
    add eax, edx
    mov al, [esi+eax]
    cmp al, '7'
    je foundRightRow2
    
checkDown:
    movzx eax, carx
    sub al, 2
    add al, 3
    movzx edx, cols
    imul eax, edx
    movzx edx, cary
    inc dl
    add eax, edx
    mov al, [esi+eax]
    cmp al, '7'
    je foundDown
    
    dec cols
    ret
    
foundLeftRow1:
    movzx eax, carx
    sub al, 2
    mov playerx, al
    movzx eax, cary
    sub al,2
    mov playery, al
    jmp removePassenger
    
foundLeftRow2:
    movzx eax, carx
    sub al, 2
    inc al
    mov playerx, al
    movzx eax, cary
    sub al,2
    mov playery, al
    jmp removePassenger
    
foundRightRow1:
    movzx eax, carx
    sub al, 2
    mov playerx, al
    movzx eax, cary
    add al, 4
    mov playery, al
    jmp removePassenger
    
foundRightRow2:
    movzx eax, carx
    sub al, 2
    inc al
    mov playerx, al
    movzx eax, cary
    add al, 4
    mov playery, al
    jmp removePassenger
    
foundDown:
    movzx eax, carx
    sub al, 2
    add al, 3
    mov playerx, al
    movzx eax, cary
    inc al
    mov playery, al
    jmp removePassenger
    
removePassenger:
    movzx eax, playerx
    movzx edx, cols
    imul eax, edx
    movzx edx, playery
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    movzx eax, playerx
    movzx edx, cols
    imul eax, edx
    movzx edx, playery
    dec dl
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    movzx eax, playerx
    movzx edx, cols
    imul eax, edx
    movzx edx, playery
    inc dl
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    movzx eax, playerx
    dec al
    movzx edx, cols
    imul eax, edx
    movzx edx, playery
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    movzx eax, playerx
    inc al
    movzx edx, cols
    imul eax, edx
    movzx edx, playery
    add eax, edx
    mov byte ptr [esi+eax], '0'
    
    dec cols
    
    push eax
    mov eax, whiteonwhite
    call SetTextColor
    pop eax
    
    movzx edx, playerx
    add dl, 2
    mov dh, dl
    mov dl, playery
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    movzx edx, playerx
    add dl, 2
    mov dh, dl
    mov dl, playery
    dec dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    movzx edx, playerx
    add dl, 2
    mov dh, dl
    mov dl, playery
    inc dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    movzx edx, playerx
    dec dl
    add dl, 2
    mov dh, dl
    mov dl, playery
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    movzx edx, playerx
    inc dl
    add dl, 2
    mov dh, dl
    mov dl, playery
    call Gotoxy
    mov al, '.'
    call WriteChar

    call getRandomDestination
    call drawDestination
    mov passengerInCar, 1

    
    ret
    
checkForPassenger ENDP
;---------------------------------- Move Car --------------------------------------------

moveCar PROC
    
    ; read the arrow keys as input and then call the repective proc
    cmp bl, 4Dh
    je rightkey
    cmp bl, 4Bh
    je leftkey
    cmp bl, 48h
    je upkey
    cmp bl, 50h
    je downkey
    jmp nokey
    
rightkey:
    cmp right, 0
    je done
    call moveRight
    jmp done
leftkey:
    cmp left, 0
    je done
    call moveLeft
    jmp done
upkey:
    cmp up, 0
    je done
    call moveup
    jmp done
downkey:
    cmp down, 0
    je done
    call movedown
    jmp done
nokey:
done:
    ret 
moveCar ENDP

;==================== Move Right ===========================
moveRight PROC
    mov al, cary
    add al, carh
    cmp al, cols
    jge noright
    
    mov bl, carx
    mov bh, cary
    add bh, 3
    sub bl, 2
    
    inc cols
    movzx ecx, carw
    
checkCollision:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    mov al, [esi+eax]
    cmp al, '0'
    jne collisionRight
    inc bl
    loop checkCollision
    
    dec cols
    call clearPreviousCar
    inc cary
    call drawCar
    mov right, 1
    mov left, 1
    mov up,1
    mov down,1
    ret
            
collisionRight:    ; detecting collisions
cmp al,'3'
    je collisionWithTree
    cmp al,'4'
    je collisionWithTree
    cmp al,'5'
    je collisionWithPerson
    cmp al,'6'
    je collisionWithPerson
    cmp al,'7'
    je collisionWithPerson
    cmp al,'8'
    je collisionWithPerson
    cmp al,'9'
    je collisionWithPerson
    cmp al,'N'
    je collisionWithNPC
    cmp al,'M'
    je collisionWithNPC
    jmp done
    collisionWithPerson:
        INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC
        sub score,5
        call updateScore
        jmp done
    collisionWithTree:
        INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC
        cmp carType,0
        jne blueTaxi
        sub score,2
        call updateScore
        jmp done
        blueTaxi:
            sub score,4
            call updateScore
            jmp done
    collisionWithNPC:
        INVOKE PlaySound, ADDR hornSound, NULL, SND_ASYNC
        INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

         cmp carType,0
        jne blueTaxi1
        sub score,3
        call updateScore
        jmp done
        blueTaxi1:
            sub score,2
            call updateScore
            jmp done  

    done:
    dec cols
    
noright:
    mov right, 0
    ret
moveRight ENDP

;==================== Move Left ===========================

moveLeft PROC
    cmp cary, 0
    jle noleft
    
    mov bl, carx
    mov bh, cary
    dec bh
    sub bl, 2
    
    inc cols
    movzx ecx, carw
    
checkCollisionLeft:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    mov al, [esi+eax]
    cmp al, '0'
    jne collisionLeft
    inc bl
    loop checkCollisionLeft
    
    dec cols
    call clearPreviousCar
    dec cary
    call drawCar
     mov right, 1
    mov left, 1
    mov up,1
    mov down,1
    ret
            
collisionLeft:      ; detecting collisions

cmp al,'3'
    je collisionWithTree
    cmp al,'4'
    je collisionWithTree
    cmp al,'5'
    je collisionWithPerson
    cmp al,'6'
    je collisionWithPerson
    cmp al,'7'
    je collisionWithPerson
    cmp al,'8'
    je collisionWithPerson
    cmp al,'9'
    je collisionWithPerson
    cmp al,'N'
    je collisionWithNPC
    cmp al,'M'
    je collisionWithNPC
    jmp done
    collisionWithPerson:
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

        sub score,5
        call updateScore
        jmp done
    collisionWithTree:
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

        cmp carType,0
        jne blueTaxi
        sub score,2
        call updateScore
        jmp done
        blueTaxi:
            sub score,4
            call updateScore
            jmp done
    collisionWithNPC:
        INVOKE PlaySound, ADDR hornSound, NULL, SND_ASYNC
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

         cmp carType,0
        jne blueTaxi1
        sub score,3
        call updateScore
        jmp done
        blueTaxi1:
            sub score,2
            call updateScore
            jmp done  

    done:
    dec cols
    
noleft:
    mov left, 0
    ret
moveLeft ENDP

;==================== Move Up ===========================

moveUp PROC
    cmp carx, 2
    jle noup
    
    mov bl, carx
    mov bh, cary
    sub bl, 2
    dec bl
    
    inc cols
    movzx ecx, carh
    
checkCollisionUp:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    mov al, [esi+eax]
    cmp al, '0'
    jne collisionUp
    inc bh
    loop checkCollisionUp
    
    dec cols
    call clearPreviousCar
    dec carx
    call drawCar
      mov right, 1
    mov left, 1
    mov up,1
    mov down,1
    ret
            
collisionUp:       ; detecting collisions

cmp al,'3'
    je collisionWithTree
    cmp al,'4'
    je collisionWithTree
    cmp al,'5'
    je collisionWithPerson
    cmp al,'6'
    je collisionWithPerson
    cmp al,'7'
    je collisionWithPerson
    cmp al,'8'
    je collisionWithPerson
    cmp al,'9'
    je collisionWithPerson
    cmp al,'N'
    je collisionWithNPC
    cmp al,'M'
    je collisionWithNPC
    jmp done
    collisionWithPerson:
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

        sub score,5
        call updateScore
        jmp done
    collisionWithTree:
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

        cmp carType,0
        jne blueTaxi
        sub score,2
        call updateScore
        jmp done
        blueTaxi:
            sub score,4
            call updateScore
            jmp done
    collisionWithNPC:
    INVOKE PlaySound, ADDR hornSound, NULL, SND_ASYNC
    INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC


         cmp carType,0
        jne blueTaxi1
        sub score,3
        call updateScore
        jmp done
        blueTaxi1:
            sub score,2
            call updateScore
            jmp done  

    done:
    dec cols
    
noup:
    mov up, 0
    ret
moveUp ENDP


;==================== Move Down ===========================

moveDown PROC
    mov al, carx
    add al, carw
    cmp al, 30
    jge nodown
    
    mov bl, carx
    mov bh, cary
    sub bl, 2
    add bl, carw
    
    inc cols
    movzx ecx, carh
    
checkCollisionDown:
    movzx eax, bl
    movzx edx, cols
    imul eax, edx
    movzx edx, bh
    add eax, edx
    mov al, byte ptr [esi+eax]
    cmp al, '0'
    jne collisionDown
    inc bh
    loop checkCollisionDown
    
    dec cols
    call clearPreviousCar
    inc carx
    call drawCar
    mov right, 1
    mov left, 1
    mov up,1
    mov down,1
    ret
            
collisionDown:       ; detecting collisions

    cmp al,'3'
    je collisionWithTree
    cmp al,'4'
    je collisionWithTree
    cmp al,'5'
    je collisionWithPerson
    cmp al,'6'
    je collisionWithPerson
    cmp al,'7'
    je collisionWithPerson
    cmp al,'8'
    je collisionWithPerson
    cmp al,'9'
    je collisionWithPerson
    cmp al,'N'
    je collisionWithNPC
    cmp al,'M'
    je collisionWithNPC
    jmp done
    
collisionWithPerson:
INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

    sub score,5
    call updateScore
    jmp done
    
collisionWithTree:
INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

    cmp carType,0
    jne blueTaxi
    sub score,2
    call updateScore
    jmp done
    
blueTaxi:
    sub score,4
    call updateScore
    jmp done
    
collisionWithNPC:
    INVOKE PlaySound, ADDR hornSound, NULL, SND_ASYNC
INVOKE PlaySound, ADDR crashSound, NULL, SND_ASYNC

    cmp carType,0
    jne blueTaxi1
    sub score,3
    call updateScore
    jmp done
    
blueTaxi1:
    sub score,2
    call updateScore
    jmp done       

done: 
    dec cols
    
nodown:
    mov down, 0
    ret
moveDown ENDP

;==================== Clear Previous Car ===========================

clearPreviousCar PROC
    mov bl, carx
    mov bh, cary
    sub bl, 2
    
    inc cols
    movzx ecx, carw
    
removeRow:
    mov loopcount, cl
    movzx ecx, carh
    
    removeCol:
        movzx eax, bl
        movzx edx, cols
        imul eax, edx
        movzx edx, bh
        add eax, edx
        mov byte ptr [esi+eax], '0'
        inc bh
    loop removeCol
    
    inc bl
    mov bh, cary
    movzx ecx, loopcount
loop removeRow

    dec cols
    
    mov eax, whiteonwhite
    call SetTextColor
    mov dh, carx
    mov dl, cary
    call gotoxy
    
    movzx ecx, carw
clearRow:
    mov loopcount, cl
    movzx ecx, carh
    
    clearCol:
        mov al, '.'
        call writechar
    loop clearCol
    
    inc dh
    mov dl, cary
    call gotoxy
    movzx ecx, loopcount
loop clearRow

    ret
clearPreviousCar ENDP


;---------------------------------- Get Random Indexes for NPC Cars ----------------------
getRandomIndexForNPCs PROC
    call getRandomDestination
    mov al, destx
    add al, 2
    mov npc1x, al
    mov al, desty
    mov npc1y, al
    
    call getRandomDestination
    mov al, destx
    add al, 2
    mov npc2x, al
    mov al, desty
    mov npc2y, al

ret
getRandomIndexForNPCs ENDP

; ========== drawNPCcar ==========
; Draws NPC at current position
drawNPCcar PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    mov al, currentNPC
    cmp al, 0
    je loadNPC1
    
    movzx ebx, npc2x
    movzx edx, npc2y
    jmp drawCommon
    
loadNPC1:
    movzx ebx, npc1x
    movzx edx, npc1y
    
drawCommon:
    push ebx
    push edx
    
    sub ebx, 2
    
    inc cols
    
    ; Store marker based on currentNPC
    mov al, currentNPC
    cmp al, 0
    je storeN
    
    ; Store 'M' for NPC2
    movzx eax, bx
    movzx ecx, cols
    imul eax, ecx
    add eax, edx
    mov byte ptr [esi+eax], 'M'
    
    inc eax
    mov byte ptr [esi+eax], 'M'
    
    inc eax
    mov byte ptr [esi+eax], 'M'
    
    inc ebx
    movzx eax, bx
    movzx ecx, cols
    imul eax, ecx
    add eax, edx
    mov byte ptr [esi+eax], 'M'
    
    inc eax
    mov byte ptr [esi+eax], 'M'
    
    inc eax
    mov byte ptr [esi+eax], 'M'
    
    jmp doneMark
    
storeN:
    ; Store 'N' for NPC1
    movzx eax, bx
    movzx ecx, cols
    imul eax, ecx
    add eax, edx
    mov byte ptr [esi+eax], 'N'
    
    inc eax
    mov byte ptr [esi+eax], 'N'
    
    inc eax
    mov byte ptr [esi+eax], 'N'
    
    inc ebx
    movzx eax, bx
    movzx ecx, cols
    imul eax, ecx
    add eax, edx
    mov byte ptr [esi+eax], 'N'
    
    inc eax
    mov byte ptr [esi+eax], 'N'
    
    inc eax
    mov byte ptr [esi+eax], 'N'
    
doneMark:
    dec cols
    
    pop edx
    pop ebx
    
    mov eax, blackonblack
    call SetTextColor
    
    mov dh, bl
    mov dl, dl
    call Gotoxy
    mov al, '-'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '-'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '-'
    call WriteChar
    
    mov eax, blackonwhite
    call SetTextColor
    inc dh
    sub dl, 2
    call Gotoxy
    mov al, 'O'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, ' '
    call WriteChar
    inc dl
    call Gotoxy
    mov al, 'O'
    call WriteChar
    
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
drawNPCcar ENDP
; ========== clear NPC from previous loaction ==========
; Clears previous NPC cell
clearNPCPrev PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    ; Load NPC coordinates
    mov al, currentNPC
    cmp al, 0
    je clearNPC1
    
    ; NPC 2
    movzx ebx, npc2x
    movzx edx, npc2y
    jmp clearCommon
    
clearNPC1:
    movzx ebx, npc1x
    movzx edx, npc1y
    
clearCommon:
    
    push ebx
    push edx
    
    sub ebx, 2             
    
    inc cols               
    
    ; Row 0 of car
    movzx eax, bx         
    movzx ecx, cols
    imul eax, ecx       
    add eax, edx            
    mov byte ptr [esi+eax], '0'
    
    inc eax                
    mov byte ptr [esi+eax], '0'
    
    inc eax               
    mov byte ptr [esi+eax], '0'
    
    ; Row 1 of car
    inc ebx              
    movzx eax, bx
    movzx ecx, cols
    imul eax, ecx
    add eax, edx           
    mov byte ptr [esi+eax], '0'
    
    inc eax                 
    mov byte ptr [esi+eax], '0'
    
    inc eax               
    mov byte ptr [esi+eax], '0'
    
    dec cols                
    
    pop edx
    pop ebx
    
    mov eax, whiteonwhite
    call SetTextColor
    
    ; Clear Row 0
    mov dh, bl             
    mov dl, dl            
    call Gotoxy
    mov al, '.'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    ; Clear Row 1
    inc dh                  
    sub dl, 2              
    call Gotoxy
    mov al, '.'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    inc dl
    call Gotoxy
    mov al, '.'
    call WriteChar
    
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
clearNPCPrev ENDP



;------------------------------------------------------------------------------------------------------------------

canNPCMove PROC   ; checks if the npc can move in the ongoing direction
    push eax
    push ebx
    push ecx
    push esi
    push edi
    
    mov ah, currentNPC
    cmp ah, 0
    je setNPC1Marker
    
    mov ch, 'M'
    mov cl, 'N'
    jmp startCheck
    
setNPC1Marker:
    mov ch, 'N'
    mov cl, 'M'
    
startCheck:
    mov al, [esp+16]
    mov bl, [esp+12]
    mov dl, [esp+8]
    
    cmp dl, 0
    je checkRight
    cmp dl, 1
    je checkDown
    cmp dl, 2
    je checkLeft
    jmp checkUp
    
checkRight:
    push ecx
    mov dh, bl
    add dh, 3
    cmp dh, cols
    pop ecx
    jge cantMove
    
    push eax
    movzx eax, al
    sub eax, 2
    
    inc cols
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add edx, 3
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext1
    cmp dh, ch
    je checkNext1
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
foundOtherNPC:
    dec cols
    pop eax
    mov dh, 2
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
    
checkNext1:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    inc eax
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add edx, 3
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je canMoveRight
    cmp dh, ch
    je canMoveRight
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
canMoveRight:
    dec cols
    pop eax
    mov dh, 1
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
    
checkDown:
    push eax
    movzx eax, al
    add al, 2
    cmp al, 30
    pop eax
    jge cantMove
    
    push eax
    movzx eax, al
    sub eax, 2
    add eax, 2
    
    inc cols
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext3
    cmp dh, ch
    je checkNext3
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
checkNext3:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    add eax, 2
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    inc edx
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext4
    cmp dh, ch
    je checkNext4
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
checkNext4:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    add eax, 2
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add edx, 2
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je canMoveDown
    cmp dh, ch
    je canMoveDown
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
canMoveDown:
    dec cols
    pop eax
    mov dh, 1
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
    
checkLeft:
    cmp bl, 1
    jle cantMove
    
    push eax
    movzx eax, al
    sub eax, 2
    
    inc cols
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    dec edx
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext5
    cmp dh, ch
    je checkNext5
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
checkNext5:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    inc eax
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    dec edx
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je canMoveLeft
    cmp dh, ch
    je canMoveLeft
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
canMoveLeft:
    dec cols
    pop eax
    mov dh, 1
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
    
checkUp:
    cmp al, 3
    jle cantMove
    
    push eax
    movzx eax, al
    sub eax, 2
    dec eax
    
    inc cols
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext6
    cmp dh, ch
    je checkNext6
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
checkNext6:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    dec eax
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    inc edx
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je checkNext7
    cmp dh, ch
    je checkNext7
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
checkNext7:
    pop eax
    push eax
    movzx eax, al
    sub eax, 2
    dec eax
    
    push ecx
    push edx
    movzx edx, cols
    movzx edi, dx
    imul eax, edi
    movzx edx, bl
    add edx, 2
    add eax, edx
    pop edx
    pop ecx
    
    mov dh, [esi+eax]
    cmp dh, '0'
    je canMoveUp
    cmp dh, ch
    je canMoveUp
    cmp dh, cl
    je foundOtherNPC
    jmp cantMoveRestore
    
canMoveUp:
    dec cols
    pop eax
    mov dh, 1
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
    
cantMoveRestore:
    dec cols
    pop eax
cantMove:
    mov dh, 0
    pop edi
    pop esi
    pop ecx
    pop ebx
    pop eax
    ret
canNPCMove ENDP

; Helper procedure to check if position overlaps with player car

checkPlayerCarCollision PROC
    push eax
    push ebx
    push ecx
    
    movzx eax, carx
    cmp ebx, eax
    jl noCollision
    add eax, 1
    cmp ebx, eax
    jg noCollision
    
    movzx eax, cary
    cmp ecx, eax
    jl noCollision
    add eax, 2
    cmp ecx, eax
    jg noCollision
    
    mov dh, 1
    pop ecx
    pop ebx
    pop eax
    ret
    
noCollision:
    mov dh, 0
    pop ecx
    pop ebx
    pop eax
    ret
checkPlayerCarCollision ENDP

moveNPCRight PROC
    call clearNPCPrev
    cmp currentNPC, 0
    jne NPC2R
    inc npc1y
    jmp nextR
NPC2R:
    inc npc2y
nextR:
    call drawNPCcar
    ret
moveNPCRight ENDP

moveNPCDown PROC
    call clearNPCPrev
    cmp currentNPC, 0
    jne NPC2D
    inc npc1x
    jmp nextD
NPC2D:
    inc npc2x
nextD:
    call drawNPCcar
    ret
moveNPCDown ENDP

moveNPCLeft PROC
    call clearNPCPrev
    cmp currentNPC, 0
    jne NPC2L
    dec npc1y
    jmp nextL
NPC2L:
    dec npc2y
nextL:
    call drawNPCcar
    ret
moveNPCLeft ENDP

moveNPCUp PROC
    call clearNPCPrev
    cmp currentNPC, 0
    jne NPC2U
    dec npc1x
    jmp nextU
NPC2U:
    dec npc2x
nextU:
    call drawNPCcar
    ret
moveNPCUp ENDP

moveNPCcars PROC
    push eax
    push ebx
    push ecx
    push edx
    
    movzx ecx, npcCarCount
    cmp ecx, 0
    je doneAllMoves
    
    mov currentNPC, 0
    call moveOneNPC
    
    movzx ecx, npcCarCount
    cmp ecx, 2
    jl doneAllMoves
    
    mov currentNPC, 1
    call moveOneNPC
    
doneAllMoves:
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
moveNPCcars ENDP

moveOneNPC PROC
    push eax
    push ebx
    push ecx
    push edx
    push esi
    
    mov al, currentNPC
    cmp al, 0
    je loadNPC1Data
    
    mov al, npc2x
    mov bl, npc2y
    mov cl, npc2dir
    jmp startMovement
    
loadNPC1Data:
    mov al, npc1x
    mov bl, npc1y
    mov cl, npc1dir
    
startMovement:
    mov ah, al
    mov bh, bl
    mov ch, cl
    
    call canNPCMove
    cmp dh, 1
    je executeMove
    cmp dh, 2
    je npcCollisionDetected
    
    mov al, ah
    mov bl, bh
    mov cl, ch
    inc cl
    and cl, 3
    call canNPCMove
    cmp dh, 1
    je executeMove
    cmp dh, 2
    je npcCollisionDetected
    
    mov al, ah
    mov bl, bh
    mov cl, ch
    add cl, 2
    and cl, 3
    call canNPCMove
    cmp dh, 1
    je executeMove
    cmp dh, 2
    je npcCollisionDetected
    
    mov al, ah
    mov bl, bh
    mov cl, ch
    add cl, 3
    and cl, 3
    call canNPCMove
    cmp dh, 1
    je executeMove
    cmp dh, 2
    je npcCollisionDetected
    
    jmp saveDirection
    
npcCollisionDetected:
    mov al, npc1dir
    add al, 2
    and al, 3
    mov npc1dir, al
    
    mov al, npc2dir
    add al, 2
    and al, 3
    mov npc2dir, al
    
    mov al, ah
    mov bl, bh
    mov al, currentNPC
    cmp al, 0
    je reloadNPC1After
    mov cl, npc2dir
    jmp recheckAfterCollision
reloadNPC1After:
    mov cl, npc1dir
    
recheckAfterCollision:
    mov al, ah
    mov bl, bh
    call canNPCMove
    cmp dh, 1
    je executeMove
    
    jmp saveDirection
    
executeMove:
    cmp cl, 0
    je doRight
    cmp cl, 1
    je doDown
    cmp cl, 2
    je doLeft
    jmp doUp
    
doRight:
    call moveNPCRight
    jmp saveDirection
    
doDown:
    call moveNPCDown
    jmp saveDirection
    
doLeft:
    call moveNPCLeft
    jmp saveDirection
    
doUp:
    call moveNPCUp
    
saveDirection:
    mov al, currentNPC
    cmp al, 0
    je saveNPC1Dir
    
    mov npc2dir, cl
    jmp doneMove
    
saveNPC1Dir:
    mov npc1dir, cl
    
doneMove:
    pop esi
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret
moveOneNPC ENDP






END main
