function Hash($textToHash)
{
    $hasher = new-object System.Security.Cryptography.MD5CryptoServiceProvider
    $toHash = [System.Text.Encoding]::UTF8.GetBytes($textToHash)
    $hashByteArray = $hasher.ComputeHash($toHash)
    foreach($byte in $hashByteArray)
    {
         $res += $byte.ToString("x2")
    }
    return $res;
}

$secret = 'ckczppom'
$a = 1

Do

    {

     "Starting Loop $a"
        

     $h = hash($secret + $a) 

     $a++

     $h

     "Now `$a is $a"

    } Until ($h -like '000000*')

    $h

