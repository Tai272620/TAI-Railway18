package Assignment2;

import java.util.Scanner;

public class Exercise3 {
	public static void main(String[] args) {
		// Question 1
		// Picture a
		Scanner sc = new Scanner(System.in);
	    int hight;
	    System.out.printf("\n\nNhập vào chiều cao của tam giác: ");
	    hight = sc.nextInt();
	    for (int i = 1; i <= hight; ++i) {
	      for (int j = 1; j <= i; ++j) {
	        System.out.print("# ");
	      }
	      System.out.println();
	    }
		
		
		// Picture b
//		Scanner sc = new Scanner(System.in);
//	    int hight;
//	    System.out.printf("\n\nNhập vào chiều cao của tam giác: ");
//	    hight = sc.nextInt();
//	    for (int i = hight; i >= 1; --i) {
//	      for (int j = 1; j <= i; ++j) {
//	        System.out.print("# ");
//	      }
//	      System.out.println();
//	    }
	    
	    // Question 2 Dùng for
//		System.out.println("Nhập vào n!: ");
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		long GT = 1;
//		for(int i = 1; i <= n; ++i) {
//			GT = GT * i;
//		}
//		System.out.println("Giai thừa của " + n + " là: " + GT);
		
		// Dùng while
//		System.out.println("Nhập vào n!: ");
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		long GT = 1;
//		int i = 1;
//		while(i <= n) {
//			GT = GT * i;
//			++i;
//		}
//		System.out.println("Giai thừa của " + n + " là: " + GT);
		
		
	}

}
