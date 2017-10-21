# CoffeeLakeInStockErator
Will check stock levels at all Microcenter stores (as of 10/21/2017) across the United States for the i7 8700k (https://ark.intel.com/products/126684/Intel-Core-i7-8700K-Processor-12M-Cache-up-to-4_70-GHz) CPU. This can be easily modified to check stock for another product by altering the $uri variable. This was written in Powershell 5.1, though I'm not aware of any dependencies on a newer version. If this fails to work on your system please let me know and I will do my best to accomodate (though you really should just upgrade to PS5.1).


To run...
  Download the .ps1 file.
  Open a Powershell window and change directory to the script location. (cd C:\path\to\script\location)
  Dot-slash source the script to execute. (.\Check-MicroCenterStock.ps1)
