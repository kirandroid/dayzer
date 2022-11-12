//
//  connection_response.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//


struct ConnectionResponse{
    var name: String
    var image: String
    var isActive: Bool
    
    static var listOfConnection : [ConnectionResponse] =
    
    [
        ConnectionResponse(name: "1", image: "https://randomuser.me/api/portraits/men/73.jpg", isActive: true),
        ConnectionResponse(name: "2", image: "https://randomuser.me/api/portraits/men/78.jpg", isActive: false),
        ConnectionResponse(name: "3", image: "https://randomuser.me/api/portraits/men/45.jpg", isActive: true),
        ConnectionResponse(name: "4", image: "https://randomuser.me/api/portraits/men/25.jpg", isActive: false),
        ConnectionResponse(name: "5", image: "https://randomuser.me/api/portraits/men/65.jpg", isActive: true),
        ConnectionResponse(name: "6", image: "https://randomuser.me/api/portraits/men/15.jpg", isActive: false),
        ConnectionResponse(name: "7", image: "https://randomuser.me/api/portraits/men/95.jpg", isActive: false),
        ConnectionResponse(name: "8", image: "https://randomuser.me/api/portraits/men/85.jpg", isActive: false),
        ConnectionResponse(name: "8", image: "https://randomuser.me/api/portraits/men/35.jpg", isActive: false)
        
    ]
}
