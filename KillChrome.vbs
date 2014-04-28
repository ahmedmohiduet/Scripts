KillProc "chrome.exe"

Sub KillProc( myProcess )

    Dim blnRunning, colProcesses, objProcess

    blnRunning = False

    Set colProcesses = GetObject( _

                       "winmgmts:{impersonationLevel=impersonate}" _

                       ).ExecQuery( "Select * From Win32_Process", , 48 )

    For Each objProcess in colProcesses

        If LCase( myProcess ) = LCase( objProcess.Name ) Then

            ' Confirm that the process was actually running

            blnRunning = True

            ' Get exact case for the actual process name

            myProcess  = objProcess.Name

            ' Kill all instances of the process

            objProcess.Terminate()

        End If

    Next

    If blnRunning Then

        Do Until Not blnRunning

            Set colProcesses = GetObject( _

                               "winmgmts:{impersonationLevel=impersonate}" _

                               ).ExecQuery( "Select * From Win32_Process Where Name = '" _

                             & myProcess & "'" )

            WScript.Sleep 100 'Wait for 100 MilliSeconds

            If colProcesses.Count = 0 Then 'If no more processes are running, exit loop

                blnRunning = False

            End If

        Loop

      End If

End Sub
