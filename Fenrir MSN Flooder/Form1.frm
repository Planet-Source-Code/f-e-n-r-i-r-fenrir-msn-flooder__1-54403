VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Form1"
   ClientHeight    =   2880
   ClientLeft      =   150
   ClientTop       =   540
   ClientWidth     =   3975
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2880
   ScaleWidth      =   3975
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "Flood"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2160
      TabIndex        =   11
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Flood"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   2280
      Width           =   1575
   End
   Begin VB.OptionButton Option6 
      BackColor       =   &H00000000&
      Caption         =   "6"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3360
      TabIndex        =   5
      Top             =   1800
      Width           =   375
   End
   Begin VB.OptionButton Option5 
      BackColor       =   &H00000000&
      Caption         =   "5"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2760
      TabIndex        =   4
      Top             =   1800
      Width           =   615
   End
   Begin VB.OptionButton Option4 
      BackColor       =   &H00000000&
      Caption         =   "4"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2160
      TabIndex        =   3
      Top             =   1800
      Width           =   975
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00000000&
      Caption         =   "3"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   1800
      Width           =   975
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "2"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   840
      TabIndex        =   1
      Top             =   1800
      Width           =   975
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "1"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   1800
      Width           =   975
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Caption         =   "Frame1"
      Height          =   2655
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   3735
      Begin VB.TextBox Text1 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   9
         Text            =   "Text1"
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label2 
         BackColor       =   &H00000000&
         Caption         =   "Cantidad de ventanitas a floodear:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   600
         TabIndex        =   10
         Top             =   1200
         Width           =   2655
      End
      Begin VB.Label Label1 
         BackColor       =   &H00000000&
         Caption         =   "Nickname con el que va a floodear:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   600
         TabIndex        =   8
         Top             =   360
         Width           =   2535
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public WithEvents MSN As Messenger
Attribute MSN.VB_VarHelpID = -1

Private Sub Command1_Click()

If Option1 = True Then
For x = 1 To 1
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

If Option2 = True Then
For x = 1 To 2
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

If Option3 = True Then
For x = 1 To 3
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

If Option4 = True Then
For x = 1 To 4
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

If Option5 = True Then
For x = 1 To 5
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

If Option6 = True Then
For x = 1 To 6
MSN.MyStatus = MISTATUS_INVISIBLE
MSN.MyStatus = MISTATUS_ONLINE
Next x
End If

End Sub

Private Sub Command2_Click()
Form2.Show
End Sub


Private Sub Form_Load()
Set MSN = New Messenger
Form1.Caption = "F.e.n.r.i.R. MSN Flooder"
Frame1.Caption = ""
Command1.Caption = "Floodear MSN"
Command2.Caption = "Acerca de..."
Option1.Caption = "1"
Option2.Caption = "2"
Option3.Caption = "3"
Option4.Caption = "4"
Option5.Caption = "5"
Option6.Caption = "6"
Text1.Text = MSN.MyFriendlyName
End Sub

