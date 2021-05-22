using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Loop_Over
{
	class Program
	{
		static int[,] grid;
		static int[,] fixedGrid;
		static int xSize = 5;
		static int ySize = 5;
		static int Size = 5;
		static int yPos = 0;
		static int xPos = 0;
		static int moveCount = 0;
		static ConsoleKeyInfo keyInfo;
		static Random numGen = new Random();
		static int xShuf;
		static int yShuf;
		static int dir;
		static readonly int shuf=1000;
		static bool follow = true;
		static bool showMoves = true;
		static int selected = 1;
		static bool menuOpen = false;
		static bool shuffled = false;

		static void Main(string[] args)
		{
			Console.WriteLine("Loop over - v1.0\n\nOriginally Made by someone else   (I just forgot who).\n\nNow recreated by Lehan Niehaus on 28/12/2018.");
			Console.ReadKey();
			Console.Clear();
			Console.WriteLine("The point of the game is to solve the grid\nafter it has been shuffled\n\nControls:\nMove Cursur - up, down, left, right.\nMove Row - W, A, S, D.");
			Console.ReadKey();

			Start();
			while (true)
			{
				UpdateGrid();
				CheckWin();
				GetInput();
			}
		}

		private static void CheckWin()
		{
			int c = 0;
			for (int y = 0; y < ySize; y++)
			{
				for (int x = 0; x < xSize; x++)
				{
					if (grid[x, y] != fixedGrid[x, y])
						c++;
				}
			}
			if (c ==  0 & shuffled)
				Console.WriteLine("Well Done!\nYou have done it!");
		}

		static void Start()
		{
			//Console.Title("Loop Over");
			grid = new int[xSize, ySize];
			fixedGrid = new int[xSize, ySize];
			for (int y = 0, i = 1; y < ySize; y++)
			{
				for (int x = 0; x < xSize; x++,i++)
				{
					grid[x, y] = i;
				}
			}

			for (int y = 0, i = 1; y < ySize; y++)
			{
				for (int x = 0; x < xSize; x++, i++)
				{
					fixedGrid[x, y] = i;
				}
			}
			//Shuffle();
			moveCount = 0;
			shuffled = false;
		}

		static void UpdateGrid()
		{
			Console.Clear();

			Console.WriteLine("Press \"esc\" for menu.\n");
			
			Console.Write("+");
			for (int x = 0; x < xSize; x++)
			{
				Console.Write("--");
				if (x == xPos)
					Console.Write("!");
				else Console.Write("-");
				Console.Write("-");
			}
			Console.WriteLine("+");

			for (int y = 0; y < ySize; y++)
			{
				if (y == yPos)
					Console.Write("-");
				else Console.Write("|");

				for(int x =0; x < xSize; x++)
				{
					if (grid[x,y]<10)
						Console.Write(" ");
					Console.Write(" ");
					Console.Write(grid[x,y]);
					if (grid[x, y] < 100)
						Console.Write(" ");
				}
				if (y == yPos)
					Console.Write("-");
				else Console.Write("|");

				if (y < ySize - 1)
				{
					Console.Write("\n|");
					for (int a = 0; a<xSize;a++)
					{
						Console.Write("    ");
					}
					Console.WriteLine("|");
				}
			}
			Console.WriteLine();
			Console.Write("+");
			for (int x = 0; x < xSize; x++)
			{
				Console.Write("--");
				if (x == xPos)
					Console.Write("!");
				else Console.Write("-");
				Console.Write("-");
			}
			Console.WriteLine("+");

			if(showMoves)
				Console.WriteLine("\nMoves: "+ moveCount);

			//Console.WriteLine("\n\n"+ xPos +" - "+ yPos);
		}

		static void GetInput()
		{
			keyInfo = Console.ReadKey(true);

			if (keyInfo.Key == ConsoleKey.UpArrow)
			{
				if (yPos > 0)
					yPos--;
			}
			else if (keyInfo.Key == ConsoleKey.DownArrow)
			{
				if (yPos < ySize - 1)
					yPos++;
			}
			else if (keyInfo.Key == ConsoleKey.LeftArrow)
			{
				if (xPos > 0)
					xPos--;
			}
			else if (keyInfo.Key == ConsoleKey.RightArrow)
			{
				if (xPos < xSize - 1)
					xPos++;
			}
			else if (keyInfo.Key == ConsoleKey.W)
			{
				MoveUp();
				moveCount++;
			}
			else if (keyInfo.Key == ConsoleKey.S)
			{
				MoveDown();
				moveCount++;
			}
			else if (keyInfo.Key == ConsoleKey.A)
			{
				MoveLeft();
				moveCount++;
			}
			else if (keyInfo.Key == ConsoleKey.D)
			{
				MoveRight();
				moveCount++;
			}
			else if(keyInfo.Key == ConsoleKey.Escape)
			{
				menuOpen = true;
				while (menuOpen)
				{
					ShowMenu();
				}
			}
		}

		static void Shuffle()
		{
			for (int i = 0; i < shuf; i++)
			{
				xShuf = numGen.Next(0, xSize);
				yShuf = numGen.Next(0, ySize);
				dir = numGen.Next(0, 4);

				xPos = xShuf;
				yPos = yShuf;

				switch (dir)
				{
					case 0:
						MoveUp();
						break;
					case 1:
						MoveDown();
						break;
					case 2:
						MoveLeft();
						break;
					case 3:
						MoveRight();
						break;
				}
			}
			moveCount = 0;
			shuffled = true;
			xPos = 0;
			yPos = 0;
		}

		static void MoveUp()
		{
			int placeHolder = grid[xPos, 0];
			for (int i = 0; i<ySize; i++)
			{
				if (i<ySize-1)
					grid[xPos, i] = grid[xPos, i + 1];
				else grid[xPos, ySize - 1] = placeHolder;
			}
			if (follow & yPos > 0)
				yPos--;
			else if (follow)
				yPos = ySize - 1;
		}
		static void MoveDown()
		{
			int placeHolder = grid[xPos, ySize - 1];
			for (int i = ySize - 1; i >=0; i--)
			{
				if (i > 0)
					grid[xPos, i] = grid[xPos, i - 1];
				else grid[xPos, 0] = placeHolder;
			}
			if (follow & yPos < ySize - 1)
				yPos++;
			else if (follow)
				yPos = 0;
		}
		static void MoveLeft()
		{
			int placeHolder = grid[0, yPos];
			for (int i = 0; i < xSize; i++)
			{
				if (i < xSize - 1)
					grid[i, yPos] = grid[i + 1, yPos];
				else grid[xSize - 1, yPos] = placeHolder;
			}
			if (follow & xPos > 0)
				xPos--;
			else if (follow)
				xPos = xSize - 1;
		}
		static void MoveRight()
		{
			int placeHolder = grid[xSize - 1, yPos];
			for (int i = xSize - 1; i >= 0; i--)
			{
				if (i > 0)
					grid[i, yPos] = grid[i - 1, yPos];
				else grid[0, yPos] = placeHolder;
			}
			if (follow & xPos < xSize - 1)
				xPos++;
			else if (follow)
				xPos = 0;
		}

		static void ShowMenu()
		{
			Console.Clear();

			if (selected == 1)
				Console.Write("*");
			else Console.Write(" ");
			Console.Write("Resume");
			if (selected == 1)
				Console.WriteLine("*");
			else Console.WriteLine(" ");
			
			if (selected == 2)
				Console.Write("*");
			else Console.Write(" ");
			Console.Write("Shuffle");
			if (selected == 2)
				Console.WriteLine("*");
			else Console.WriteLine(" ");
			
			if (selected == 3)
				Console.Write("*");
			else Console.Write(" ");
			Console.Write("Size");
			if (selected == 3)
				Console.Write("*");
			else Console.Write(" ");
			Console.WriteLine("          "+ xSize + " x "+ ySize);
			
			if (selected == 4)
				Console.Write("*");
			else Console.Write(" ");
			Console.Write("Follow");
			if (selected == 4)
				Console.Write("*");
			else Console.Write(" ");
			if (follow)
				Console.WriteLine("        On");
			else if (!follow)
				Console.WriteLine("        Off");
			
			if (selected == 5)
				Console.Write("*");
			else Console.Write(" ");
			Console.Write("Show Moves");
			if (selected == 5)
				Console.Write("*");
			else Console.Write(" ");
			if (showMoves)
				Console.WriteLine("    On");
			else if (!showMoves)
				Console.WriteLine("    Off");

			Menu();
		}
		static void Menu()
		{
			
			keyInfo = Console.ReadKey(true);

			if (keyInfo.Key == ConsoleKey.UpArrow)
			{
				selected--;
				if (selected < 1)
					selected = 5;

			}
			else if (keyInfo.Key == ConsoleKey.DownArrow)
			{
				selected++;
				if (selected > 5)
					selected = 1;
			}
			else if (keyInfo.Key == ConsoleKey.Enter)
			{
				//Resume
				if (selected == 1)
					menuOpen = false;

				//Shuffel
				else if (selected == 2)
				{
					Shuffle();
					menuOpen = false;
				}

				//Size
				else if (selected == 3)
				{
					menuOpen = false;
				}

				//Follow
				else if (selected == 4)
				{
					follow = !follow;
					menuOpen = false;
				}

				//Show Moves
				if (selected == 5)
				{
					showMoves = !showMoves;
					menuOpen = false;
				}
			}
			else if (keyInfo.Key == ConsoleKey.Escape)
				menuOpen = false;
			else if (keyInfo.Key == ConsoleKey.LeftArrow & selected == 3)
			{
				Size--;

				if (Size < 2)
					Size = 10;

				if (Size == 2)
				{
					xSize = 2;
					ySize = 2;
					Start();
				}
				if (Size == 3)
				{
					xSize = 3;
					ySize = 3;
					Start();
				}
				if (Size == 4)
				{
					xSize = 4;
					ySize = 4;
					Start();
				}
				if (Size == 5)
				{
					xSize = 5;
					ySize = 5;
					Start();
				}
				if (Size == 6)
				{
					xSize = 6;
					ySize = 6;
					Start();
				}

				if (Size == 7)
				{
					xSize = 7;
					ySize = 7;
					Start();
				}
				if (Size == 8)
				{
					xSize = 8;
					ySize = 8;
					Start();
				}
				if (Size == 9)
				{
					xSize = 9;
					ySize = 9;
					Start();
				}
				if (Size == 10)
				{
					xSize = 10;
					ySize = 10;
					Start();
				}
				shuffled = false;
			
			}
			else if (keyInfo.Key == ConsoleKey.RightArrow & selected == 3)
			{
				Size++;

				if (Size > 10)
					Size = 2;

				if (Size == 2)
				{
					xSize = 2;
					ySize = 2;
					Start();
				}
				if (Size == 3)
				{
					xSize = 3;
					ySize = 3;
					Start();
				}
				if (Size == 4)
				{
					xSize = 4;
					ySize = 4;
					Start();
				}
				if (Size == 5)
				{
					xSize = 5;
					ySize = 5;
					Start();
				}
				if (Size == 6)
				{
					xSize = 6;
					ySize = 6;
					Start();
				}

				if (Size == 7)
				{
					xSize = 7;
					ySize = 7;
					Start();
				}
				if (Size == 8)
				{
					xSize = 8;
					ySize = 8;
					Start();
				}
				if (Size == 9)
				{
					xSize = 9;
					ySize = 9;
					Start();
				}
				if (Size == 10)
				{
					xSize = 10;
					ySize = 10;
					Start();
				}
				shuffled = false;

			}
		}
	}
}
