package Assignment2;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
//Excercise 1: Question 1
		System.out.println("Nhập vào số có đơn vị cm : ");
		Scanner scanner = new Scanner(System.in);
		int number = scanner.nextInt();
		double a = number/2.54;
		double b = number/(12*2.54);

		System.out.printf("Chuyển sang inch: " + (double)Math.round(a*100)/100 + " " + "inch");
		System.out.println();
		System.out.println("Chuyển sang fooot: " + (double)Math.round(b*100)/100 +" " + "foot");
		
//Excercise 1: Question 2
//		System.out.println("Nhập vào số giây: ");
//		Scanner scanner = new Scanner(System.in);
//		int n = scanner.nextInt();
//		int hour, minute, second;
//		hour = n/3600;
//		minute = n % 3600/60;
//		second = n % 3600 % 60;
//		System.out.printf("Sau khi đổi từ %d giây: %d:%d:%d",n, hour, minute, second);
		
//Excercise 1: Question 3
//		Scanner scanner = new Scanner(System.in);
//		System.out.println("Nhập vào số phần tử trong mảng: ");
//		int n = scanner.nextInt();
//		System.out.println("Số phần tử trong mảng là: " + n);
//		int[] arr = new int[n];
//		
//		for(int i = 0; i < n; i++) {
//			System.out.print("Số thứ " + i + ":");
//			arr[i] = scanner.nextInt();	
//		}
//		int max = arr[0];
//		for(int i = 1; i < arr.length; i++) {
//			if(arr[i] > max) {
//				max = arr[i];
//			}
//		}
//		System.out.println("Giá trị lớn nhất là: " + max);
//		int min = arr[0];
//		for(int i =1; i < arr.length; i++ ) {
//			if(arr[i] < min) {
//				min = arr[i];
//			}
//		}
//		System.out.println("Giá trị bé nhất là: " + min);

//Exercise 1: Question 4
//		System.out.println("Nhập vào số thứ nhất: ");
//		Scanner scanner = new Scanner(System.in);
//		int a = scanner.nextInt();
//		System.out.println("Nhập vào số thứ hai: ");
//		int b = scanner.nextInt();
//	
//		if(a - b > 0) {
//			System.out.println("Số thứ nhất lớn hơn số thứ hai");
//		}
//		else {
//			System.out.println("Số thứ nhất nhỏ hơn số thứ hai");
//		}

//Exercise 1: Question 5
//		System.out.println("Nhập vào số a: ");
//		Scanner scanner = new Scanner(System.in);
//		int a = scanner.nextInt();
//		System.out.println("Nhập vào số b: ");
//		int b = scanner.nextInt();
//		
//		if(a % b == 0) {
//			System.out.println("Số a chia hết cho b");
//		}
//		else {
//			System.out.println("Số a không chia hết cho b");
//		}

//Exercise 1: Question 6
//		System.out.println("Nhập vào điểm Toán: ");
//		Scanner scanner = new Scanner(System.in);
//		double a = scanner.nextInt();
//		System.out.println("Nhập vào điểm Lý: ");
//		int b = scanner.nextInt();
//		System.out.println("Nhập vào điểm Hóa: ");
//		int c = scanner.nextInt();
//		
//		double d = (a*2 + b + c)/4;
//		System.out.println("Điểm trung bình: " + d);
//		 if(d >= 9) {
//			 System.out.println("Xuất sắc");
//		 }
//		 else if(d >= 8 && d < 9) {
//			 System.out.println("Giỏi");
//		 }
//		 else if(d >= 7 && d < 8) {
//			 System.out.println("Khá");
//		 }
//		 else if(d >= 6 && d < 7) {
//			 System.out.println("Trung bình khá");
//		 }
//		 else if(d >= 5 && d < 6) {
//			 System.out.println("Trung bình");
//		 }
//		 else {
//			 System.out.println("Kém");
//		 }
		
}

}
