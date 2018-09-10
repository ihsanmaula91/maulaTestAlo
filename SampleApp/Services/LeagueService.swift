//
//  LeagueService.swift
//  SampleApp
//
//  Created by ihsanmaul on 9/10/18.
//  Copyright © 2018 MyMacbook. All rights reserved.
//

import UIKit
import ObjectMapper

struct LeagueService {
    
    func getLeagueDetail(leagueId: String) -> LeagueDetailModel {
        let jsonMock = Utility.fetchMockJsonForThe("league\(leagueId)")
        let leagueDetailModel = Mapper<LeagueDetailModel>().map(JSON: jsonMock as! [String : Any])
        return leagueDetailModel!
    }
}
