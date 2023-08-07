#Requires AutoHotkey v2.0
#SingleInstance Force

OutputDebug "RUNNING`n"

;touch
string outputFile := "fakeauc.txt"
string IO_Name := "Blood_Mandate"
integer IO_Amt := 30000
integer IO_Price := 10000

; do not touch
string IO_Rank := ""
integer IO_Level := 5


constructString(name, rank, level) {
    string str := '/fakeauc_add_recipe "NAME_RANK_LEVEL" 30000 10000 ""`n'  

    namedStr := StrReplace(str, "NAME", name)
    rankedStr := StrReplace(namedStr, "RANK", rank)
    levelStr := StrReplace(rankedStr, "LEVEL", level)
    
    return levelStr
}

writeString(name, level) {
    sendStr := constructString(name, "A", level)
    FileAppend(sendStr, outputFile)
    sendStr := constructString(name, "b", level)
    FileAppend(sendStr, outputFile)
    sendStr := constructString(name, "c", level)
    FileAppend(sendStr, outputFile)
    sendStr := constructString(name, "d", level)
    FileAppend(sendStr, outputFile)
    sendStr := constructString(name, "e", level)
    FileAppend(sendStr, outputFile)
    sendStr := constructString(name, "f", level)
    FileAppend(sendStr, outputFile)
}

$NumpadAdd::
{
    IOName := InputBox("Please input the IO Name", "IO Name").value
    IO_Name := IOName        
    
    ; send once for each rank 
    writeString(IO_Name, 5)
    writeString(IO_Name, 10)
    writeString(IO_Name, 15)
    writeString(IO_Name, 20)
    writeString(IO_Name, 25)
    writeString(IO_Name, 30)
    writeString(IO_Name, 35)
    writeString(IO_Name, 40)
    writeString(IO_Name, 45)
    writeString(IO_Name, 50) 

    OutputDebug "COMPLETE`n"
    return
}

