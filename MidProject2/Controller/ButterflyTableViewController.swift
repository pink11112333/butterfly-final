//
//  ButterflyTableViewController.swift
//  MidProject2
//
//  Created by csie on 2018/5/9.
//  Copyright © 2018年 csie. All rights reserved.
//

import UIKit

class ButterflyTableViewController: UITableViewController {
    var number: Int!
    
    var selectButterfly: Butterfly = Butterfly()
    
    //鳳蝶
    var butterfly1:[Butterfly] = [Butterfly(name:"昇天鳳蝶",scientific:"Pazala eurous",image:"butterfly1",food:"樟科植物",description:"本種幼蟲以樟科植物，如土肉桂等為食，一年一世代，成蟲主要在春季活動。",location:"分布於全島低海拔到中海拔山區。"),
                                  Butterfly(name:"斑鳳蝶",scientific:"Papilio (Chilasa) agestor",image:"butterfly2",food:"木蘭科植物",description:"原產於印度次大陸的一種鳳蝶，屬於鳳蝶屬下的斑鳳蝶亞屬。數量不是很多，但也不被認為瀕臨絕種，只有在馬來半島被認為族群較為脆弱。。",location:"分布於巴基斯坦、緬甸、印度阿薩姆邦、尼泊爾、不丹、泰國、寮國、越南、中國中南部與馬來半島等地。"),
                                  Butterfly(name:"黃星斑鳳蝶",scientific:"Chilasa epycides",image:"butterfly3",food:"樟科植物",description:"中小型鳳蝶。軀體底色黑褐色，胸部有白色斑點; 腹部背面有兩列白點排成縱列，腹面有三列白點。前翅長而後翅圓。翅背面底色暗褐色，翅內側有黃白色或淺藍白色條紋，外側則有同色點列。後翅臀區有一橙黃色斑點。翅腹面底色較淺，前翅翅頂附近常有一片灰白色紋。",location:"在臺灣主要分布於臺灣本島低、中海拔山區。其他亞種分布於喜瑪拉雅、北印度、中南半島北部、華東、華南、華西等地區。"),
                                  Butterfly(name:"寬青帶鳳蝶",scientific:"Graphium cloanthus",image:"butterfly4",food:"樟科植物",description:"展翅寬50-60mm，翅膀表面黑色，前後翅中央具一條寬大的綠色斑紋連成帶狀，外觀近似青帶鳳蝶但本種帶狀斑紋較寬大，後翅亞外緣的斑紋為斑點非青帶鳳蝶的V字形斑紋 ，具尾突。",location:"本種分布於喜馬拉雅、中國華東、華南、華西、中南半島北部、蘇門答臘、台灣本島北部中低海拔山區。"),
                                  Butterfly(name:"青帶鳳蝶",scientific:"Graphium sarpedon connectens",image:"butterfly5",food:"樟科植物",description:"展翅50 - 60 mm，翅膀表面黑色，展翅時有一條水藍色的橫帶斑紋橫跨全翅，後翅近外緣有眉狀斑紋排列，尾突不明顯，翅腹面也有青帶斑紋但後翅近肛角區域具紅斑。",location:"本屬4種，本種又稱青鳳蝶，普遍分布於平地至低海拔山區。")]
    //蛺蝶
    var butterfly2:[Butterfly] = [Butterfly(name:"凱麗蛺蝶",scientific:"Nymphalis californica",image:"butterfly6",food:"朴樹、蒴蓮屬和青牛膽屬植物。",description:"大型蝴蝶，翼展約10厘米。",location:"熱帶地區的物種多樣性最高，然而溫帶和寒帶地區也有許多獨特的類群棲息。"),
                                  Butterfly(name:"召龍鳳蛺蝶",scientific:"Marpesia zerynthia",image:"butterfly7",food:"朴樹",description:"大型蝴蝶，翼展約10厘米。",location:"熱帶地區的物種多樣性最高，然而溫帶和寒帶地區也有許多獨特的類群棲息。"),
                                  Butterfly(name:"安娜渦蛺蝶",scientific:"Diaethria anna",image:"butterfly8",food:"朴樹",description:"後翅翅底有像數字「88」和「89」花紋，因此許多都俗稱作88蝶、89蝶和數字蝶。",location:"熱帶地區的物種多樣性最高，然而溫帶和寒帶地區也有許多獨特的類群棲息。"),
                                  Butterfly(name:"榮蛺蝶",scientific:"Doxocopa agathina",image:"butterfly9",food:"朴樹",description:"大型蝴蝶，翼展約10厘米。",location:"熱帶地區的物種多樣性最高，然而溫帶和寒帶地區也有許多獨特的類群棲息。"),
                                  Butterfly(name:"流星蛺蝶",scientific:"Dichorragia nesimachus formosanus",image:"butterfly10",food:"清風藤科的山豬肉、筆羅子、綠樟等植物。",description:"展翅58 - 69mm，翅膀表面藍黑色散佈白色斑點，近翅緣有一列倒 V字形的斑紋，後翅近外緣有一列黑色圓斑，翅腹面與翅面斑紋略同，雌、雄外觀近似但雌蝶翅膀稍圓。",location:"普遍分布於低海拔山區但數量不多。")]
    //三線蝶
    var butterflyName = ["寬帶三線蝶","平山三線蝶","黑三線蝶","白三線蝶","朝倉三線蝶"]
    var butterflyImage = ["butterfly11","butterfly12","butterfly13","butterfly14","butterfly15"]
    
