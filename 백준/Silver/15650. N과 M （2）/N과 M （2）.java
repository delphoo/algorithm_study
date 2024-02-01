import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.StringTokenizer;

public class Main {
	static int N, M;
	static int[] numbers;
	static StringBuilder sb = new StringBuilder();
	
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		StringTokenizer st = new StringTokenizer(br.readLine());

		N = Integer.parseInt(st.nextToken());
		M = Integer.parseInt(st.nextToken());
		
		numbers = new int[M];
		
		requr(0, 0);
		System.out.println(sb);
	}

	private static void requr(int idx, int startIdx) {
		if(idx == M) {
			for (int i = 0; i < M; i++) {
				sb.append(numbers[i] + " ");
			}
			sb.setLength(sb.length()-1);
			sb.append("\n");
			return;
		}
		
		
		for (int i = startIdx; i < N; i++) {
			numbers[idx] = i+1;
			requr(idx+1, i+1);
		}
	}
	
	
	

}