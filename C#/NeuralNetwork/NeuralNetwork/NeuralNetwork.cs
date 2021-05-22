using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


class Nn
{
	public readonly int inputN;
	public readonly int hiddenN;
	public readonly int outputN;
	public Matrix w1;
	public Matrix w2;
	public Matrix inputs;
	public Matrix a1;
	public Matrix a2;
	public Matrix z1;
	public Matrix z2;
	public Matrix b1;
	public Matrix b2;
	public float lr = 0.1f;

	public Nn(int inputNodes, int hiddenNodes, int outputNodes)
	{
		inputN = inputNodes;
		hiddenN = hiddenNodes;
		outputN = outputNodes;

		w1 = new Matrix(hiddenN, inputN);
		w2 = new Matrix(outputN, hiddenN);

		w1.Randimize(-1, 1);
		w2.Randimize(-1, 1);

		b1 = new Matrix(hiddenN, 1);
		b2 = new Matrix(outputN, 1);

		b1.Randimize(-1, 1);
		b2.Randimize(-1, 1);
	}

	public float[] FeedForward(float[] inputs_array)
	{
		inputs = Matrix.FromArray(inputs_array);

		a1 = Matrix.Multiply(w1, inputs);
		a1 = Matrix.Add(a1, b1);
		z1 = Sigmoid(a1);

		a2 = Matrix.Multiply(w2, z1);
		a2 = Matrix.Add(a2, b2);
		z2 = Sigmoid(a2);

		return Matrix.ToArray(z2);
	}
	
	public void Train(float[] inputs_array, float[] targets_array)
	{
		FeedForward(inputs_array);
		Matrix targets = Matrix.FromArray(targets_array);

		Matrix c2 = Matrix.Subtract(z2, targets);
		c2.ElementMultiply(c2);
		c2.Print();

		Matrix d_zw2 = z1;
		d_zw2.Print();
		Matrix d_az2 = d_Sigmoid(z2);
		d_az2.Print();
		Matrix d_ca2 = Matrix.Multiply(Matrix.Subtract(z2, targets), 2);
		d_ca2.Print();
		Matrix d_cw2 = Matrix.Multiply(d_zw2, d_az2);
		d_cw2.Print();
		d_cw2.Multiply(d_ca2);
		d_cw2.Print();
		
		/*Matrix outputs = a1;
		//Matrix outputs = Matrix.FromArray(FeedForward(inputs_array));
		Matrix targets = Matrix.FromArray(target_array);

		Matrix errors_o = Matrix.Subtract(targets,outputs);
		
		//Gradients
		Matrix gradients = dSigmoid(outputs);
		gradients.Multiply(errors_o);
		gradients.Multiply(lr);

		//Deltas
		Matrix h_outputs_t = Matrix.Transpose(h_outputs);
		Matrix dWeights_ho = Matrix.Multiply(gradients, h_outputs_t);

		weight_ho.Add(dWeights_ho);
		o_bias.Add(gradients);
		
		//Calculate layers hidden errors
		//Matrix errors_h = Matrix.Multiply(Matrix.Transpose(weight_ho),errors_o);
		Matrix who_t = Matrix.Transpose(weight_ho);
		Matrix errors_h = Matrix.Multiply(who_t, errors_o);

		//Hidden gradients
		Matrix gradient_h = dSigmoid(h_outputs);
		gradient_h.Multiply(errors_h);
		gradient_h.Multiply(lr);

		//in - hid deltas
		Matrix ih_inputs_t = Matrix.Transpose(ih_inputs);
		Matrix dWeights_ih = Matrix.Multiply(gradient_h, ih_inputs_t);
		weight_ih.Add(dWeights_ih);
		h_bias.Add(gradient_h);*/
		
		/*Matrix cost_o = Matrix.Subtract(outputs, targets);
		cost_o.Multiply(2);

		Matrix gradients_o = dSigmoid(outputs);

		cost_o.Print();
		gradients_o.Print();

		Matrix dWeights_ho = Matrix.Multiply(cost_o,gradients_o);
		dWeights_ho.Print();*/
	}

	public static Matrix Sigmoid(Matrix x)
	{
		for (int i = 0; i < x.rows; i++)
		{
			for (int j = 0; j < x.colms; j++)
			{
				x.data[i, j] = DoubleToFloat(1 / (1 + Math.Exp(-x.data[i, j])));
			}
		}
		return x;
	}

	public static Matrix dSigmoid(Matrix x)
	{
		for (int i = 0; i < x.rows; i++)
		{
			for (int j = 0; j < x.colms; j++)
			{
				x.data[i, j] = x.data[i, j] * (1 - x.data[i, j]);
			}
		}
		return x;
	}
	public static Matrix d_Sigmoid(Matrix x)
	{
		x = Matrix.ElementMultiply(Sigmoid(x), Matrix.Multiply(Matrix.Subtract(x, 1), -1));
		return x;
	}

	public static float DoubleToFloat(double x)
	{
		string temp = x.ToString();
		float output = float.Parse(temp);
		return output;
	}
}

