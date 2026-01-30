# Load the Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create the form
$form = New-Object System.Windows.Forms.Form
$form.Text = 'My PowerShell GUI'
$form.Size = New-Object System.Drawing.Size(400,300)
$form.StartPosition = 'CenterScreen'

# Create a label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10,20)
$label.Size = New-Object System.Drawing.Size(280,20)
$label.Text = 'Enter your name:'
$form.Controls.Add($label)

# Create a text box
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10,50)
$textBox.Size = New-Object System.Drawing.Size(360,20)
$form.Controls.Add($textBox)

# Create a button
$button = New-Object System.Windows.Forms.Button
$button.Location = New-Object System.Drawing.Point(10,90)
$button.Size = New-Object System.Drawing.Size(100,30)
$button.Text = 'Submit'
$button.Add_Click({
    $resultLabel.Text = "Hello, $($textBox.Text)!"
})
$form.Controls.Add($button)

# Create a result label
$resultLabel = New-Object System.Windows.Forms.Label
$resultLabel.Location = New-Object System.Drawing.Point(10,130)
$resultLabel.Size = New-Object System.Drawing.Size(360,20)
$resultLabel.Text = ''
$form.Controls.Add($resultLabel)

# Show the form
$form.ShowDialog()
