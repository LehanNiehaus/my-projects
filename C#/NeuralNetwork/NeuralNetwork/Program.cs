using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NeuralNetwork
{
	class Program
	{
		static void Main(string[] args)
		{
			Nn brain = new Nn(2, 4, 1);

			float[] inputData_0 = { 0, 0 };
			float[] inputData_1 = { 0, 1 };
			float[] inputData_2 = { 1, 0 };
			float[] inputData_3 = { 1, 1 };
			float[] data_0 = { 0 };
			float[] data_1 = { 1 };
			float[] data_2 = { 1 };
			float[] data_3 = { 0 };

			/*for (int i = 0; i < 1000; i++)
			{
				int index = RandomInt(0, 3);
				if (index == 0)
					brain.Train(inputData_0, data_0);
				else if (index == 1)
					brain.Train(inputData_1, data_1);
				else if (index == 2)
					brain.Train(inputData_2, data_2);
				else if (index == 3)
					brain.Train(inputData_3, data_3);
				
			}*/

			brain.Train(inputData_3, data_3);

			float[] output = brain.FeedForward(inputData_0);
			for (int i = 0; i < output.Length; i++)
			{
				Console.WriteLine(output[i]);
			}
			output = brain.FeedForward(inputData_1);
			for (int i = 0; i < output.Length; i++)
			{
				Console.WriteLine(output[i]);
			}
			output = brain.FeedForward(inputData_2);
			for (int i = 0; i < output.Length; i++)
			{
				Console.WriteLine(output[i]);
			}
			output = brain.FeedForward(inputData_3);
			for (int i = 0; i < output.Length; i++)
			{
				Console.WriteLine(output[i]);
			}
			
			


			Console.ReadKey();
		}

		public static int RandomInt(int min, int max)
		{
			Random rand=new Random();
			return rand.Next(min, max - 1);
		}

		
	}
}
