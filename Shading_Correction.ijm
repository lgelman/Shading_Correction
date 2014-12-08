// *** Start: White balance ***
name=getTitle();
run("Split Channels");
MeanColor=newArray(3);

maxi = 0;
for (u=1; u<4; u++) {
selectWindow("C"+u+"-"+name);
makeRectangle(100,100,100,100);
// waitForUser("Please draw a region in the background");
getStatistics(area, mean);
MeanColor[u-1] = mean;
if (mean>=maxi) maxi = mean;
}

for (u=1; u<4; u++) {
selectWindow("C"+u+"-"+name);
run("Select None");
run("Multiply...", "value="+maxi/MeanColor[u-1]);
}

run("Merge Channels...", "c1=C1-"+name+" c2=C2-"+name+" c3=C3-"+name+" create");
run("RGB Color");
selectWindow(name); close();
// *** End: While Balance ***