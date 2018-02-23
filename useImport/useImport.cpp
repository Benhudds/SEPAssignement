#include "stdafx.h"
#include <Windows.h>
#include <stdio.h>
#include "SalesData.h"

// Comparison method returning true if a is less than b to sort data by an integer into ascending order
bool ascendingBarcode(const SalesData a, const SalesData b)
{
	return a.barcode < b.barcode ? true : false;
}

// Comparison method returning true if b is less than a to sort data by an integer into descending order
bool descendingBarcode(const SalesData a, const SalesData b)
{
	return !ascendingBarcode(a, b);
}

// Method that loads a dll at runtime that can be used to import sales data
int import(char* dllname, char* filename, SalesData salesData[], int count, int max_size)
{
	HINSTANCE hinstLib;
	importPointer importFunPointer;
	int countData = count;
	bool fRunTimeLinkSuccess = false, freeResult = false;

	// Get handle to DLL module.
	hinstLib = LoadLibrary(dllname);

	if (hinstLib != NULL)
	{
		importFunPointer = (importPointer)GetProcAddress(hinstLib, "importData");

		if (importFunPointer != NULL)
		{
			countData = importFunPointer(salesData, filename, count, max_size);
			freeResult = FreeLibrary(hinstLib);

			if (!freeResult)
			{
				return UnknownError;
			}
			else
			{
				return countData;
			}
		}
		else
		{
			// Return DLL invalid format
			return DllInvalidFormat;	
		}
	}

	// Return DLL not found error
    return DllNotFound;
}

// Sort function that calls the sort function from the dll loaded at startup
// Sorts based on the barcode attribute
// Sorts into ascending order
int sort(SalesData salesData[],  int size)
{
	return dllSort(salesData, size, ascendingBarcode);
}

// Sort function that calls the sort function from the dll loaded at startup
// Sorts based on the barcode attribute
// Sort order can be specified with a pointer to a function that takes two integers and returns a boolean value
int sort(SalesData salesData[], int size, compareSalesData comparison)
{
	return dllSort(salesData, size, comparison);
}

// Sort function that calls the quickSort function from the dll loaded at startup
// Sorts based on the barcode attribute
// Sorts into ascending order
int quickSort(SalesData salesData[],  int size)
{
	return dllQuickSort(salesData, 0, size, ascendingBarcode);
}

// Sort function that calls the quickSort function from the dll loaded at startup
// Sorts based on the barcode attribute
// Sort order can be specified with a pointer to a function that takes two integers and returns a boolean value
int quickSort(SalesData salesData[],  int size, compareSalesData comparison)
{
	return dllQuickSort(salesData, 0, size, comparison);
}