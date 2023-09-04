//
//  LaundrySign.swift
//  WashMe
//
//  Created by Gleb on 19.08.2023.
//

import Foundation
import UIKit
import Rswift

struct Sign {
    
    let name: String!
    let icon: UIImage!
    let category: String!
}

var ironingArray: [Sign] {
      return laundrySigns.filter { $0.category == "Ironing" }
  }
  
  var washingArray: [Sign] {
      return laundrySigns.filter { $0.category == "Washing" }
  }
  
  var bleachingArray: [Sign] {
      return laundrySigns.filter { $0.category == "Bleaching" }
  }
  
  var cleaningArray: [Sign] {
      return laundrySigns.filter { $0.category == "Cleaning" }
  }
  
  var dryingArray: [Sign] {
      return laundrySigns.filter { $0.category == "Drying" }
  }


let laundrySigns: [Sign] = [
    Sign(name:"Bleach", icon: R.image.bleach(),category: "Bleaching"),
    Sign(name:"Chlorine Bleach", icon: R.image.chlorineBeach(),category: "Bleaching"),
    Sign(name:"Do Not Bleach", icon: R.image.doNotBleach(),category: "Bleaching"),
    Sign(name:"Do Not Bleach", icon: R.image.doNotBleach2(),category: "Bleaching"),
    Sign(name:"Do Not Dry", icon: R.image.doNotDry(),category: "Drying"),
    Sign(name:"Do Not Dry Clean", icon: R.image.doNotDryClean(),category: "Cleaning"),
    Sign(name:"Do Not Iron" , icon: R.image.doNotIron(),category: "Ironing"),
    Sign(name:"Do Not Steam" , icon: R.image.doNotSteam(),category: "Cleaning"),
    Sign(name:"Do Not Tumble Dry" , icon: R.image.doNotTumbleDry(),category: "Drying"),
    Sign(name:"Do Not Wash" , icon: R.image.doNotWash(),category: "Washing"),
    Sign(name:"Do Not Wet Clean" , icon: R.image.doNotWetClean(),category: "Cleaning"),
    Sign(name:"Do Not Wring" , icon: R.image.doNotWring(),category: "Drying"),
    Sign(name:"Drip Dry" , icon: R.image.dripDry(),category: "Drying"),
    Sign(name:"Drip Dry In Shade" , icon: R.image.dripDryInShade(),category: "Drying"),
    Sign(name:"Dry Clean" , icon: R.image.dryClean(),category: "Cleaning"),
    Sign(name:"Dry Clean Any Solvent" , icon: R.image.dryCleanAnySolvent(),category: "Cleaning"),
    Sign(name:"Dry Clean Hydrocarbon Solvent Only" , icon: R.image.dryCleanHydrocarbonSolventOnly(),category: "Cleaning"),
    Sign(name:"Dry Clean Low Heat" , icon: R.image.dryCleanLowHeat(),category: "Cleaning"),
    Sign(name:"Dry Clean No Heat" , icon: R.image.dryCleanNoHeat(),category: "Cleaning"),
    Sign(name:"Dry Clean Reduced Moisture" , icon: R.image.dryCleanReducedMoisture(),category: "Cleaning"),
    Sign(name:"Dry Clean Short Cycle" , icon: R.image.dryCleanShortCycle(),category: "Cleaning"),
    Sign(name:"Dry Clean with PCE" , icon: R.image.dryCleanWithPCE(),category: "Cleaning"),
    Sign(name:"Dry Flat" , icon: R.image.dryFlat(),category: "Drying"),
    Sign(name:"Dry Flat in Shade" , icon: R.image.dryFlatInShade(),category: "Drying"),
    Sign(name:"Gentle Dry Clean Hydrocarbon Solvent Only", icon: R.image.gentleDryCleanHydrocarbonSolventOnly(),category: "Cleaning"),
    Sign(name:"Gentle Dry Clean with PCE" , icon: R.image.gentleDryCleanWithPCE(),category: "Cleaning"),
    Sign(name:"Gentle Wet Clean" , icon: R.image.gentleWetClean(),category: "Cleaning"),
    Sign(name:"Hand Wash" , icon: R.image.handWash(),category: "Cleaning"),
    Sign(name:"Iron" , icon: R.image.iron(),category: "Ironing"),
    Sign(name:"Iron High Temp" , icon: R.image.ironHighTemp(),category: "Ironing"),
    Sign(name:"Iron Low Temp" , icon: R.image.ironLowTemp(),category: "Ironing"),
    Sign(name:"Iron Medium Temp" , icon: R.image.ironMediumTemp(),category: "Ironing"),
    Sign(name:"Line Dry" , icon: R.image.lineDry(),category: "Drying"),
    Sign(name:"Line Dry in Shade" , icon: R.image.lineDryInShade(),category: "Drying"),
    Sign(name:"Machine Wash Gentle Cycle" , icon: R.image.machineWashGentleCycle(),category: "Washing"),
    Sign(name:"Machine Wash Permanent Press", icon: R.image.machineWashPermanentPress(),category: "Washing"),
    Sign(name:"Natural Dry" , icon: R.image.naturalDry(),category: "Drying"),
    Sign(name:"Non Chlorine Bleach" , icon: R.image.nonChlorineBleach(),category: "Bleaching"),
    Sign(name:"Non Chlorine Bleach" , icon: R.image.nonChlorineBleach2(),category: "Bleaching"),
    Sign(name:"Shade Dry", icon: R.image.shadeDry(),category: "Drying"),
    Sign(name:"Steam" , icon: R.image.steam(),category: "Cleaning"),
    Sign(name:"Tumble Dry Gentle" , icon: R.image.tumbleDryGentle(),category: "Drying"),
    Sign(name:"Tumble Dry High Heat" , icon: R.image.tumbleDryHighHeat(),category: "Drying"),
    Sign(name:"Tumble Dry Low Heat" , icon: R.image.tumbleDryLowHeat(),category: "Drying"),
    Sign(name:"Tumble Dry Medium Heat" , icon: R.image.tumbleDryMediumHeat(),category: "Drying"),
    Sign(name:"Tumble Dry No Heat" , icon: R.image.tumbleDryNoHeat(),category: "Drying"),
    Sign(name:"Tumble Dry Normal" , icon: R.image.tumbleDryNormal(),category: "Drying"),
    Sign(name:"Tumble Dry Very Gentle" , icon: R.image.tumbleDryVeryGentle(),category: "Drying"),
    Sign(name:"Very Gentle Dry Clean with PCE", icon: R.image.veryGentleDryCleanWithPCE(),category: "Cleaning"),
    Sign(name:"Very Gentle Wet Clean" , icon: R.image.veryGentleWetClean(),category: "Cleaning"),
    Sign(name:"Wash at or below 30" , icon: R.image.washAtOrBelow30(),category: "Washing"),
    Sign(name:"Wash at or below 40"  , icon: R.image.washAtOrBelow40(),category: "Washing"),
    Sign(name:"Wash at or below 50"  , icon: R.image.washAtOrBelow50(),category: "Washing"),
    Sign(name:"Wash at or below 60"  , icon: R.image.washAtOrBelow60(),category: "Washing"),
    Sign(name:"Wash at or below 70"  , icon: R.image.washAtOrBelow70(),category: "Washing"),
    Sign(name:"Wash at or below 95"  , icon: R.image.washAtOrBelow95(),category: "Washing"),
    Sign(name:"Washing" , icon: R.image.washing(),category: "Washing"),
    Sign(name:"Wet Clean", icon: R.image.wetClean(),category: "Cleaning"),
    Sign(name:"Wring" , icon: R.image.wring(),category: "Drying")
]



