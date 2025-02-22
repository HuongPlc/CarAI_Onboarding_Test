//
//  Enum.swift
//  CalAI
//
//  Created by Hanh Nguyen Xuan on 21/02/2025.
//

import Foundation
import SwiftUI

enum TimePeriodNutrition: String, CaseIterable {
    case thisWeek = "This week"
    case lastWeek = "Last week"
    case twoWeeksAgo = "2 wks. ago"
    case threeWeeksAgo = "3 wks. ago"
}

enum TimePeriod: String, CaseIterable {
    case days90 = "90 Days"
    case months6 = "6 Months"
    case year1 = "1 Year"
    case allTime = "All time"
}

enum TrackingType: Int, CaseIterable {
    case chooseTheGender
    case numberWorkoutPerWeek
    case hearUsFromSocial
    case triedOtherCalorieTrackingApp
    case createLongTermResult
    case heightAndWeight
    case birthday
    case yourGoal
    case loseWeight
    case losingWeight
    case loseWeighPerWeekSpeed
    case loseTwiceWithCalAI
    case whatStoppingYouReaching
    case doYouFollowASpecificDiet
    case whatWouldYouLikeToAccomplish
    case youHaveToGreatPotential
    case giveUsRate
    case doYouHaveReferralCode
    case allDone
    case settingUpForYou
    case congratulations
    
    var title: String {
        switch self {
        case .chooseTheGender:
            return "Choose your Gender"
        case .numberWorkoutPerWeek:
            return "How many workouts do you do per week?"
        case .hearUsFromSocial:
            return "Where did you hear about us?"
        case .triedOtherCalorieTrackingApp:
            return "Have you tried other calorie tracking apps?"
        case .createLongTermResult:
            return "Cal AI creates long-term results"
        case .heightAndWeight:
            return "Height & weight"
        case .birthday:
            return "When were you born?"
        case .yourGoal:
            return "What is your goal"
        case .loseWeight:
            return "What is your desired weight?"
        case .losingWeight:
            return "Gaining 8.6 lbs is a realistic target. It's not hard at all!"
        case .loseWeighPerWeekSpeed:
            return "How fast do you want to reach your goal?"
        case .loseTwiceWithCalAI:
            return "Gain twice as much weight with Cal AI vs on your own"
        case .whatStoppingYouReaching:
            return "What's stopping you from reaching your weight?"
        case .doYouFollowASpecificDiet:
            return "Do you follow a specific diet?"
        case .whatWouldYouLikeToAccomplish:
            return "What would you like to accomplish?"
        case .youHaveToGreatPotential:
            return "You have great potential to crush..."
        case .giveUsRate:
            return "Give us a rating"
        case .doYouHaveReferralCode:
            return "Do you have a referral code?"
        case .allDone:
            return "All done!"
        case .settingUpForYou:
            return "We're setting everything up for you"
        case .congratulations:
            return "Congratulations your custom plan is ready!"
        }
    }
    
    var subTitle: String {
        switch self {
        case .chooseTheGender:
            return "This will be used to calibrate your\ncustom plan."
        case .numberWorkoutPerWeek:
            return "This will be used to calibrate your\ncustom plan."
        case .hearUsFromSocial:
            return ""
        case .triedOtherCalorieTrackingApp:
            return ""
        case .createLongTermResult:
            return ""
        case .heightAndWeight:
            return "This will be used to calibrate your\ncustom plan."
        case .birthday:
            return "This will be used to calibrate your\ncustom plan."
        case .yourGoal:
            return "This helps us generate a plan for your calorie intake"
        case .loseWeight:
            return ""
        case .losingWeight:
            return ""
        case .loseWeighPerWeekSpeed:
            return ""
        case .loseTwiceWithCalAI:
            return ""
        case .whatStoppingYouReaching:
            return ""
        case .doYouFollowASpecificDiet:
            return ""
        case .whatWouldYouLikeToAccomplish:
            return ""
        case .youHaveToGreatPotential:
            return ""
        case .giveUsRate:
            return ""
        case .doYouHaveReferralCode:
            return "You can skip this step"
        case .allDone:
            return ""
        case .settingUpForYou:
            return ""
        case .congratulations:
            return ""
        }
    }
    
