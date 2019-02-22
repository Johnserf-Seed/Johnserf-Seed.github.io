VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "数据交换排序"
   ClientHeight    =   4860
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6975
   LinkTopic       =   "Form3"
   ScaleHeight     =   4860
   ScaleWidth      =   6975
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command2 
      Caption         =   "排序"
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "交换"
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   1320
      Width           =   1215
   End
   Begin VB.ListBox List2 
      Height          =   4020
      ItemData        =   "Form3.frx":0000
      Left            =   4800
      List            =   "Form3.frx":0002
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   4020
      ItemData        =   "Form3.frx":0004
      Left            =   720
      List            =   "Form3.frx":0006
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(1 To 10) As Integer
Private Sub Command1_Click()
    For i = 1 To 10
        a(i) = Val(List1.Text)
        For j = 10 To i Step -1
            a(i) = a(j): a(j) = a(i)
        Next j
    List2.AddItem a(i)
    Next i

End Sub

Private Sub Form_Load()
Randomize
Dim s As Integer
    For i = 1 To 10
        s = Int(Rnd * (99 - 1) + 1)
        List1.AddItem s
    Next i
End Sub
