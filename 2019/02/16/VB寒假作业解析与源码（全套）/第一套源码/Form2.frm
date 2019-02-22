VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "判断月份天数"
   ClientHeight    =   3495
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4830
   LinkTopic       =   "Form2"
   ScaleHeight     =   3495
   ScaleWidth      =   4830
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1680
      TabIndex        =   3
      Top             =   360
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   495
      Left            =   3240
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label3 
      Height          =   975
      Left            =   240
      TabIndex        =   5
      Top             =   2160
      Width           =   4215
   End
   Begin VB.Label Label2 
      Caption         =   "月份 "
      Height          =   495
      Left            =   360
      TabIndex        =   1
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "年份"
      Height          =   495
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim y As Integer
Dim m As Integer
Dim r As Integer
    y = Int(Val(Text1.Text))
    m = Int(Val(Text2.Text))
    
    If m > 0 And m < 13 Then
        If m = 1 Or m = 3 Or m = 5 Or m = 7 Or m = 8 Or m = 10 Or m = 12 Then
            Label3.Caption = y & "年的" & m & "月份有" & "31天"
        ElseIf m = 4 Or m = 6 Or m = 9 Or m = 11 Then
            Label3.Caption = y & "年的" & m & "月份有" & "30天"
        Else
            Label3.Caption = y & "年的" & m & "月份有" & "28天"
        End If
    End If

End Sub
