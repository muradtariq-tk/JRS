function ret = execimacros_cat(v1,v2,v3)
v1 = strrep(v1,'"','');
v2 = strrep(v2,'"','');
v3 = strrep(v3,'"','');

dat = ['VERSION BUILD=8970419 RECORDER=FX\n'];
dat = [dat 'TAB T=1\n'];
dat = [dat 'CLEAR\n'];
dat = [dat 'URL GOTO=https://jcr.incites.thomsonreuters.com/JCRJournalHomeAction.action?\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=TXT:Select<SP>Categories\n'];
dat = [dat 'TAG POS=1 TYPE=INPUT:CHECKBOX ATTR=NAME:' v1 ' CONTENT=YES\n'];
dat = [dat 'TAG POS=1 TYPE=INPUT:CHECKBOX ATTR=ID:SCIE CONTENT=YES\n'];
dat = [dat 'TAG POS=1 TYPE=INPUT:CHECKBOX ATTR=ID:SSCI CONTENT=YES\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=TXT:Customize<SP>Indicators\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxFourteen CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxThirteen CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxTwelve CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxEleven CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxNine CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxEight CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxFifteen CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxSeven CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxSix CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxFive CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxFour CONTENT=YES\n'];
dat = [dat 'TAG POS=2 TYPE=INPUT:CHECKBOX ATTR=ID:checkBoxOne CONTENT=YES\n'];
dat = [dat 'TAG POS=16 TYPE=A ATTR=HREF:javascript:void(0);\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=TXT:Submit\n'];
dat = [dat 'WAIT SECONDS = 5\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=ID:selectAll\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=HREF:javascript:void(0)\n'];
dat = [dat 'TAG POS=2 TYPE=A ATTR=TXT:CSV\n'];
dat = [dat 'WAIT SECONDS = 3\n'];
dat = [dat 'TAB ClOSE \n'];
dat = [dat 'TAB OPEN\n'];
dat = [dat 'TAB T=1\n'];
dat = [dat 'CLEAR\n'];
dat = [dat 'URL GOTO=https://jcr.incites.thomsonreuters.com/JCRJournalHomeAction.action?\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=TXT:Select<SP>Categories\n'];
dat = [dat 'TAG POS=1 TYPE=INPUT:CHECKBOX ATTR=NAME:' v1 ' CONTENT=YES\n'];
dat = [dat 'TAG POS=1 TYPE=INPUT:CHECKBOX ATTR=NAME:' v1 ' CONTENT=NO\n'];
dat = [dat 'TAG POS=1 TYPE=A ATTR=TXT:Submit\n'];
dat = [dat 'WAIT SECONDS = 3\n'];
dat = [dat 'TAB ClOSE \n'];


fid = fopen('C:\Users\Userx\Documents\iMacros\Macros\3rd.iim','wt');
fprintf(fid, dat);
fclose(fid);
cmd = ['"c:\Program Files (x86)\Mozilla Firefox\firefox.exe" imacros://run/?m=3rd.iim'];
status = system(cmd);
waiting(60,'Getting Main category page');
movefile('C:\Users\Userx\Downloads\JournalHomeGrid.csv',['JCR\' v1 '-' v2 '-' v3 '.csv']);