    var trackingItems: [TrackingItemModel] {
        switch self {
        case .chooseTheGender:
            return [TrackingItemModel(title: "Male"), TrackingItemModel(title: "Female"), TrackingItemModel(title: "Other")]
        case .numberWorkoutPerWeek:
            return [TrackingItemModel(icon: Image(systemName: "circle.fill"), title: "0-2", subTitle: "Workouts now and then"),
                    TrackingItemModel(icon: Image(systemName: "circle.fill"), title: "3-5", subTitle: "A few workouts per week"),
                    TrackingItemModel(icon: Image(systemName: "circle.fill"), title: "6+", subTitle: "Dedicated athlete")]
        case .hearUsFromSocial:
            return [TrackingItemModel(icon: Image(.instagram), title: "Instagram"),
                    TrackingItemModel(icon: Image(.facebook), title: "Facebook"),
                    TrackingItemModel(icon: Image(.tiktok), title: "Tiktok"),
                    TrackingItemModel(icon: Image(.youtube), title: "Youtube"),
                    TrackingItemModel(icon: Image(.google), title: "Google"),
                    TrackingItemModel(icon: Image(.tv), title: "TV"),
                    TrackingItemModel(icon: Image(.friends), title: "Friend or family"),
                    TrackingItemModel(icon: Image(.other), title: "Other")]
        case .triedOtherCalorieTrackingApp:
            return [TrackingItemModel(icon: Image(.dislike), title: "No"),
                    TrackingItemModel(icon: Image(.like), title: "Yes")]
        case .createLongTermResult:
            return []
        case .heightAndWeight:
            return []
        case .birthday:
            return []
        case .yourGoal:
            return [TrackingItemModel(title: "Lose weight"), TrackingItemModel(title: "Maintain"), TrackingItemModel(title: "Gain weight")]
        case .loseWeight:
            return []
        case .losingWeight:
            return []
        case .loseWeighPerWeekSpeed:
            return []
        case .loseTwiceWithCalAI:
            return []
        case .whatStoppingYouReaching:
            return [TrackingItemModel(icon: Image(.chart), title: "Lack of consistency"),
                    TrackingItemModel(icon: Image(.chart), title: "Unhealthy eating habits"),
                    TrackingItemModel(icon: Image(.chart), title: "Lack of support"),
                    TrackingItemModel(icon: Image(.chart), title: "Busy schedule"),
                    TrackingItemModel(icon: Image(.chart), title: "Lack of meal inspiration")]
        case .doYouFollowASpecificDiet:
            return [TrackingItemModel(icon: Image(.chickenLeg), title: "Classic"),
                    TrackingItemModel(icon: Image(.chickenLeg), title: "Pescatarian"),
                    TrackingItemModel(icon: Image(.chickenLeg), title: "Vegetarian"),
                    TrackingItemModel(icon: Image(.chickenLeg), title: "Vegan")]
        case .whatWouldYouLikeToAccomplish:
            return [TrackingItemModel(icon: Image(.appleBlack), title: "Eat and live healthier"),
                    TrackingItemModel(icon: Image(.appleBlack), title: "Boost my energy and mood"),
                    TrackingItemModel(icon: Image(.appleBlack), title: "Stay motivated and consistent"),
                    TrackingItemModel(icon: Image(.appleBlack), title: "Feel better about my body")]
        case .youHaveToGreatPotential:
            return []
        case .giveUsRate:
            return []
        case .doYouHaveReferralCode:
            return []
        case .allDone:
            return []
        case .settingUpForYou:
            return []
        case .congratulations:
            return []
        }
    }
}

enum LanguageType: String, CaseIterable {
    case english = "EN"
    case espanol = "ES"
    case china = "CH"
    case portugues = "PT"
    case france = "FR"
    case deutsch = "DE"
    case italy = "IT"
    case romani = "RO"
    
    var title: String {
        switch self {
        case .english:
            return "English"
        case .espanol:
            return "Español"
        case .china:
            return "中國人"
        case .portugues:
            return "Portugués"
        case .france:
            return "Français"
        case .deutsch:
            return "Deutsch"
        case .italy:
            return "Italiano"
        case .romani:
            return "Română"
        }
    }
    
    var resource: ImageResource {
        switch self {
        case .english:
            return .english
        case .espanol:
            return .espanol
        case .china:
            return .china
        case .portugues:
            return .brazil
        case .france:
            return .france
        case .deutsch:
            return .german
        case .italy:
            return .italy
        case .romani:
            return .romania
        }
    }
}
