//
//  PremiumClassView.swift
//  learningzilla
//
//  Created by miguel tomairo on 24/02/25.
//

import SwiftUI

struct PremiumClassView: View {
    
    let backgroundColors: [Color] = [
        Color.red.opacity(0.1),
        Color.blue.opacity(0.1),
        Color.green.opacity(0.1),
        Color.orange.opacity(0.1),
        Color.pink.opacity(0.1)
    ]
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.primary)
                            .frame(width: 36, height: 36)
                            .background(Color.white)
                            .cornerRadius(12)
                    }
                    
                    Spacer()
                    
                    Text("Premium clase")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Color.clear
                        .frame(width: 36, height: 36)
                }
                .padding(.horizontal)
                .padding(.top, 10)
                .padding(.bottom, 16)
                
                ScrollView {
                    VStack(spacing: 16) {
                        courseCard(
                            color: backgroundColors[0],
                            price: "$45.00",
                            teacher: "Clarot Yenefar",
                            title: "English spoken",
                            duration: "8h 30min",
                            lessons: "12 Lesson"
                        )
                        
                        courseCard(
                            color: backgroundColors[1],
                            price: "$45.00",
                            teacher: "Clarot Yenefar",
                            title: "English spoken",
                            duration: "8h 30min",
                            lessons: "12 Lesson",
                            imageName: "suit"
                        )
                        
                        courseCard(
                            color: backgroundColors[2],
                            price: "$45.00",
                            teacher: "Clarot Yenefar",
                            title: "English spoken",
                            duration: "8h 30min",
                            lessons: "12 Lesson",
                            imageName: "glasses"
                        )
                        
                        courseCard(
                            color: backgroundColors[3],
                            price: "$45.00",
                            teacher: "Clarot Yenefar",
                            title: "English spoken",
                            duration: "8h 30min",
                            lessons: "12 Lesson",
                            imageName: "glasses"
                        )
                        
                        courseCard(
                            color: backgroundColors[4],
                            price: "$45.00",
                            teacher: "Clarot Yenefar",
                            title: "English spoken",
                            duration: "8h 30min",
                            lessons: "12 Lesson",
                            imageName: "glasses"
                        )
                    }
                    .padding(.horizontal,20)
                    .padding(.bottom, 20)
                }
            }
        }
    }
    
    func courseCard(color: Color, price: String, teacher: String, title: String, duration: String, lessons: String, imageName: String = "casual") -> some View {
        VStack(alignment: .leading, spacing: 12) {
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerRadius: 16)
                    .fill(color)
                    .frame(height: 140)
                    .overlay(
                        teacherImage(for: imageName)
                    )
                
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: "bookmark.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.gray)
                            .padding(10)
                    }
                    Spacer()
                }
                
                Text(price)
                    .font(.headline)
                    .fontWeight(.bold)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
                    .offset(y: 15)
                    .padding(.trailing, 12)
            }
            
            HStack(spacing: 10) {
                Circle()
                    .fill(Color.gray.opacity(0.2))
                    .frame(width: 30, height: 30)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    )
                
                Text(teacher)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 16) {
                HStack(spacing: 6) {
                    Image(systemName: "clock")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    
                    Text(duration)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                HStack(spacing: 6) {
                    Image(systemName: "play.circle")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    
                    Text(lessons)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.bottom, 10)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
    
    func teacherImage(for imageName: String) -> some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 60, height: 60)
            .offset(x: -50, y: 30)
    }
}

#Preview {
    PremiumClassView()
}
