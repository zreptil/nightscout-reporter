## [Unreleased]
### Added
- added notes to daily graphics
- added pdf for profiles
 
### Changed
- made request for valid url more flexible
- made formparameters sortable in code

## [1.0.5]
### Added
- added possibility to have parameters for PDF generation
- added parameters to daily graphics and daily statistics
- added rawdata to output of debug-PDF
- added int value to print parameters
- added precision to basal values (1 or 2 decimals) 
- added number of sensors to analysis
- added possibility to create four daily graphics on one page

### Changed
- changed display and functionality of PDF selection
- rewrote code for saving and loading user data

### Fixed
- fixed exception that occured, when there was no profile for a date
- fixed error when having NaN values in profile

## [1.0.4]
### Added
- Connection to nightscout-instances with user-token is possible
- Users can be deleted
- Carbohydrates and Bolus Insulin is shown in daily graphics

### Fixed
- Icons on some buttons were to close to the text
- TBR with absolute values are shown correctly

## [1.0.3]
### Added
- support for multiple users 

### Changed
- userdata is encrypted before being saved to localStorage
- The analysis page has been redesigned and now displays headings above the areas
- If the thresholds in Nightscout (BG_TARGET_BOTTOM and BG_TARGET_TOP) are equal to 70 and 180, then the area for the default targets will be hidden on the analysis page 

### Fixed
- The daily statistics now display mmol/l values ​​correctly
- The values ​​for the default target range on the analysis page are now calculated correctly
- Numbers and dates in the PDF are formatted according to the selected language
- When loading the data, the corresponding date format is used for display of progress
- Faulty values ​​are no longer considered in the evaluation of the graphics; these are recognized by the value "NONE" in the data field "direction"
- Additional data is used for the calculation of carbohydrates
- Fixed various crashes when reading data

### Removed
- The ability to display the URL in the title bar has been removed since the current user or his URL is now displayed directly

## [1.0.2]
### Added
- added legend for catheter and sensor change in daily graphics

### Changed
- order of pdfs changed, percentile diagram now comes after analysis

### Fixed
- fixed an error that occured, when the dateString in entries didn't match the correct UTC format
- fixed display of basalrate for high values

## [1.0.1]
### Added
- added close button to message area

### Changed
- display of errors replaced with nicer error messages
- clicking the messagearea closed it, added close button to message area
- username, birthdate, insulin and diabetes startdate can be left empty with no negative sideeffect to the pdf

### Fixed
- fixed error when reading profiles without startDate
- empty pages are created when no data is available
- fixed error with missing data in daily graphics

## [1.0.0]
- Initial version
