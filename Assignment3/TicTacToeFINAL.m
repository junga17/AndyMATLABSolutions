% Andy Jung
%9/25/2018
%This is a program that you can play tic-tac-toe against. It utilizes loops
%and conditional statements to flow through the game. Instead of X's and
%O's place markers are the numbers 1 and -2. Once a game is complete it
%will give you the option to keep playing or to leave the game. Hope you
%enjoy.
fprintf('Welcome to Tic-Tac-Toe!!!\n');
ttt=true;
while (ttt==1)
    letsplayagame = input('To start the game please enter the number 1 followed by pressing Enter. Press another number if you do not wish to play. \n');
    if letsplayagame==1
        whofirst=input('If you want me to go first press the number 1 followed by enter, if you want to go first press 0 followed by enter. \n');
        disp('Tic-Tac-Toe will begin in...')
        for i = flip(1:5)
            pause (1)
            disp(i)
        end
        if whofirst==1;
            start=0;
            while (letsplayagame==1)
                gameboard = zeros (3);
                disp(gameboard)
                start = input('This will be our gameboard.  Instead of X''s and O''s, I will use the number 1 and you will use the number -2 as markers. Please type 1 and press enter to see my first move. \n');%displays the board and once the user enters 1 the computer will make the first move
                if start == 1;
                    gameboard (2,2) = 1;
                    disp (gameboard)
                else
                    start == input('Let''s try this again. Please press 1 followed by enter to see my first move. \n');
                    gameboard (2,2) = 1
                    disp(gameboard)
                end
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermoveone = true;
                while (usermoveone);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                computerturntwo=true;
                while(computerturntwo)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0;
                        gameboard(computerrowmove,computercolmove) = 1;
                        disp('Your turn!')
                        disp(gameboard);
                        computerturntwo=false;
                    end
                end
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovetwo = true;
                while (usermovetwo);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                computerturnthree=true;
                while(computerturnthree)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0;
                        gameboard(computerrowmove,computercolmove) = 1;
                        disp('Your turn!');
                        disp(gameboard);
                        computerturnthree=false;
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check for win conditions
                %
                %
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovethree = true;
                while (usermovethree);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                computerturnfour=true;
                while(computerturnfour)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0
                        gameboard(computerrowmove,computercolmove) = 1
                        disp('Your turn!')
                        disp(gameboard);
                        computerturnfour=false;
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovefour = true;
                while (usermovefour);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                computerturnfive=true;
                while(computerturnfive)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0
                        gameboard(computerrowmove,computercolmove) = 1
                        disp('Your turn!')
                        disp(gameboard);
                        computerturnfive=false;
                    end
                end
                disp('TIE GAME')
                GAMEOVER=true;
                if GAMEOVER==true;
                    break
                end
                %Tie Message
                %Ask to play again
                %
                %
            end
            
            start=input('If you want to play again press 1 followed by enter. If not please press 0 followed by enter.\n');
            if start==0;
                ttt=0;
            end
            
     
        elseif whofirst==0
            start=0;
            while (letsplayagame==1)
                gameboard = zeros (3);
                disp(gameboard)
                disp('You chose to play first. This will be our gameboard.  Instead of X''s and O''s, I will use the number 1 and you will use the number -2 as markers.\n');%displays the board and once the user enters 1 the computer will make the first move
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermoveone = true;
                while (usermoveone);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermoveone=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                computerturntwo=true;
                while(computerturntwo)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0;
                        gameboard(computerrowmove,computercolmove) = 1;
                        disp('Your turn!')
                        disp(gameboard);
                        computerturntwo=false;
                    end
                end
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovetwo = true;
                while (usermovetwo);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovetwo=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                computerturnthree=true;
                while(computerturnthree)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0;
                        gameboard(computerrowmove,computercolmove) = 1;
                        disp('Your turn!');
                        disp(gameboard);
                        computerturnthree=false;
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check for win conditions
                %
                %
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovethree = true;
                while (usermovethree);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovethree=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                computerturnfour=true;
                while(computerturnfour)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0
                        gameboard(computerrowmove,computercolmove) = 1
                        disp('Your turn!')
                        disp(gameboard);
                        computerturnfour=false;
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovefour = true;
                while (usermovefour);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovefour=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                
                %
                %Check win conditions
                %
                computerturnfive=true;
                while(computerturnfive)
                    computerrowmove = randi([1 3],1);
                    computercolmove = randi([1 3],1);
                    if gameboard(computerrowmove,computercolmove)==0
                        gameboard(computerrowmove,computercolmove) = 1
                        disp('Your turn!')
                        disp(gameboard);
                        computerturnfive=false;
                    end
                end
                disp('TIE GAME')
                GAMEOVER=true;
                if GAMEOVER==true;
                    break
                end
                %
                %Chech win
                %
                %
                row = input('Enter the row of your next move: ');
                column = input('Enter the column of your next move: ');
                usermovefive = true;
                while (usermovefive);%This loop asks takes the user input and places a 2 at the desired location
                    while(row > 3 || row < 1 || column > 3 || column < 1)
                        disp('error: you must ener 1, 2, or 3')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                    if gameboard(row,column)==0
                        if row==1 && column==1;
                            gameboard(1,1) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==1 && column==2;
                            gameboard(1,2) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==1 && column==3;
                            gameboard(1,3) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==2 && column==1;
                            gameboard(2,1) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==2 && column==2;
                            gameboard(2,2) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==2 && column==3;
                            gameboard(2,3) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==3 && column==1;
                            gameboard(3,1) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==3 && column==2;
                            gameboard(3,2) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        elseif row==3 && column==3;
                            gameboard(3,3) = -2;
                            disp (gameboard)
                            usermovefive=false;
                        end
                    else
                        disp ('spot taken')
                        row = input('Enter the row of your next move: ');
                        column = input('Enter the column of your next move: ');
                    end
                end
                row1win=sum(gameboard(1,:));
                row2win=sum(gameboard(2,:));
                row3win=sum(gameboard(3,:));
                col1win=sum(gameboard(:,1));
                col2win=sum(gameboard(:,2));
                col3win=sum(gameboard(:,3));
                diag1win=(gameboard(1,1) + gameboard(2,2) + gameboard(3,3));
                diag2win=(gameboard(1,3) + gameboard(2,2) + gameboard(3,1));
                wincond=true;
                while wincond==true;
                    if row1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif row3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif col3win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag1win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==3
                        disp('I have won')
                        GAMEOVER = true;
                        wincond=false;
                    elseif diag2win==-6
                        disp('You WIN!!!')
                        GAMEOVER = true;
                        wincond=false;
                    else
                        GAMEOVER=false;
                        wincond=false;
                    end
                end
                if GAMEOVER==true;
                    break
                end
                %Tie Message
                %Ask to play again
                %
                %
            end
            
            start=input('If you want to play again press 1 followed by enter. If not please press 0 followed by enter.\n');
            if start==0;
                ttt=0;
            end
        else
            ttt=0;
            break
        end
    else
        ttt=0;
    end
    
end
disp('GOODBYE')

