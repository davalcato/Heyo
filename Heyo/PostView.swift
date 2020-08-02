//
//  PostView.swift
//  Heyo
//
//  Created by Daval Cato on 8/2/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI

struct PostView : View {
    
    var postData : Post
    @State var comment = ""
    
    var body: some View{
        
        VStack(alignment: .leading){
            
            HStack(spacing: 12){
                
                Image(self.postData.profile)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text(self.postData.user)
                    
                    Text(self.postData.time)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }) {
                    
                    Image("menu")
                    .resizable()
                    .frame(width: 22, height: 22)
                    .foregroundColor(.gray)
                }
            }
            
            Image(self.postData.postImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 280)
                .cornerRadius(10)
                .padding(.vertical, 10)
            
            HStack(spacing: 20){
                
                Button(action: {
                    
                }) {
                    
                    Image(systemName: "suit.heart.fill")
                        .font(.system(size: 24))
                        .foregroundColor(self.postData.liked ? .red : .gray)
                }
                
                Button(action: {
                    
                }) {
                    
                    Image("send")
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }) {
                    
                    Image("save")
                    .resizable()
                    .frame(width: 18, height: 22)
                    .foregroundColor(.gray)
                }
            }
            
            Text(self.postData.likes + " likes")
            
            Text(self.postData.postTitle)
                .padding(.top, 5)
            
            Button(action: {
                
            }) {
                
                Text("View all 133 comments")
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 10)
            
            HStack(spacing: 15){
                
                TextField("Add a comment", text: self.$comment)
                    .font(.system(size: 12))
                
                Button(action: {
                    
                    
                }) {
                    
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            .padding(.vertical,6)
            .background(Capsule().stroke(Color.gray, lineWidth: 1))
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

