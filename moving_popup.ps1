# Load the required graphical interface library
Add-Type -AssemblyName System.Windows.Forms

# Get screen dimensions
$Screen = [System.Windows.Forms.SystemInformation]::PrimaryMonitorSize
$ScreenWidth = $Screen.Width
$ScreenHeight = $Screen.Height

# Create the main window (the "form")
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Question'
$form.Size = New-Object System.Drawing.Size(250, 150)
$form.StartPosition = 'CenterScreen'
$form.FormBorderStyle = 'FixedDialog'
$form.ControlBox = $false # Hides all buttons (close, max, min)

# Create the question label
$label = New-Object System.Windows.Forms.Label
$label.Text = 'Are you gay?'
$label.Location = New-Object System.Drawing.Point(40, 20)
$label.AutoSize = $true

# Create the "Yes" button
$yesButton = New-Object System.Windows.Forms.Button
$yesButton.Text = 'Yes'
$yesButton.Location = New-Object System.Drawing.Point(40, 60)
# Action: When "Yes" is clicked, close the form
$yesButton.Add_Click({
    $form.Close()
})

# Create the "No" button
$noButton = New-Object System.Windows.Forms.Button
$noButton.Text = 'No'
$noButton.Location = New-Object System.Drawing.Point(130, 60)
# Action: When the mouse enters the "No" button area...
$noButton.Add_MouseEnter({
    # ...move the window to a random location.
    $random = New-Object Random
    $newX = $random.Next(0, ($ScreenWidth - $form.Width))
    $newY = $random.Next(0, ($ScreenHeight - $form.Height))
    $form.Location = New-Object System.Drawing.Point($newX, $newY)
})

# Add all the created items to the window
$form.Controls.Add($label)
$form.Controls.Add($yesButton)
$form.Controls.Add($noButton)

# Move to a random position when the form first loads
$form.Add_Load({
    $random = New-Object Random
    $newX = $random.Next(0, ($ScreenWidth - $form.Width))
    $newY = $random.Next(0, ($ScreenHeight - $form.Height))
    $form.Location = New-Object System.Drawing.Point($newX, $newY)
})

# Show the window
$form.ShowDialog()