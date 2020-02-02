$legacy = "My name is Edmund.", "This is my simple attempt as trying to leave something behind" , "That would have lasted for 1000 years.", `
"This is my cruel attempt" , "at leaving a legacy.","On 02/02/2020, GitHub will be archiving public repos to a decommissioned coal mine.", `
"These repos will supposedly be there for 1000 years as a giant time capsule.", "This is my input into the digital time capsule."

$things = "Name: Edmund McDougle", "Age: 35 years", "Location: Oak Park, MI, USA, Earth", "Date of this writing: 02/01/2020", "Marital Status: Single",`
 "Favorite People: My Mom, Dad and my brother Elliot", "Brittany Nurse(my future girlfriend)" , "Maria Dingle(my current live in roommate and best friend)", "Nelly Angelica Ruiz(my best friend, yes I have more than 1)",
 "The CREW - Dave, Frank, Kahaila, Nathan, Arturo","Willie and Yolonda Wicks", "Favorite Food: BBQ and Sushi(Sadly it's a tie)", "Favorite Color: Blue", "Favoire Movie: The Temptations & The 5 Heartbeats",
 "What am I scared of?: I'm scared of failing or not being enough for those that I love and care about.", "I believe in Jesus Christ, who was God made flesh, lived perfect from sin in this life, died and rose from the dead to fulfil the prophecy and to be our Lord and Savior",`
 "Favorite Sport: Football(American Football - NFL) and Baseball", "Favorite Sports Team: Detroit Lions(who has never been to the Super Bowl at this point. Last National Title was in 1957.)",`
 "College/University: Bowling Green State University", "Current US President - Donald John Trump", "Current President is hell bent on destroying the legacy of the previous Administration and my favorite president.",`
 "Favorite President: Barrack Hussein Obama", "Hobbies: Riding my 2006 Honda ST1300, looking to get a Honda GoldWing, working out, going to the gun range and firearms, reading book on financial literacy",`
 "Favorite Alcohol: Whiskey", "Favorite ""Adult Beverage"": Crown Royal and Crabnerry Juice"

$instructions = "Once this has begun, press the terminate command to stop (typically CtRL+C). "

if ($psISE)
{
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.MessageBox]::Show("$instructions Press OK to continue.")
}
else
{
    Write-Host -NoNewLine "$instructions Press any key to continue."
    $x = $host.ui.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}
Write-Host $legacy -BackgroundColor White -ForegroundColor Blue
sleep 10
while($true)
{
    $backgroundColor = [Enum]::GetValues([ConsoleColor]) | Get-Random
    $foregroundColor = [Enum]::GetValues([ConsoleColor]) | Get-Random
    foreach($thing in $things)
    {
        while($foregroundColor -eq $backgroundColor){
            $foregroundColor = [Enum]::GetValues([ConsoleColor]) | Get-Random
        }
        Write-Host $thing -ForegroundColor $foregroundColor -BackgroundColor $backgroundColor
        sleep 2
    }
    Write-Host $("Thank you for reading!" + [environment]::NewLine + "This will start over again in 5 seconds"+ [environment]::NewLine+ "Press CTRL+C to stop"+ [environment]::NewLine  )
    sleep 5
}