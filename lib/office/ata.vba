Sub geraAtas()
'Não esquecer Menu Tools References clicar em Microsoft Word 15.0 Object Library

For nAta = 1 To 20
    Set fileWord = CreateObject("Word.Application")
    fileWord.Visible = True
    'Set fileAta = fileWord.Documents.Open("C:\DEVS\secretaria\lib\office\ata.docx") 'DEVS
    Set fileAta = fileWord.Documents.Open("D:\DEVS\secretaria\lib\office\ata.docx") 'GFQ
    

    With fileAta.Content.Find
        .Text = "cabecalho"
        .Replacement.Text = Sheet1.Cells(nAta, 2).Value
        .Wrap = wdFindContinue
        .Execute Replace:=wdReplaceAll
    End With

    tamanho = Len(Sheet1.Cells(nAta, 3).Value)
    de = 1
    For i = 1 To 50
        If tamanho > de Then
            x = Mid(Sheet1.Cells(nAta, 3).Value, de, 250)
        Else
            x = ""
        End If
        de = de + 250
        With fileAta.Content.Find
            .Text = "<x" & i & ">"
            .Replacement.Text = x
            .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
        End With
    Next
    
    For i = 1 To 21
        nome = Sheet2.Cells(1, i).Value
        With fileAta.Content.Find
            .Text = nome
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
            .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
        End With
    Next
    
    For i = 1 To 21
        nome = Sheet2.Cells(2, i).Value
        With fileAta.Content.Find
            .Text = nome & "#"
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
            .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
        End With
    Next
    
    For i = 1 To 9
        nome = "item " & i & "."
        With fileAta.Content.Find
            .Text = nome
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
            .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
        End With
    Next

    For i = 1 To 9
        nome = " " & i & "."
        With fileAta.Content.Find
            .Text = nome
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
            .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
        End With
    Next


    nome = "item único"
    With fileAta.Content.Find
            .Text = nome
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
             .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
    End With
    nome = "único"
    With fileAta.Content.Find
            .Text = nome
            .Replacement.Text = nome
            .Replacement.Font.Bold = True
             .Wrap = wdFindContinue
            .Execute Replace:=wdReplaceAll
    End With


    
    'nome = "C:\DEVS\secretaria\lib\office\" & Sheet1.Cells(nAta, 1) 
    nome = "D:\DEVS\secretaria\lib\office\" & Sheet1.Cells(nAta, 1)
    fileAta.SaveAs2 (nome)

    fileAta.Close
    fileWord.Quit

    Set fileAta = Nothing
    Set fileWord = Nothing

Next

End Sub

<x1><x2><x3><x4><x5><x6><x7><x8><x9><x10><x11><x12><x13><x14><x15><x16><x17><x18><x19><x20><x21><x22><x23><x24><x25><x26><x27><x28><x29><x30><x31><x32><x33><x34><x35><x36><x37><x38><x39><x40><x41><x42><x43><x44><x45><x46><x47><x48><x49><x50><x51><x52><x53><x54><x55><x56><x57><x58><x59><x60><x61><x62><x63><x64><x65><x66><x67><x68><x69><x70><x71><x72><x73><x74><x75><x76><x77><x78><x79><x80><x81><x82><x83><x84><x85><x86><x87><x88><x89><x90><x91><x92><x93><x94><x95><x96><x97><x98><x99><x100>

