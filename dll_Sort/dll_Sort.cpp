// dll_Sort.cpp : Defines the exported functions for the DLL application.
//
#include "stdafx.h"

// Define SORTEXPORT so SalesData.h exports the functions from this dll
#define SORTEXPORT
#include "SalesData.h"

// Swap function that swaps two elements in the salesData array
void swap(SalesData salesData[], int first, int second)
{
	SalesData temp;
	temp = salesData[first];
	salesData[first] = salesData[second];
	salesData[second] = temp;
}

// Simple implementation of insertion sort
// Sorts SalesData into an order defined by the compareInt comparison function
int dllSort(SalesData salesData[], int size, compareSalesData comparison)
{
	// If size is negative then InvalidParameters error should be returned
	// Could check salesData items for validity, returning an error for any negative values or 
	// items where each value is 0 but is can be safely assumed that the input will be correct
	// and any validation should be performed in a different function
	if (size < 0)
	{
		return InvalidParameters;
	}

	try
	{
		for(int i = 0; i < size; i++)
		{
			for (int j = i + 1; j < size; j++)
			{
				if (comparison(salesData[j], salesData[i]))
				{
					swap(salesData, i, j);
				}
			}
		}
	}
	catch (...)
	{
		return UnknownError;
	}

	return Success;
}

// QuickSort function for use with the salesData array
// Sorts based on the barcode data member
// A comparison function must be supplied to determin the order of sorting
int dllQuickSort(SalesData salesData[], int start, int end, compareSalesData comparison)
{
	// Return InvalidParameters if start or end are incorrect
	if (start < 0 || end < 0 || end < start)
	{
		return InvalidParameters;
	}

	try
	{
		// Take the value in the middle of the array as the pivotal value
		SalesData pivotValue = salesData[start + ((end - start) / 2)];
		int startPointer = start;
		int endPointer = end - 1;

		// Partition the array
		// Moves through the array swapping elements as required so that every value on either side of the pivot
		// is either greater than or less than it as defined by the comparison function, though they may be in any order
		while(startPointer <= endPointer)
		{
			// Increment the startPointer until we find an element on the left that needs to be swapped
			while(comparison(salesData[startPointer], pivotValue))
			{
				startPointer++;
			}

			// Decrement the endPointer until we find an element on the right that needs to be swapped
			while(comparison(pivotValue, salesData[endPointer]))
			{
				endPointer--;
			}
		
			// Swap the elements at the pointers if the start pointer is still less than the end pointer
			if (startPointer <= endPointer)
			{
				swap(salesData, startPointer, endPointer);
				startPointer++;
				endPointer--;
			}
		}

		// Recursive cases
		if (start < endPointer)
		{
			dllQuickSort(salesData, start, endPointer, comparison);
		}
	
		if (startPointer < end)
		{
			dllQuickSort(salesData, startPointer, end, comparison);
		}
	}
	catch (...)
	{
		return UnknownError;
	}

	// Finally, return success
	return Success;
}