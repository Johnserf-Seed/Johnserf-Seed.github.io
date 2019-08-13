VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "数列运算"
   ClientHeight    =   2220
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4530
   LinkTopic       =   "Form1"
   ScaleHeight     =   2220
   ScaleWidth      =   4530
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command1 
      Caption         =   "计算"
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    Dim i As Integer
    Dim s As Double
        For i = 1 To 100 Step 2
        s = s + 1 / i - 1 / (i + 1)
        Next i
        MsgBox "s=" & s, vbYesNo, "运算结果"
End Sub

