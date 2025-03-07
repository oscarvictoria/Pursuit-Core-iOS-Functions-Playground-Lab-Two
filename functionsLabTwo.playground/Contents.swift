import UIKit

// Question One

// Write a function named average(of:) that returns the average of an array of Doubles

// Your function here

func average(of:[Double]) -> Double {
    var count = Double()
    
    
    for num in of {
        count += num
        
    }
    let result = count / Double(of.count)
    return result
}


let testCasesOne: [([Double], Double)] = [
    (input: [1,2,3,4,5], expectedOutput: 3),
    (input: [1,42,1,541,42,6], expectedOutput: 105.5),
    (input: [-10,5,-15,20], expectedOutput: 0),
    (input: [1.5, 2.25, 4.5, -1.5], expectedOutput: 1.6875),
]

for (input, expectedOutput) in testCasesOne {
    let output = average(of: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

// Question Two

// Write a function named frequencyDictionary(of:) that takes a String as input and returns a dictionary that maps each character its number of occurrances

// Your function here

let testCasesTwo: [(String, [Character: Int])] = [
    (input: "hello", expectedOutput: ["h": 1, "e": 1, "l": 2, "o": 1]),
    (input: "aaaaaAAA", expectedOutput: ["a": 5, "A":3]),
    (input: "More words", expectedOutput: ["M": 1, "o": 2, "r": 2, "e": 1, " ": 1, "w": 1, "d": 1, "s": 1])
]

//for (input, expectedOutput) in testCasesTwo {
//    let output = frequencyDictionary(of: input)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
//}


// Question Three

// Write a function called fizzBuzz(upto:) that returns an array containing the numbers from 1 to n as Strings with the following replacements:

// If the number if a multiple of 3, replace it with "Fizz"
// If the number is a multiple of 5, replace it with "Buzz"
// If the number is a multiple of 3 AND 5, replace it with "FizzBuzz"

// Your function here

let testCasesThree = [
    (input: 20, expectedOutput: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz"]),
    (input: 40, expectedOutput: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz", "Fizz", "22", "23", "Fizz", "Buzz", "26", "Fizz", "28", "29", "FizzBuzz", "31", "32", "Fizz", "34", "Buzz", "Fizz", "37", "38", "Fizz", "Buzz"]),
    (input: 2_000, expectedOutput: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz", "Fizz", "22", "23", "Fizz", "Buzz", "26", "Fizz", "28", "29", "FizzBuzz", "31", "32", "Fizz", "34", "Buzz", "Fizz", "37", "38", "Fizz", "Buzz", "41", "Fizz", "43", "44", "FizzBuzz", "46", "47", "Fizz", "49", "Buzz","Fizz", "52", "53", "Fizz", "Buzz", "56", "Fizz", "58", "59", "FizzBuzz", "61", "62", "Fizz", "64", "Buzz", "Fizz", "67", "68", "Fizz", "Buzz", "71", "Fizz", "73", "74", "FizzBuzz", "76", "77", "Fizz", "79", "Buzz", "Fizz", "82", "83","Fizz", "Buzz", "86", "Fizz", "88", "89", "FizzBuzz", "91", "92", "Fizz", "94", "Buzz", "Fizz", "97", "98", "Fizz", "Buzz", "101", "Fizz", "103", "104", "FizzBuzz", "106", "107", "Fizz", "109", "Buzz", "Fizz", "112", "113", "Fizz", "Buzz", "116", "Fizz", "118", "119", "FizzBuzz", "121", "122","Fizz", "124", "Buzz", "Fizz", "127", "128", "Fizz", "Buzz", "131", "Fizz", "133", "134", "FizzBuzz", "136", "137", "Fizz", "139", "Buzz", "Fizz", "142", "143", "Fizz", "Buzz","146", "Fizz", "148", "149", "FizzBuzz", "151", "152", "Fizz", "154", "Buzz", "Fizz", "157", "158", "Fizz", "Buzz", "161", "Fizz", "163", "164", "FizzBuzz", "166", "167", "Fizz", "169", "Buzz", "Fizz", "172", "173", "Fizz", "Buzz", "176", "Fizz", "178", "179", "FizzBuzz", "181", "182", "Fizz","184", "Buzz", "Fizz", "187", "188", "Fizz", "Buzz", "191", "Fizz", "193", "194", "FizzBuzz", "196", "197", "Fizz", "199", "Buzz", "Fizz", "202", "203", "Fizz", "Buzz", "206", "Fizz", "208", "209", "FizzBuzz", "211", "212", "Fizz", "214", "Buzz", "Fizz", "217", "218", "Fizz", "Buzz", "221", "Fizz", "223", "224", "FizzBuzz", "226", "227", "Fizz", "229", "Buzz", "Fizz", "232", "233", "Fizz", "Buzz", "236", "Fizz", "238", "239", "FizzBuzz", "241", "242", "Fizz", "244", "Buzz", "Fizz", "247", "248", "Fizz", "Buzz", "251", "Fizz", "253", "254", "FizzBuzz", "256", "257", "Fizz", "259", "Buzz", "Fizz", "262", "263", "Fizz", "Buzz", "266", "Fizz", "268", "269", "FizzBuzz", "271", "272", "Fizz", "274", "Buzz", "Fizz", "277", "278", "Fizz", "Buzz", "281", "Fizz", "283", "284", "FizzBuzz", "286", "287", "Fizz", "289", "Buzz", "Fizz", "292", "293", "Fizz", "Buzz", "296", "Fizz", "298", "299", "FizzBuzz", "301", "302", "Fizz", "304", "Buzz", "Fizz", "307", "308", "Fizz", "Buzz", "311", "Fizz", "313","314", "FizzBuzz", "316", "317", "Fizz", "319", "Buzz", "Fizz", "322", "323", "Fizz", "Buzz", "326", "Fizz", "328", "329", "FizzBuzz", "331", "332", "Fizz", "334", "Buzz", "Fizz", "337", "338", "Fizz", "Buzz", "341", "Fizz", "343", "344", "FizzBuzz", "346", "347", "Fizz", "349", "Buzz", "Fizz", "352", "353", "Fizz", "Buzz", "356", "Fizz", "358", "359", "FizzBuzz", "361", "362", "Fizz", "364", "Buzz", "Fizz", "367", "368", "Fizz", "Buzz", "371", "Fizz", "373", "374", "FizzBuzz", "376", "377", "Fizz", "379", "Buzz", "Fizz", "382", "383", "Fizz", "Buzz", "386", "Fizz", "388", "389", "FizzBuzz", "391", "392", "Fizz", "394", "Buzz", "Fizz", "397", "398", "Fizz", "Buzz", "401", "Fizz", "403", "404", "FizzBuzz", "406", "407", "Fizz", "409", "Buzz", "Fizz", "412","413", "Fizz", "Buzz", "416", "Fizz", "418", "419", "FizzBuzz", "421", "422", "Fizz", "424", "Buzz", "Fizz", "427", "428", "Fizz", "Buzz", "431", "Fizz", "433", "434", "FizzBuzz", "436", "437", "Fizz", "439", "Buzz", "Fizz", "442", "443", "Fizz", "Buzz", "446", "Fizz", "448", "449", "FizzBuzz", "451", "452", "Fizz", "454", "Buzz", "Fizz", "457", "458", "Fizz", "Buzz", "461", "Fizz", "463", "464", "FizzBuzz", "466", "467", "Fizz", "469", "Buzz", "Fizz", "472", "473", "Fizz", "Buzz", "476", "Fizz", "478", "479", "FizzBuzz", "481", "482", "Fizz", "484", "Buzz", "Fizz", "487", "488", "Fizz", "Buzz", "491", "Fizz", "493", "494", "FizzBuzz", "496", "497", "Fizz", "499", "Buzz", "Fizz", "502", "503", "Fizz", "Buzz", "506", "Fizz", "508", "509", "FizzBuzz", "511","512", "Fizz", "514", "Buzz", "Fizz", "517", "518", "Fizz", "Buzz", "521", "Fizz", "523", "524", "FizzBuzz", "526", "527", "Fizz", "529", "Buzz", "Fizz", "532", "533", "Fizz", "Buzz", "536", "Fizz", "538", "539", "FizzBuzz", "541", "542", "Fizz", "544", "Buzz", "Fizz", "547", "548", "Fizz", "Buzz", "551", "Fizz", "553", "554", "FizzBuzz", "556", "557", "Fizz", "559", "Buzz", "Fizz", "562", "563", "Fizz", "Buzz", "566", "Fizz", "568", "569", "FizzBuzz", "571", "572", "Fizz", "574", "Buzz", "Fizz", "577", "578", "Fizz", "Buzz", "581", "Fizz", "583", "584", "FizzBuzz", "586", "587", "Fizz", "589", "Buzz", "Fizz", "592", "593", "Fizz", "Buzz", "596", "Fizz", "598", "599", "FizzBuzz", "601", "602", "Fizz", "604", "Buzz", "Fizz", "607", "608", "Fizz", "Buzz", "611", "Fizz", "613", "614", "FizzBuzz", "616", "617", "Fizz", "619", "Buzz", "Fizz", "622", "623", "Fizz", "Buzz", "626", "Fizz", "628", "629", "FizzBuzz", "631", "632", "Fizz", "634", "Buzz", "Fizz", "637", "638", "Fizz", "Buzz", "641","Fizz", "643", "644", "FizzBuzz", "646", "647", "Fizz", "649", "Buzz", "Fizz", "652", "653", "Fizz", "Buzz", "656", "Fizz", "658", "659", "FizzBuzz", "661", "662", "Fizz", "664", "Buzz", "Fizz", "667", "668", "Fizz", "Buzz", "671", "Fizz", "673", "674", "FizzBuzz", "676", "677", "Fizz", "679","Buzz", "Fizz", "682", "683", "Fizz", "Buzz", "686", "Fizz", "688", "689", "FizzBuzz", "691", "692", "Fizz", "694", "Buzz", "Fizz", "697", "698", "Fizz", "Buzz", "701", "Fizz","703", "704", "FizzBuzz", "706", "707", "Fizz", "709", "Buzz", "Fizz", "712", "713", "Fizz", "Buzz", "716", "Fizz", "718", "719", "FizzBuzz", "721", "722", "Fizz", "724", "Buzz", "Fizz", "727", "728", "Fizz", "Buzz", "731", "Fizz", "733", "734", "FizzBuzz", "736", "737", "Fizz", "739", "Buzz","Fizz", "742", "743", "Fizz", "Buzz", "746", "Fizz", "748", "749", "FizzBuzz", "751", "752", "Fizz", "754", "Buzz", "Fizz", "757", "758", "Fizz", "Buzz", "761", "Fizz", "763", "764", "FizzBuzz", "766", "767", "Fizz", "769", "Buzz", "Fizz", "772", "773", "Fizz", "Buzz", "776", "Fizz", "778", "779", "FizzBuzz", "781", "782", "Fizz", "784", "Buzz", "Fizz", "787", "788", "Fizz", "Buzz", "791", "Fizz", "793", "794", "FizzBuzz", "796", "797", "Fizz", "799", "Buzz", "Fizz","802", "803", "Fizz", "Buzz", "806", "Fizz", "808", "809","FizzBuzz", "811", "812", "Fizz", "814", "Buzz", "Fizz", "817", "818", "Fizz", "Buzz", "821", "Fizz", "823", "824", "FizzBuzz", "826", "827", "Fizz", "829", "Buzz", "Fizz", "832", "833", "Fizz", "Buzz", "836", "Fizz", "838", "839", "FizzBuzz", "841", "842", "Fizz", "844", "Buzz", "Fizz", "847", "848", "Fizz", "Buzz", "851", "Fizz", "853", "854", "FizzBuzz", "856", "857", "Fizz", "859", "Buzz", "Fizz", "862", "863", "Fizz", "Buzz", "866", "Fizz", "868", "869", "FizzBuzz", "871", "872", "Fizz", "874", "Buzz", "Fizz", "877", "878", "Fizz", "Buzz", "881", "Fizz", "883", "884", "FizzBuzz", "886", "887", "Fizz", "889", "Buzz", "Fizz", "892", "893", "Fizz", "Buzz", "896", "Fizz", "898", "899", "FizzBuzz","901", "902", "Fizz", "904", "Buzz", "Fizz", "907", "908","Fizz", "Buzz", "911", "Fizz", "913", "914", "FizzBuzz", "916", "917", "Fizz", "919", "Buzz", "Fizz", "922", "923", "Fizz", "Buzz", "926", "Fizz", "928", "929", "FizzBuzz", "931", "932", "Fizz", "934", "Buzz", "Fizz", "937", "938", "Fizz", "Buzz", "941", "Fizz", "943", "944", "FizzBuzz", "946", "947", "Fizz", "949", "Buzz", "Fizz", "952", "953", "Fizz", "Buzz", "956", "Fizz", "958", "959", "FizzBuzz", "961", "962", "Fizz", "964", "Buzz", "Fizz", "967", "968", "Fizz","Buzz", "971", "Fizz", "973", "974", "FizzBuzz", "976", "977", "Fizz", "979", "Buzz", "Fizz", "982", "983", "Fizz", "Buzz", "986", "Fizz", "988", "989", "FizzBuzz", "991", "992", "Fizz", "994", "Buzz", "Fizz", "997", "998", "Fizz", "Buzz", "1001", "Fizz", "1003", "1004", "FizzBuzz", "1006", "1007", "Fizz", "1009", "Buzz", "Fizz", "1012", "1013", "Fizz", "Buzz", "1016", "Fizz", "1018", "1019", "FizzBuzz", "1021", "1022", "Fizz", "1024", "Buzz", "Fizz", "1027", "1028","Fizz", "Buzz", "1031", "Fizz", "1033", "1034", "FizzBuzz", "1036", "1037", "Fizz", "1039", "Buzz", "Fizz", "1042", "1043", "Fizz", "Buzz", "1046", "Fizz", "1048", "1049", "FizzBuzz", "1051", "1052", "Fizz", "1054", "Buzz", "Fizz", "1057", "1058", "Fizz", "Buzz", "1061", "Fizz", "1063", "1064", "FizzBuzz", "1066", "1067", "Fizz", "1069", "Buzz", "Fizz", "1072", "1073", "Fizz", "Buzz", "1076", "Fizz", "1078", "1079", "FizzBuzz", "1081", "1082", "Fizz", "1084", "Buzz","Fizz", "1087", "1088", "Fizz", "Buzz", "1091", "Fizz", "1093", "1094", "FizzBuzz", "1096", "1097", "Fizz", "1099", "Buzz", "Fizz", "1102", "1103", "Fizz", "Buzz", "1106", "Fizz", "1108", "1109", "FizzBuzz", "1111", "1112", "Fizz", "1114", "Buzz", "Fizz", "1117", "1118", "Fizz", "Buzz", "1121", "Fizz", "1123", "1124", "FizzBuzz", "1126", "1127", "Fizz", "1129", "Buzz", "Fizz", "1132", "1133", "Fizz", "Buzz", "1136", "Fizz", "1138", "1139", "FizzBuzz", "1141", "1142","Fizz", "1144", "Buzz", "Fizz", "1147", "1148", "Fizz", "Buzz", "1151", "Fizz", "1153", "1154", "FizzBuzz", "1156", "1157", "Fizz", "1159", "Buzz", "Fizz", "1162", "1163", "Fizz", "Buzz", "1166", "Fizz", "1168", "1169", "FizzBuzz", "1171", "1172", "Fizz", "1174", "Buzz", "Fizz", "1177", "1178", "Fizz", "Buzz", "1181", "Fizz", "1183", "1184", "FizzBuzz", "1186", "1187", "Fizz", "1189", "Buzz", "Fizz", "1192", "1193", "Fizz", "Buzz", "1196", "Fizz", "1198", "1199", "FizzBuzz", "1201", "1202", "Fizz", "1204", "Buzz", "Fizz", "1207", "1208", "Fizz", "Buzz", "1211", "Fizz", "1213", "1214", "FizzBuzz", "1216", "1217", "Fizz", "1219", "Buzz", "Fizz", "1222", "1223", "Fizz", "Buzz", "1226", "Fizz", "1228","1229", "FizzBuzz", "1231", "1232", "Fizz", "1234", "Buzz", "Fizz", "1237", "1238", "Fizz", "Buzz", "1241", "Fizz", "1243", "1244", "FizzBuzz", "1246", "1247", "Fizz", "1249", "Buzz", "Fizz", "1252", "1253", "Fizz", "Buzz", "1256", "Fizz", "1258", "1259", "FizzBuzz", "1261", "1262", "Fizz", "1264", "Buzz", "Fizz", "1267", "1268", "Fizz", "Buzz", "1271", "Fizz", "1273", "1274", "FizzBuzz", "1276", "1277", "Fizz", "1279", "Buzz", "Fizz", "1282", "1283", "Fizz", "Buzz","1286", "Fizz", "1288", "1289", "FizzBuzz", "1291", "1292", "Fizz", "1294", "Buzz", "Fizz", "1297", "1298", "Fizz", "Buzz", "1301", "Fizz", "1303", "1304", "FizzBuzz", "1306", "1307", "Fizz", "1309", "Buzz", "Fizz", "1312", "1313", "Fizz", "Buzz", "1316", "Fizz", "1318", "1319", "FizzBuzz", "1321", "1322", "Fizz", "1324", "Buzz", "Fizz", "1327", "1328", "Fizz", "Buzz", "1331", "Fizz", "1333", "1334", "FizzBuzz", "1336", "1337", "Fizz", "1339", "Buzz", "Fizz", "1342","1343", "Fizz", "Buzz", "1346", "Fizz", "1348", "1349", "FizzBuzz", "1351", "1352", "Fizz", "1354", "Buzz", "Fizz", "1357", "1358", "Fizz", "Buzz", "1361", "Fizz", "1363", "1364", "FizzBuzz", "1366", "1367", "Fizz", "1369", "Buzz", "Fizz", "1372", "1373", "Fizz", "Buzz", "1376", "Fizz", "1378", "1379", "FizzBuzz", "1381", "1382", "Fizz", "1384", "Buzz", "Fizz", "1387", "1388", "Fizz", "Buzz", "1391", "Fizz", "1393", "1394", "FizzBuzz", "1396", "1397", "Fizz", "1399","Buzz", "Fizz", "1402", "1403", "Fizz", "Buzz", "1406", "Fizz", "1408", "1409", "FizzBuzz", "1411", "1412", "Fizz", "1414", "Buzz", "Fizz", "1417", "1418", "Fizz", "Buzz", "1421", "Fizz", "1423", "1424", "FizzBuzz", "1426", "1427", "Fizz", "1429", "Buzz", "Fizz", "1432", "1433", "Fizz", "Buzz", "1436", "Fizz", "1438", "1439", "FizzBuzz", "1441", "1442", "Fizz", "1444", "Buzz", "Fizz", "1447", "1448", "Fizz", "Buzz", "1451", "Fizz", "1453", "1454", "FizzBuzz", "1456","1457", "Fizz", "1459", "Buzz", "Fizz", "1462", "1463", "Fizz", "Buzz", "1466", "Fizz", "1468", "1469", "FizzBuzz", "1471", "1472", "Fizz", "1474", "Buzz", "Fizz", "1477", "1478", "Fizz", "Buzz", "1481", "Fizz", "1483", "1484", "FizzBuzz", "1486", "1487", "Fizz", "1489", "Buzz", "Fizz", "1492", "1493", "Fizz", "Buzz", "1496", "Fizz", "1498", "1499", "FizzBuzz", "1501", "1502", "Fizz", "1504", "Buzz", "Fizz", "1507", "1508", "Fizz", "Buzz", "1511", "Fizz", "1513", "1514", "FizzBuzz", "1516", "1517", "Fizz", "1519", "Buzz", "Fizz", "1522", "1523", "Fizz", "Buzz", "1526", "Fizz", "1528", "1529", "FizzBuzz", "1531", "1532", "Fizz", "1534", "Buzz", "Fizz", "1537", "1538", "Fizz", "Buzz", "1541", "Fizz","1543", "1544", "FizzBuzz", "1546", "1547", "Fizz", "1549", "Buzz", "Fizz", "1552", "1553", "Fizz", "Buzz", "1556", "Fizz", "1558", "1559", "FizzBuzz", "1561", "1562", "Fizz", "1564", "Buzz", "Fizz", "1567", "1568", "Fizz", "Buzz", "1571", "Fizz", "1573", "1574", "FizzBuzz", "1576", "1577", "Fizz", "1579", "Buzz", "Fizz", "1582", "1583", "Fizz", "Buzz", "1586", "Fizz", "1588", "1589", "FizzBuzz", "1591", "1592", "Fizz", "1594", "Buzz", "Fizz", "1597", "1598", "Fizz","Buzz", "1601", "Fizz", "1603", "1604", "FizzBuzz", "1606", "1607", "Fizz", "1609", "Buzz", "Fizz", "1612", "1613", "Fizz", "Buzz", "1616", "Fizz", "1618", "1619", "FizzBuzz", "1621", "1622", "Fizz", "1624", "Buzz", "Fizz", "1627", "1628", "Fizz", "Buzz", "1631", "Fizz", "1633", "1634", "FizzBuzz", "1636", "1637", "Fizz", "1639", "Buzz", "Fizz", "1642", "1643", "Fizz", "Buzz", "1646", "Fizz", "1648", "1649", "FizzBuzz", "1651", "1652", "Fizz", "1654", "Buzz", "Fizz","1657", "1658", "Fizz", "Buzz", "1661", "Fizz", "1663", "1664", "FizzBuzz", "1666", "1667", "Fizz", "1669", "Buzz", "Fizz", "1672", "1673", "Fizz", "Buzz", "1676", "Fizz", "1678", "1679", "FizzBuzz", "1681", "1682", "Fizz", "1684", "Buzz", "Fizz", "1687", "1688", "Fizz", "Buzz", "1691", "Fizz", "1693", "1694", "FizzBuzz", "1696", "1697", "Fizz", "1699", "Buzz", "Fizz", "1702", "1703", "Fizz", "Buzz", "1706", "Fizz", "1708", "1709", "FizzBuzz", "1711", "1712", "Fizz","1714", "Buzz", "Fizz", "1717", "1718", "Fizz", "Buzz", "1721", "Fizz", "1723", "1724", "FizzBuzz", "1726", "1727", "Fizz", "1729", "Buzz", "Fizz", "1732", "1733", "Fizz", "Buzz", "1736", "Fizz", "1738", "1739", "FizzBuzz", "1741", "1742", "Fizz", "1744", "Buzz", "Fizz", "1747", "1748", "Fizz", "Buzz", "1751", "Fizz", "1753", "1754", "FizzBuzz", "1756", "1757", "Fizz", "1759", "Buzz", "Fizz", "1762", "1763", "Fizz", "Buzz", "1766", "Fizz", "1768", "1769", "FizzBuzz","1771", "1772", "Fizz", "1774", "Buzz", "Fizz", "1777", "1778", "Fizz", "Buzz", "1781", "Fizz", "1783", "1784", "FizzBuzz", "1786", "1787", "Fizz", "1789", "Buzz", "Fizz", "1792", "1793", "Fizz", "Buzz", "1796", "Fizz", "1798", "1799","FizzBuzz", "1801", "1802", "Fizz", "1804", "Buzz", "Fizz", "1807", "1808", "Fizz", "Buzz", "1811", "Fizz", "1813", "1814", "FizzBuzz", "1816", "1817", "Fizz", "1819", "Buzz", "Fizz", "1822", "1823", "Fizz", "Buzz", "1826", "Fizz", "1828", "1829", "FizzBuzz", "1831", "1832", "Fizz", "1834", "Buzz", "Fizz", "1837", "1838", "Fizz", "Buzz", "1841", "Fizz", "1843", "1844", "FizzBuzz", "1846", "1847", "Fizz", "1849", "Buzz", "Fizz", "1852", "1853", "Fizz", "Buzz", "1856","Fizz", "1858", "1859", "FizzBuzz", "1861", "1862", "Fizz", "1864", "Buzz", "Fizz", "1867", "1868", "Fizz", "Buzz", "1871", "Fizz", "1873", "1874", "FizzBuzz", "1876", "1877", "Fizz", "1879", "Buzz", "Fizz", "1882", "1883", "Fizz", "Buzz", "1886", "Fizz", "1888", "1889", "FizzBuzz", "1891", "1892", "Fizz", "1894", "Buzz", "Fizz", "1897", "1898", "Fizz", "Buzz", "1901", "Fizz", "1903", "1904", "FizzBuzz", "1906", "1907", "Fizz", "1909", "Buzz", "Fizz", "1912", "1913","Fizz", "Buzz", "1916", "Fizz", "1918", "1919", "FizzBuzz", "1921", "1922", "Fizz", "1924", "Buzz", "Fizz", "1927", "1928", "Fizz", "Buzz", "1931", "Fizz", "1933", "1934", "FizzBuzz", "1936", "1937", "Fizz", "1939", "Buzz", "Fizz", "1942", "1943", "Fizz", "Buzz", "1946", "Fizz", "1948", "1949", "FizzBuzz", "1951", "1952", "Fizz", "1954", "Buzz", "Fizz", "1957", "1958", "Fizz", "Buzz", "1961", "Fizz", "1963", "1964", "FizzBuzz", "1966", "1967", "Fizz", "1969", "Buzz","Fizz", "1972", "1973", "Fizz", "Buzz", "1976", "Fizz", "1978", "1979", "FizzBuzz", "1981", "1982", "Fizz", "1984", "Buzz", "Fizz", "1987", "1988", "Fizz", "Buzz", "1991", "Fizz", "1993", "1994", "FizzBuzz", "1996", "1997", "Fizz", "1999", "Buzz"])
]

//for (input, expectedOutput) in testCasesThree {
//    let output = fizzBuzz(upto: input)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
//}


// Question Four

// Write a function named value(_:isGreaterThanAverageOf:) that takes in an array of Doubles and a Double and returns whether the Double is greater than the average

// Your function here

let testCasesFour = [
    (inputOne: 4.0, inputTwo: [1.0,2,3,4,5], expectedOutput: true),
    (inputOne: 2, inputTwo: [1,2,3,4,5], expectedOutput: false),
    (inputOne: 3, inputTwo: [1,2,3,4,5], expectedOutput: false),
    (inputOne: 100.8, inputTwo: [1,42,1,541,42,5], expectedOutput: false),
    (inputOne: 105.4, inputTwo: [1,42,1,541,42,5], expectedOutput: true),
]

//for (inputOne, inputTwo, expectedOutput) in testCasesFour {
//    let output = value(inputOne, isGreaterThanAverageOf: inputTwo)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo), but got \(output)")
//}

// Question Five

// Write a function that finds the second smallest Int an an array of Ints

// Your function here


func secondSmallestValue(inn:[Int]) -> Int {
    let sortedArray = inn.sorted()
    return sortedArray[1]
}

let testCasesFive = [
    (input: [1,2,3,4], expectedOutput: 2),
    (input: [2,1,3,4], expectedOutput: 2),
    (input: [40,253,680,750,64,126,4,471,706,757,899,856,617,169,697,755,36,426,973,107,299,360,201,313,801,61,241,911,992,354,108,341,170,949,333,937,933,512,568,379,995,29,637,417,793,763,47,387,166,135,259,400,406,141,271,194,263,171,992,508,953,176,990,544,491,488,691,406,911,751,519,732,907,403,328,110,348,669,112,719,852,671,447,619,928,847,630,711,371,143,277,405,210,266,241,379,265,213,331,780], expectedOutput: 29),
    (input: [910,158,197,874,58,835,765,182,562,942,399,35,269,704,634,518,948,744,786,181,801,952,175,97,222,705,121,928,126,35,346,174,214,906,906,886,245,34,239,376,34,902,355,528,844,265,796,27,721,905,877,567,911,223,472,132,426,359,617,402,89,144,976,774,961,386,380,75,504,854,862,101,271,914,673,288,844,633,40,477,346,479,727,62,604,523,852,789,234,374,156,855,819,422,741,543,994,587,37,100], expectedOutput: 34),
    (input: [807,909,-22,424,244,873,-907,-350,-780,576,-177,278,-855,296,-33,-609,-664,-126,-469,-57,-376,-424,-477,-795,-481,-806,545,727,-879,210,-114,-783,-156,45,781,369,35,900,904,-2,168,489,-329,608,-287,40,442,362,-560,236,-583,698,544,-154,478,535,-397,363,470,-49,49,631,-62,-293,-419,-528,753,-809,-48,-888,606,-889,-908,672,-783,-921,-198,-428,701,-30,106,500,-106,199,-793,392,873,330,366,45,840,649,-135,-850,174,-338,901,-753,402,-62,554,-579,863,955,-999,-13,851,760,-523,-968,225,-173,-605,-759,306,657,844,168,-270,883,963,-835,624,570,705,333,-293,283,382,926,839,264,602,-940,160,-369,-770,-792,722,321,88,-176,-911,203,486,-175,-529,187,-668,518,-282,162,-165,-34,544,538,-828,-562,-154,591,345,-241,962,801,-632,-921,-710,588,-642,113,128,-242,56,716,-709,232,-870,241,-612,-583,-199,762,-601,-410,-896,-493,664,531,-613,-285,-951,-589,243,819,-195,911,-701,-368,-85,-316], expectedOutput: -968)
]

for (input, expectedOutput) in testCasesFive {
    let output = secondSmallestValue(inn: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}
