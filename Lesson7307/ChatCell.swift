//
//  ChatCell.swift
//  Lesson7307
//
//  Created by User on 4/21/22.
//

import UIKit

class ChatCell: UITableViewCell {

    lazy var chatImage: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 100 / 2
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var chatName: UILabel = {
        let view = UILabel()
        return view
    }()
    
    lazy var lastMessage: UILabel = {
        let view = UILabel()
        return view
    }()
    

    override func layoutSubviews() {
        addSubview(chatImage)
        
        contentView.backgroundColor = .orange
        
        chatImage.translatesAutoresizingMaskIntoConstraints = false
        chatImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
        chatImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        chatImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        chatImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        addSubview(chatName)
        chatName.translatesAutoresizingMaskIntoConstraints = false
        chatName.leadingAnchor.constraint(equalTo: chatImage.trailingAnchor, constant: 20).isActive = true
        chatName.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        chatName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        
        addSubview(lastMessage)
        lastMessage.translatesAutoresizingMaskIntoConstraints = false
        lastMessage.leadingAnchor.constraint(equalTo: chatImage.trailingAnchor, constant: 20).isActive = true
        lastMessage.topAnchor.constraint(equalTo: chatName.bottomAnchor, constant: 10).isActive = true
    }
}
