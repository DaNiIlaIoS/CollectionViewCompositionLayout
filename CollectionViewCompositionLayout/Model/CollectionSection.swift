//
//  CollectionSection.swift
//  CollectionViewCompositionLayout
//
//  Created by Даниил Сивожелезов on 14.07.2024.
//

import Foundation

struct CollectionSection: Identifiable {
    let id: String = UUID().uuidString
    let header: String
    let items: [CollectionItem]
    
    static func mockData() -> [CollectionSection] {
        let storyItems = [CollectionItem(image: "story1", name: "Name 1"),
                          CollectionItem(image: "story2", name: "Name 2"),
                          CollectionItem(image: "story3", name: "Name 3"),
                          CollectionItem(image: "story4", name: "Name 4"),
                          CollectionItem(image: "story5", name: "Name 5")]
        
        let messageItems = [CollectionItem(image: "story1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                            CollectionItem(image: "story2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                            CollectionItem(image: "story3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                            CollectionItem(image: "story4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                            CollectionItem(image: "story5", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit")]
        
        let newsItems = [CollectionItem(image: "news1", header: "Заголовок 1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                         CollectionItem(image: "news2", header: "Заголовок 2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
                         CollectionItem(image: "news3", header: "Заголовок 3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit")]
        
        let bannersItems = [CollectionItem(image: "banner1"),
                            CollectionItem(image: "banner2"),
                            CollectionItem(image: "banner3"),]
        
        let storySection = CollectionSection(header: "Stories", items: storyItems)
        let messageSection = CollectionSection(header: "Messages", items: messageItems)
        let newsSection = CollectionSection(header: "News", items: newsItems)
        let bannerSection = CollectionSection(header: "Banners", items: bannersItems)
        
        return [storySection, messageSection, newsSection, bannerSection]
    }
}
