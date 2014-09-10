import Propellor
import Propellor.CmdLine
import qualified Propellor.Property.File as File
import qualified Propellor.Property.Apt as Apt
 
main :: IO ()
main = defaultMain hosts
 
hosts :: [Host]
hosts =
  [ host "ubuntu-propellor"
    & Apt.installed ["ntpdate"]
  ]
