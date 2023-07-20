Private Sub HealingWaters_Click()

'Initialize Variables
Dim Water As Integer
Dim Medicine As Integer
Dim BloodPressure As Integer
Dim Temperature As Integer

'Input Variables
Water = Inputbox("Please enter the amount of water you would like to drink")
Medicine = Inputbox("Please enter the amount of medicine you would like to take")
BloodPressure = Inputbox("Please enter your current blood pressure")
Temperature = Inputbox("Please enter your current temperature")

'Calculate Ratio of Water Needed
If BloodPressure > 120 Then
    Water = Water + (BloodPressure - 120)
End If

'Check Temperatures for Adjustments
If Temperature > 82.4 Then
    Water = Water + (Temperature - 82.4)
    Medicine = Medicine + (Temperature - 82.4)
ElseIf Temperature < 78.8 Then
    Water = Water - (78.8 - Temperature)
    Medicine = Medicine - (78.8 - Temperature)
End If

'Output the Results
MsgBox ("You should drink "& Water &" ounces of water and take "& Medicine &" units of medicine")

End Sub