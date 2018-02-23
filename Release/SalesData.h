#ifndef SalesDataHeader
#define SalesDataHeader

// CONSTANT VALUE DECLARATIONS

// Constant values that are used by functions that can output errors
const int Success = 1;
const int Failure = -1; 

const int DllNotFound = -2;		// can't find dll for the import
const int DllInvalidFormat = -3;	// Unable to find import function in the dll
const int UnknownError = -4;
const int InvalidParameters = -5;

// Constant value for the maximum number of salesData items that can be stored in the allData array
const int MAX_SALES_DATA = 100001;

// Constant value for the maximum number of characters in an input file line
const int MAX_LINE_CHARS = 256;

// SalesData class that includes the relevant data 
class SalesData {
public:
	int barcode;
	int quantity;
	float price;
};

// Import data function type that the importData methods within a dll must conform to
typedef int(*importPointer)(SalesData[], char*, int, int);

// Comparison function type that returns true or false based on a value within SalesData
typedef bool(*compareSalesData)(SalesData, SalesData);

// Import function signature for the static library function that loads a runtime dll to import data from a file
int import(char* dllname, char* filename, SalesData salesData[], int count, int max_size);

// Sort function signature for the static library function that calls a sorting function from a load time dll
int sort(SalesData salesData[], int size);

// Sort function signature for the static library function that calls a sorting function from a load time dll
// Allows the specification of a comparison function to determine the sorting order
int sort(SalesData salesData[], int size, compareSalesData comparison);

// Quick sort function signature for the static library function that calls a merge sorting function from a load time dll
int quickSort(SalesData salesData[], int size);

// Quick sort function signature for the static library function that calls a merge sorting function from a load time dll
// Allows the specification of a comparison function to determine the sorting order
int quickSort(SalesData salesData[], int size, compareSalesData comparison);

// Define SORTIMPORTEXPORT to dllimport or dllexport so that functions are
// imported from the dll where required and exported by the dll
#ifndef SORTEXPORT
#define SORTIMPORTEXPORT dllimport
#else
#define SORTIMPORTEXPORT dllexport
#endif

// Signatures of the sorting methods to be imported/exported
#ifdef __cplusplus

extern "C" {
#endif
	__declspec(SORTIMPORTEXPORT)int dllSort(SalesData salesData[], int size, compareSalesData comparison);
	__declspec(SORTIMPORTEXPORT)int dllQuickSort(SalesData salesData[], int start, int end, compareSalesData comparison);
#ifdef __cplusplus
	}
#endif

// Define TXTIMPORT to dllimport or dllexport so that functions are
// imported from the dll where required and exported by the dll
#ifndef TXTEXPORT
#define TXTIMPORTEXPORT dllimport
#else
#define TXTIMPORTEXPORT dllexport
#endif

// Signature of the import method to be imported/exported
#ifdef __cplusplus

extern "C" {
#endif
	__declspec(dllexport)int importData(SalesData salesData[], char* filename, int count, int max_size);
#ifdef __cplusplus
}
#endif
#endif