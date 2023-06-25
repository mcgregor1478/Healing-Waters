Public Class healingWaters
    'define global variables
    Dim waterLevel As Integer
    Dim waterPressure As Double
    
    Sub Main()
        'set water level and pressure
        waterLevel = 3
        waterPressure = 2.5
        
        'call methods
        calibrateWater()
        monitorWaterPressure()
        maintainWaterLevel()
    End Sub
    
    'This method calibrates the water
    Sub calibrateWater()
        Dim maxCapacity As Integer
        maxCapacity = 5
        
        If waterLevel > maxCapacity Then
            waterLevel = maxCapacity
        Else
            waterLevel = waterLevel
        End If
    End Sub
    
    'This method monitors the water pressure
    Sub monitorWaterPressure()
        Dim minPressure As Double
        minPressure = 1.5
        
        If waterPressure < minPressure Then
            waterPressure = minPressure
        Else
            waterPressure = waterPressure
        End If
    End Sub
    
    'This method maintains the water level
    Sub maintainWaterLevel()
        Dim lowLevel As Integer
        lowLevel = 2
        
        If waterLevel < lowLevel Then
            waterLevel = lowLevel
        Else
            waterLevel = waterLevel
        End If
    End Sub
End Class