## [Unreleased]
## Changed

## [1.2.4]
### Added
- the dia value on the profile page is shown with two decimals
- There is now also the possibility to use Nightscout Reporter in European English. The difference to American English currently exists only in the date format (gb: dd/MM/yyyy, us: MM/dd/yyyy).
- The legend below the daily graph shows the sum of carbohydrates for the day.
- Reservoir changes are now also shown in the daily graph.
- The daily chart now shows the estimated HbA1C and the percentage of bolus insulin and basal insulin for the day. These values are displayed within the legend, which is why it must be enabled for the values to appear.
### Changed
- DIA on the profile page is now displayed with two decimal places.
- There is now an option for the daily graphics to toggle the accumulation of close values.
- The carbohydrate information on the daily graph is now output without the suffix KH.
- The bars for the bolus insulin in the daily graph are now scaled according to the maximum bolus insulin at that day.
- In the analysis the percentages for the target areas can be shown with decimal places. This reduces the difference to 100% if you sum it up. The remainder is because of rounding differences.

## [1.2.3]
### Changed
- consecutive entries with the same values in the profile are collected and written in one line on the profile pdf
- insulin and carb values within a range of an hour are combined in one sum in the daily graphic

### Fixed
- profiles with many time entries were overlaying the next page. Now a new page is created when there are too many entries to fit on one page.
- targetarea in profile is displayed using the correct display_unit
- title of ISF column in profile shows the correct display_unit 

## [1.2.0]
### Added
- signin component for google drive to save the settings there
- daily statistics and graphics show the day of week
- count of reservoirs, catheters and sensors can be shown with decimal places
- new pdf weekgraphics

## [1.1.2]
### Added
- added own control for definition of period
- added bloody values to daily graphics
- added display of carb corrections to daily graphics

### Changed
- buttons to data in debugmode show number of datasets
- daily graphics will show a gap when the difference in entries is 15 minutes or above

### Fixed 
- fixed position of notes in daily graphics
- fixed lines of notes in daily graphics to not cross the value table
- fixed calculation of own limits on analysis pdf in mmol/L
- fixed calendar control to set start and end correct if period is defined
- fixed debug-links for urls that need user tokens
- start button will only be enabled when form and period are selected

## [1.1.1]
### Added
- added notes to daily graphics
- added pdf for profiles
- added parameter for reverse sortorder in daily graphics
- added glucosevalues to daily graphics
- added column for coefficient of variation to daily statistics
- added smb to daily graphics
 
### Changed
- made request for valid url more flexible
- made formparameters sortable in code
- corrected calculation of totals in daily statistic

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
