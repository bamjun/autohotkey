msgbox, start
return

F1::
    
    X1 := ComObjActive("Excel.Application").ActiveWorkbook.ActiveSheet
    
    row_num_a := x1.Range("A" x1.Rows.Count).End(xlUp := -4162).ROW
    
    x1.Sort.SortFields.Clear
    x1.Sort.SortFields.Add(x1.Range("C5:C"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("A5:A"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("B5:B"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("D5:D"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("E5:E"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("F5:F"row_num_a), 0, 1)
    x1.Sort.SortFields.Add(x1.Range("L5:L"row_num_a), 0, 1)
    x1.Sort.SetRange(x1.Range("A5:L"row_num_a))
    x1.Sort.Header := 0
    x1.Sort.MatchCase := False
    x1.Sort.Orientation := 1
    x1.Sort.SortMethod := 1
    x1.Sort.Apply
    
    row_num_c := x1.Range("C" x1.Rows.Count).End(xlUp := -4162).ROW
    
    msgbox % row_num_a - row_num_c
    
    
    
    X1 :=""
return

F2::
    msgbox, exit
    exitapp
return

F3::
    msgbox, reload
    Reload
return

