// DailyProgrammer 148: Combination Lock
// http://www.reddit.com/r/dailyprogrammer/comments/1v4cjd/011314_challenge_148_easy_combination_lock/

import java.util.Scanner;

public class Lock {

    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);
        System.out.println("Enter four lock numbers separated by spaces: ");
        int n = keyboard.nextInt();
        int comboFirst = keyboard.nextInt();
        int comboSecond = keyboard.nextInt();
        int comboThird = keyboard.nextInt();
        keyboard.nextLine();
        
        int increments = 0;
        
        increments += (n * 2);
        increments += comboFirst;
        increments += n;
        
        
        if (comboFirst > comboSecond)
        {
            increments += (comboFirst - comboSecond);
        }
        else
        {
            increments += (comboFirst - comboSecond + n);
        }
        
        if (comboThird > comboSecond)
        {
            increments += (comboThird - comboSecond);
        }
        else
        {
            increments += (comboThird - comboSecond + n);
        }

        System.out.println(increments);
    }

}
