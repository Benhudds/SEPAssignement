// txt.cpp : Defines the exported functions for the DLL application.
//

#include "stdafx.h"
#include <fstream>

// Define TXTEXPORT so SalesData.h exports the functions from this dll
#define TXTEXPORT
#include "SalesData.h"

using namespace std;

// Method to import data from a tab delimited text file
int importData(SalesData salesData[], char* filename, int count, int max_size)
{
	// Create and open an input filestream object
	ifstream stream(filename);

	if (!stream.good())
	{
		return UnknownError;
	}

	try
	{
		// Create a character array (string) buffer for reading data line by line
		// Assuming that the input will not exceed 256 characters in length
		char* string = new char[MAX_LINE_CHARS];

		// Skip the first line with the column headers
		stream.getline(string, MAX_LINE_CHARS, '\n');

		// Iterate through each line in the file
		// stream.gcount() checks how many characters were returned by the last read operation
		while(stream.gcount())
		{
			// Check if there is space for the next item before processing
			if (count <= MAX_SALES_DATA)
			{
				salesData[count] = *new SalesData();
				count++;
			}
			else
			{
				// Return failure as there are too many items
				return Failure;
			}

			// Read the first data item (barcode)
			// This parses characters directly from the string as an integer
			// Stops when a non-integer character is found
			stream >> salesData[count - 1].barcode;

			// Skip the next three fields (product code, product name and manufacturer)
			// Need to skip four times programmatically as the stream >> command uses peek/read
			// instead of get to parse the barcode. This means the first tab is not included
			for (int i = 0; i < 4; i++)
			{
				stream.getline(string, 256, '\t');
			}
		
			// Read the fifth data item (quantity)
			stream >> salesData[count - 1].quantity;

			// Read the sixth data item (price)
			stream >> salesData[count - 1].price;

			// One caveat of this method of file input is that empty lines will read integer/double values of 0
			// This means that one extra pass of the loop is required, but readibility is far better
			// As such, a SalesData object with barcode 0, quantity 0 and price 0 will be created as the stream can still be read
			// This item isn't valid so should not be included
			if (salesData[count-1].barcode == 0 &&
				salesData[count-1].quantity == 0 &&
				salesData[count-1].price == 0)
			{
				count --;
			}
		}
	}
	catch (...)
	{
		stream.close();
		return UnknownError;
	}

	stream.close();

	// Return the number of items that have been read if successful
	return count;
}
