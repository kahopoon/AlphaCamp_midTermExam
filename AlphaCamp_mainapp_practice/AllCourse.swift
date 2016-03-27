//
//  AllCourse.swift
//  AlphaCamp_mainapp_practice
//
//  Created by Ka Ho on 25/3/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import Foundation

class AllCourse {
    var arrayCourse:[Course] = []
    
    init() {
        let course1: Course = Course()
        course1.coverImageName = "course1"
        course1.courseName = "Startup 必學的募資簡報課程 ─ 教你抓住創投的心"
        course1.courseDate = "開課日期：2015/11/12"
        course1.courseDetail = "募資簡報涉及資金是否投入一個新創團隊起頭，需要多面向的將產品/服務核心價值展現出來，此外，國外募資已興盛多年，均已有累積多時的募資簡報架構，並非一般簡報講師可以進行教學。如果你想精進自己的簡報能力，將自己想表達的事情以更打動人心的方式清楚呈現，歡迎來這堂募資簡報課程!"
        
        let course2: Course = Course()
        course2.coverImageName = "course2"
        course2.courseName = "Lean UX VS. Design Thinking"
        course2.courseDate = "開課日期：2015/11/21"
        course2.courseDetail = "Lean UX  VS. Design Thinking\n個人與團隊，如何更有效率與準確地打造創新的產品或服務？\n以使用者為導向的設計該從哪裡開始？\n運用精實設計，系統性地推動原型製作、實驗與洞察能力，讓創新的方向與設計成果，能夠不斷進化，體現在使用者介面上。\n不只是在視覺設計上做到好看，還要教你如何在使用者體驗的深度上，做到符合使用者需求、情境、任務，這才是好的UI Design."
        
        let course3: Course = Course()
        course3.coverImageName = "course3"
        course3.courseName = "新創團隊不可不知的影音內容製作心法"
        course3.courseDate = "開課日期：2016/04/13"
        course3.courseDetail = "身為資源有限的新創團隊，你知道影音內容在數位行銷的重要性，卻不知該如何評估製作預算和專案流程？ 你想要自己試著拍攝，卻不知該從何開始嗎？ALPHA Camp 特地邀請到有豐富拍攝及製作經驗的旅澳導演David LEE，教你快速了解並思考如何踏出內容影音製作的第一步!"
        
        let course4: Course = Course()
        course4.coverImageName = "course4"
        course4.courseName = "成為頂尖軟體開發者：產品開發與團隊溝通實務"
        course4.courseDate = "開課日期：2016/04/16"
        course4.courseDetail = "要成為頂尖開發者，除了不斷提升程式專業技能之外，更要瞭解如何參與團隊運作，並透過對的方法與工具，達到 1+1 大於 2 的產品開發、團隊合作功效。本次邀請到多位擁有豐富 startup 產品開發經驗的講師，以及 Google 資深工程師，帶領大家更上一層樓！"
        
        arrayCourse = [course1, course2, course3, course4]
    }
}