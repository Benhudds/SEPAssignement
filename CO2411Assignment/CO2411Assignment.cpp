// CO2411Assignment.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "SalesData.h"
#include "Windows.h"
#include <iostream>
#include <fstream>
using namespace std;

int _tmain(int argc, _TCHAR* argv[]) {

	char* dllName = "dll_TXT.dll";
	char * inFileName = "txt.import";
	char * outFileName = "uniform.txt";
	
	SalesData* allData = new SalesData[MAX_SALES_DATA];

 	int countData = 0;
	countData = import(
		dllName,
		inFileName,
		allData,
		countData,
		MAX_SALES_DATA);
	if (countData < 0) {
		cout << "Import failed" << endl;
		system("pause");
		return 0;
	}

	quickSort(allData, countData);

	ofstream outp;
	outp.open(outFileName);
	for (int i = 0; i < countData; i++) {
		outp << allData[i].barcode << " " << allData[i].quantity;
		outp << " " << allData[i].price << endl;
	}
	outp.close();
	cout << endl << "Results saved to " << outFileName << endl;
	system("pause");

	return 0;
}

