//
//  ViewController.swift
//  sqlliteDemo
//
//  Created by xue lin on 2020/1/7.
//  Copyright © 2020 xue lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //数据库声明
    var database:Database!
    override func viewDidLoad() {
        super.viewDidLoad()
        //与数据库建立连接
        database = Database()
        //建立列表（有列表后不再建立）
        database.tableLampCreate()
        //插入两条数据
        database.tableLampInsertItem(address: 51, name: "灯光1", colorValue: "红色", lampType: 0)
        database.tableLampInsertItem(address: 52, name: "灯光2", colorValue: "绿色", lampType: 1)
        //遍历列表（检查插入结果）
        database.queryTableLamp()
        //根据条件查询
        database.readTableLampItem(address: 52)
        //修改列表项（更新列表）
        database.tableLampUpdateItem(address: 51, newName: "灯光1更改了")
        //遍历列表（查询修改结果）
        database.queryTableLamp()
        //删除列表项
        database.tableLampDeleteItem(address: 51)
        //遍历列表（检查删除结果）
        database.queryTableLamp()
        
        
        
    }


}