    var butterfly3:[Butterfly] = [Butterfly(name:"寬帶三線蝶",scientific:"Athyma jina sauteri",image:"butterfly11",food:"青剛櫟",description:"中型蛺蝶。軀體背側黑褐色，腹部前端有一白環；腹側白色。複眼疏被毛。前翅直角三角形，外緣中央凹入。後翅橢圓形。翅背面底色黑褐色，有白色帶紋、條紋及斑點。前翅中室內有一白色棒狀紋。白色中央斑列弧形排列，其外側有數個小白紋。後翅內側與外側各有一白紋列，內側紋列帶狀，外側紋列為弧形排列之白斑。翅腹面底色紅褐色，翅背面也有白紋。前翅外側小白斑於R5室呈眼狀。沿翅外緣有白色短線列。後翅翅基處沿前緣有眉狀白紋。緣毛黑白相間。",location:"見於臺灣本島中海拔地帶。臺灣以外分布於華西、華南、喜瑪拉雅等地。"),
                                  Butterfly(name:"平山三線蝶",scientific:"Athyma opalina hirayamai ",image:"butterfly12",food:"葛藤",description:"(蛺蝶科)展翅 49 - 53 mm，翅膀表面褐色，前翅橫帶較細，末端於中室內的白斑區隔成四部分，最外端的白斑較大，翅腹面棕褐色，前翅腹面的橫帶末端具明顯的3枚分離的白斑，雌雄差異不大。本種又稱流帶蛺蝶，分布於中海拔山區，息量很少見。",location:"分布於中北部低海拔山區。"),
                                  Butterfly(name:"黑三線蝶",scientific:"Neptis nata lutatia",image:"butterfly13",food:"苧麻",description:"(蛺蝶科)展翅 45 - 55 mm，觸角黑色，端部黃褐色，翅膀表面黑褐色，展翅時有有3條白色橫帶，其中前翅的橫帶為近似種中最細，又稱細帶環蛺蝶，後翅有2條橫帶，翅腹面黑褐色也是近似種中最深。",location:"分布於低海拔山區。"),
                                  Butterfly(name:"白三線蝶",scientific:"Athyma perius",image:"butterfly14",food:"大戟科的菲律賓饅頭果、細葉饅頭果、披針葉饅頭果、裡白饅頭果等。",description:"偏好活動於向陽環境，山頂稜線或樹梢枝條處常見雄蝶占據的領域行為。",location:"分布於低海拔山區。"),
                                  Butterfly(name:"朝倉三線蝶",scientific:"Neptis hesione podarces",image:"butterfly15",food:"葛藤",description:"朝倉三線蝶，又稱花蓮三線蝶、齒紋環蛺蝶、蓮花環蛺蝶。中小型蝶種，雄蝶前翅長約28mm。",location:"分布於台灣中北部低至中海拔山區，族群數量不多。")]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ButterflyTableViewCell
        // Configure the cell...
        if number==1{
            selectButterfly = butterfly1[indexPath.row]
            //cell.nameLabel.text = butterfly1[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly1[indexPath.row].image)
            navigationItem.title = "鳳蝶科"
            navigationItem.backBarButtonItem?.title = "鳳蝶科"
        }
        else if number==2{
            selectButterfly = butterfly2[indexPath.row]
            //cell.nameLabel.text = butterfly2[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly2[indexPath.row].image)
            navigationItem.title = "弄蝶科"
            navigationItem.backBarButtonItem?.title = "弄蝶科"
        }
        else {
            selectButterfly = butterfly3[indexPath.row]
            //cell.nameLabel.text = butterfly3[indexPath.row].name
            //cell.ImageView.image = UIImage(named:butterfly3[indexPath.row].image)
            navigationItem.title = "灰蝶科"
            navigationItem.backBarButtonItem?.title = "灰蝶科"
        }
        cell.nameLabel.text = selectButterfly.name
        cell.ImageView.image = UIImage(named:selectButterfly.image)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showButterflyDetail"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! ButterflyDetailViewController
                if number==1{
                    destinationController.butterfly = butterfly1[indexPath.row]
                }
                else if number==2{
                    destinationController.butterfly = butterfly2[indexPath.row]
                }
                else {
                    destinationController.butterfly = butterfly3[indexPath.row]
                }
            }
        }
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
