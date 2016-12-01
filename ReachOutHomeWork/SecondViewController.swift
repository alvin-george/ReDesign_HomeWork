//
//  SecondViewController.swift
//  ReachOutHomeWork
//
//  Created by Alvin George on 11/29/16.
//  Copyright © 2016 Alvin George. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var workOrderDetailTableView: UITableView!

    //CustomCells
    var totalNumberOfRows:Int?
    var CellIdentifier: String = ""
    var cell:UITableViewCell?
    var tjsonstring : String!
    var isFormDownload:Bool = false
    var Timestamp: String {
        return "\(NSDate().timeIntervalSince1970 * 1000)"
    }
    var selectedIndexpath =   NSIndexPath(forRow: 0, inSection: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.workOrderDetailTableView.estimatedRowHeight = 600.0
        self.workOrderDetailTableView.rowHeight = UITableViewAutomaticDimension

    }
    
    //MARK:- TableView DataSource and Delegate

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        self.workOrderDetailTableView.estimatedRowHeight = 400.0


        if(indexPath.section == 0)
        {
            self.workOrderDetailTableView.rowHeight = 80
        }

        if(indexPath.section == 1)
        {
            self.workOrderDetailTableView.rowHeight = UITableViewAutomaticDimension
        }
        else if (indexPath.section == 2 ){
            //contact title cell
            self.workOrderDetailTableView.rowHeight =  35
        }
        else if (indexPath.section == 3 ){
            //contact list cell
            self.workOrderDetailTableView.rowHeight =  22
        }
        else if (indexPath.section == 4 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  50
        }
        else if (indexPath.section == 5 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  90
        }
        else if (indexPath.section == 6 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  UITableViewAutomaticDimension
        }
        else if (indexPath.section == 7 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  70
        }
        else if (indexPath.section == 8 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  UITableViewAutomaticDimension
        }
        else if (indexPath.section == 9 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  70
        }
        else if (indexPath.section == 10 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  60
        }
        else if (indexPath.section == 11 ){
            //organization Title Cell
            self.workOrderDetailTableView.rowHeight =  140
        }
        else{
            //self.workOrderDetailTableView.rowHeight =  UITableViewAutomaticDimension
        }
        return self.workOrderDetailTableView.rowHeight
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 12

    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if(section == 0){
            self.totalNumberOfRows = 1
        }
        if(section == 1){
            self.totalNumberOfRows = 1
        }
        if(section == 2){
            self.totalNumberOfRows = 1
        }
        if(section == 3){
            self.totalNumberOfRows = 1
        }
        if(section == 4){
            self.totalNumberOfRows = 4
        }
        if(section == 5){
            self.totalNumberOfRows = 1
        }
        if(section == 6){
            self.totalNumberOfRows = 1
        }
        if(section == 7){
            self.totalNumberOfRows = 1
        }
        if(section == 8){
            self.totalNumberOfRows = 1
        }
        if(section == 9){
            self.totalNumberOfRows = 2
        }
        if(section == 10){
            self.totalNumberOfRows = 3
        }
        if(section == 11){
            self.totalNumberOfRows = 1
        }

        return self.totalNumberOfRows!
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if (indexPath.section == 0)
        {
            CellIdentifier = "workOrderDetailCell"

            var cell :WorkOrderDetailCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderDetailCell
            cell.workOrdersubTitleLabel.text = "Electrical Maintenance and Repair"
            cell.workOrdersubTitleLabel.sizeToFit()

            cell.workOrderStatuslabel.layer.masksToBounds = true
            cell.workOrderStatuslabel.sizeToFit()
            cell.workOrderStatuslabel.layer.cornerRadius =  5.0
            return cell
        }
        else if(indexPath.section == 1)
        {

            CellIdentifier = "workOrderMapTableCell"

            var cell: WorkOrderMapTableViewCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderMapTableViewCell
            cell.locationDistanceLabel.text = "Distance not available"

            cell.workOrderDetailMapView.frame.size.height = UIScreen.mainScreen().bounds.size.height/2.5
            return cell
        }
        else if(indexPath.section == 2)
        {

            CellIdentifier = "workOrderOraganizationTitleCell"

            var cell :WorkOrderOrganizationTitleCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderOrganizationTitleCell
            return cell

        }
        else if(indexPath.section == 3)
        {

            CellIdentifier = "workOrderContactTitleCellID"

            var cell: WorkOrderContactTitleCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderContactTitleCell

            return cell

        }
        else if (indexPath.section == 4)
        {

            CellIdentifier = "workOrderContactTableCell"

            var cell :WorkOrderContactTableViewCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderContactTableViewCell
            cell.contactNameLabel.text = "John James"
            cell.contactCallButton?.layer.setValue(indexPath, forKey: "index")
            cell.messageButton?.layer.setValue(indexPath, forKey: "index")

            return cell

        }
        else if (indexPath.section == 5)
        {
            CellIdentifier = "workOrderDateCell"

            var cell :WorkOrderDateCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderDateCell
            return cell
        }
        else if (indexPath.section == 6)
        {
            CellIdentifier = "workOrderInstructionCellID"

            var cell :WorkOrderInstructionsCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderInstructionsCell
            return cell
        }
        else if (indexPath.section == 7)
        {
            CellIdentifier = "workOrderPackageTItleCell"

            var cell :WorkOrderPackageTitleCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderPackageTitleCell
            return cell
        }
        else if (indexPath.section == 8)
        {
            CellIdentifier = "workOrderCheckInOutCell"

            var cell :WorkOrderCheckInOutCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderCheckInOutCell
            return cell
        }
        else if (indexPath.section == 9)
        {
            CellIdentifier = "workOrderFormsCell"

            var cell :WorkOrderFormsCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderFormsCell
            return cell
        }
        else if (indexPath.section == 10)
        {
            CellIdentifier = "workOrderAddEstimateCell"

            var cell :WorkOrderAddEstimateCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderAddEstimateCell
            
            cell.addItemView.layer.masksToBounds =  true
            cell.addItemView.layer.cornerRadius = 5.0

            return cell
        }
        else if (indexPath.section == 11)
        {
            CellIdentifier = "workOrderCustomerSignatureCell"

            var cell :WorkOrderCustomerSignatureCell
            cell =  tableView.dequeueReusableCellWithIdentifier(CellIdentifier) as! WorkOrderCustomerSignatureCell
            return cell
        }

        else {
            
            let cell: UITableViewCell = UITableViewCell()
            return cell
        }
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
