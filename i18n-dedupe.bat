@if (@CodeSection == @Batch) @then

@CScript //nologo //E:JScript "%~F0" & goto :EOF

@end

var line, prevLine = "";
while ( ! WScript.Stdin.AtEndOfStream ) {
   line = WScript.Stdin.ReadLine();
   if ( line != prevLine ) {
      WScript.Stdout.WriteLine(line);
      prevLine = line;
   }
}