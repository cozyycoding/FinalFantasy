# HTML to XML REGEX step file

1.  delete everything nestled in the head element and all of the scipts. Delete the HTML element. 
2.  find ```class=+([c d t o a n s])``` replace with ```class="\1"```
3.  remove HTML encoding, paste ```<?xml version="1.0" encoding="UTF-8"?>```
<p>[A-z ' , . ! ?]+$\n( )+^<```