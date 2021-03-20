//
//  ViewController.swift
//  ChartingApp
//
//  Created by Tick1 on 3/20/21.
//

import UIKit
import Charts
import TinyConstraints

class ViewController: UIViewController, ChartViewDelegate {

    lazy var lineChartView: LineChartView = {
        let chartView = LineChartView()
        return chartView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(lineChartView)
        
        lineChartView.centerInSuperview()
        lineChartView.width(to: view)
        lineChartView.heightToWidth(of: view)
        
        setData()
    }
    
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        print(entry)
    }
    
    func setData(){
        let set1 = LineChartDataSet( entries: yValues, label:"Temperature")
        let data = LineChartData(dataSet:set1)
        lineChartView.data = data
    }
    
    let yValues: [ChartDataEntry] = [
        ChartDataEntry(x:0.0, y:23.0),
        ChartDataEntry(x:1.0, y:4.3),
        ChartDataEntry(x:2.0, y:10.0),
        ChartDataEntry(x:3.0, y:12.0),
        ChartDataEntry(x:4.0, y:4.0),
        ChartDataEntry(x:5.0, y:15.0)
    ]

}

