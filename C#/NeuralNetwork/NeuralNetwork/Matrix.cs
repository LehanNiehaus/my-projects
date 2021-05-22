using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


class Matrix
{
	public readonly int rows;
	public readonly int colms;
	public float[,] data;

	public Matrix(int  r, int c)
	{
		rows = r;
		colms = c;
		data = new float[r, c];
	}

	public static Matrix Add(Matrix a, float b)
	{
		Matrix result = a;
		for (int i = 0; i < result.rows; i++)
		{
			for (int j = 0; j < result.colms; j++)
			{
				result.data[i, j] += b;
			}
		}
		return result;
	}
	public static Matrix Add(Matrix a ,Matrix b)
	{
		if (a.rows != b.rows | a.colms != b.colms)
			return null;
		
		Matrix result = a;
		for (int i = 0; i < result.rows; i++)
		{
			for (int j = 0; j < result.colms; j++)
			{
				result.data[i, j] += b.data[i, j];
			}
		}
		return result;
	}
	public void Add(float b)
	{
		for (int i = 0; i < this.rows; i++)
		{
			for (int j = 0; j < this.colms; j++)
			{
				this.data[i, j] += b;
			}
		}
	}
	public void Add(Matrix b)
	{
		for (int i = 0; i < this.rows; i++)
		{
			for (int j = 0; j < this.colms; j++)
			{
				this.data[i, j] = this.data[i, j] + b.data[i, j];
			}
		}
	}

	public static Matrix Subtract(Matrix a, float b)
	{
		Matrix result = a;
		for (int i = 0; i < result.rows; i++)
		{
			for (int j = 0; j < result.colms; j++)
			{
				result.data[i, j] -= b;
			}
		}
		return result;
	}
	public static Matrix Subtract(Matrix a, Matrix b)
	{
		if (a.rows != b.rows | a.colms != b.colms)
			return null;

		Matrix result = new Matrix(a.rows, a.colms);
		for (int i = 0; i < result.rows; i++)
		{
			for (int j = 0; j < result.colms; j++)
			{
				result.data[i, j] = a.data[i, j] - b.data[i, j];
			}
		}
		return result;
	}

	public static Matrix Multiply(Matrix a, float b)
	{
		Matrix result = a;
		for (int i = 0; i < result.rows; i++)
		{
			for (int j = 0; j < result.colms; j++)
			{
				result.data[i, j] *= b;
			}
		}
		return result;
	}
	public static Matrix Multiply(Matrix a, Matrix b)
	{
		if (a.colms != b.rows)
			return null;

		Matrix result = new Matrix(a.rows,b.colms);

		for (int i = 0; i < a.rows; i++)
		{
			for (int j = 0; j < b.colms; j++)
			{
				result.data[i, j] = 0;
				for (int k = 0; k < a.colms; k++)
				{
					result.data[i, j] += a.data[i, k] * b.data[k, j];
				}
			}
		}


		return result;
	}
	public void Multiply(float b)
	{
		for (int i = 0; i < this.rows; i++)
		{
			for (int j = 0; j < this.colms; j++)
			{
				this.data[i, j] *= b;
			}
		}
	}
	public void Multiply(Matrix b)
	{
		for (int i = 0; i < this.rows; i++)
		{
			for (int j = 0; j < b.colms; j++)
			{
				this.data[i, j] = 0;
				for (int k = 0; k < this.colms; k++)
				{
					this.data[i, j] += this.data[i, k] * b.data[k, j];
				}
			}
		}
	}

	public void ElementMultiply(Matrix b)
	{
		for (int i = 0; i < this.rows; i++)
		{
			for (int j = 0; j < b.colms; j++)
			{
				this.data[i, j] *= b.data[i, j];
			}
		}
	}
	public static Matrix ElementMultiply(Matrix a, Matrix b)
	{
		a.ElementMultiply(b);
		return a;
	}

	public static Matrix Transpose(Matrix input)
	{
		if (input == null)
			return null;

		Matrix result = new Matrix(input.colms, input.rows);

		for (int i = 0; i < input.rows; i++)
		{
			for (int j = 0; j < input.colms; j++)
			{
				result.data[j, i] = input.data[i, j];
			}
		}

		return result;
	}
	

	private static Random rand = new Random();
	public void Randimize(int a, int b)
	{
		a *= 100;
		b *= 100;

		for (int i = 0; i < rows;i++)
		{
			for (int j = 0; j < colms; j++)
			{
				data[i, j] = rand.Next(a, b);
				data[i, j] /= 100;
			}
		}
	}

	public static void Print(Matrix m)
	{
		if (m == null)
		{
			Console.WriteLine("The Matrix was equal to null");
			return;
		}

		Console.Write("Index	|");
		for (int i = 0; i < m.colms; i++)
		{
			Console.Write(i +"	");
		}

		Console.Write("\n-------");
		for (int i = 0; i < m.colms; i++)
		{
			Console.Write("--------");
		}

		for (int i = 0; i < m.rows; i++)
		{
			Console.Write("\n"+ i +"	|");
			for (int j = 0; j < m.colms; j++)
			{
				Console.Write(m.data[i,j] +"	");
			}
		}
		Console.WriteLine();
	}
	public void Print()
	{
		if (this == null)
		{
			Console.WriteLine("The Matrix was equal to null");
			return;
		}

		for (int i = 0; i < this.rows; i++)
		{
			Console.Write("[");
			for (int j = 0; j < this.colms; j++)
			{
				Console.Write(this.data[i, j] + "	");
			}
			Console.WriteLine("]");
		}
		Console.WriteLine();
	}

	public static Matrix FromArray(float[] arr)
	{
		Matrix result = new Matrix(arr.Length, 1);
		for (int i = 0; i < arr.Length; i++)
		{
			result.data[i, 0] = arr[i];
		}
		return result;
	}
	public static float[] ToArray(Matrix output_matrix)
	{
		float[] result = new float[output_matrix.rows * output_matrix.colms];

		int k = 0;
		for (int i = 0; i < output_matrix.colms; i++)
		{
			for (int j = 0; j < output_matrix.rows; j++)
			{
				result[k] = output_matrix.data[j, i];
				k++;
			}
		}

		return result;
	}
}

