//
//  HomeView.swift
//  learningzilla
//
//  Created by miguel tomairo on 24/02/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            // Main content with scroll
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Welcome")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            HStack(spacing: 6) {
                                Text("Harry!")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Image(systemName: "hand.wave.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                        
                        Spacer()
                        
                        // Search button
                        Circle()
                            .fill(Color(.systemGray6))
                            .frame(width: 40, height: 40)
                            .overlay(
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.primary)
                            )
                        
                        // Profile image
                        Circle()
                            .fill(Color(.systemGray4))
                            .frame(width: 40, height: 40)
                            .overlay(
                                Image(systemName: "person.fill")
                                    .foregroundColor(.white)
                            )
                    }
                    .padding(.horizontal)
                    
                    // Math class card
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color(.systemIndigo).opacity(0.2))
                        
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "graduationcap.fill")
                                    .foregroundColor(.secondary)
                                
                                Text("Math class")
                                    .font(.headline)
                                    .foregroundColor(.secondary)
                                
                                Spacer()
                                
                                HStack(spacing: 2) {
                                    Text("23")
                                    Text(":")
                                    Text("16")
                                    Text(":")
                                    Text("39")
                                }
                                .font(.subheadline)
                                .fontWeight(.medium)
                            }
                            
                            Text("starting soon")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            HStack(spacing: -5) {
                                ForEach(0..<4) { i in
                                    Circle()
                                        .fill(Color(.systemYellow))
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Image(systemName: "person.fill")
                                                .foregroundColor(.white)
                                                .font(.system(size: 12))
                                        )
                                        .offset(x: CGFloat(i * 5))
                                }
                                
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width: 30, height: 30)
                                    .overlay(
                                        Text("+5")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                    )
                                    .offset(x: 15)
                                
                                Spacer()
                                
                                Button(action: {}) {
                                    Text("Join class")
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(Color.orange)
                                        .cornerRadius(12)
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(height: 180)
                    .padding(.horizontal)
                    
                    // Today's class section
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Today's Class")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                // Biology class 1
                                VStack(alignment: .leading, spacing: 8) {
                                    ZStack(alignment: .topLeading) {
                                        Rectangle()
                                            .fill(Color.yellow.opacity(0.3))
                                            .frame(width: 160, height: 100)
                                            .cornerRadius(12)
                                        
                                        HStack {
                                            Circle()
                                                .fill(Color.red)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("Live")
                                                .font(.caption)
                                                .fontWeight(.medium)
                                        }
                                        .padding(8)
                                    }
                                    
                                    Text("Biology")
                                        .font(.headline)
                                    
                                    HStack {
                                        Image(systemName: "clock")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                        
                                        Text("Time season:")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                        
                                        Text("1:00h")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                    }
                                }
                                
                                // Biology class 2
                                VStack(alignment: .leading, spacing: 8) {
                                    ZStack(alignment: .topLeading) {
                                        Rectangle()
                                            .fill(Color.blue.opacity(0.15))
                                            .frame(width: 160, height: 100)
                                            .cornerRadius(12)
                                        
                                        HStack {
                                            Circle()
                                                .fill(Color.red)
                                                .frame(width: 8, height: 8)
                                            
                                            Text("Live")
                                                .font(.caption)
                                                .fontWeight(.medium)
                                        }
                                        .padding(8)
                                    }
                                    
                                    Text("Biology")
                                        .font(.headline)
                                    
                                    HStack {
                                        Image(systemName: "clock")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                        
                                        Text("Time season:")
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                        
                                        Text("1:00h")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // Test Exam card
                    HStack {
                        Image(systemName: "clipboard.fill")
                            .font(.title2)
                            .foregroundColor(.blue)
                            .padding(10)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Test Exam")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Text("Let's check your preparation")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.blue.opacity(0.05))
                    .cornerRadius(16)
                    .padding(.horizontal)
                    
                    // Premium Courses section
                    VStack(spacing: 15) {
                        HStack {
                            Text("Premium")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("Courses")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("See all")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                // First premium course
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(alignment: .top) {
                                        // Teacher image
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.blue.opacity(0.2))
                                            .frame(width: 80, height: 80)
                                            .overlay(
                                                Image(systemName: "person.fill")
                                                    .font(.system(size: 30))
                                                    .foregroundColor(.blue)
                                            )
                                        
                                        VStack(alignment: .leading, spacing: 4) {
                                            Text("English speaking")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                            
                                            HStack {
                                                Image(systemName: "play.circle")
                                                    .foregroundColor(.gray)
                                                Text("24 lessons")
                                                    .font(.caption)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            HStack {
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.yellow)
                                                Text("4.8")
                                                    .font(.caption)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Text("$45.00")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .frame(maxWidth: .infinity, alignment: .trailing)
                                        }
                                    }
                                }
                                .frame(width: 260)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                                
                                // Second premium course
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack(alignment: .top) {
                                        // Teacher image
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.orange.opacity(0.2))
                                            .frame(width: 80, height: 80)
                                            .overlay(
                                                Image(systemName: "person.fill")
                                                    .font(.system(size: 30))
                                                    .foregroundColor(.orange)
                                            )
                                        
                                        VStack(alignment: .leading, spacing: 4) {
                                            Text("Business")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                            
                                            HStack {
                                                Image(systemName: "play.circle")
                                                    .foregroundColor(.gray)
                                                Text("30 lessons")
                                                    .font(.caption)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            HStack {
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(.yellow)
                                                Text("4.9")
                                                    .font(.caption)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Text("$60.00")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                                .frame(maxWidth: .infinity, alignment: .trailing)
                                        }
                                    }
                                }
                                .frame(width: 260)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // Live Courses section
                    VStack(spacing: 15) {
                        HStack {
                            Text("Live")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("Courses")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("See all")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                // First live course
                                VStack(alignment: .leading, spacing: 10) {
                                    // Course thumbnail
                                    ZStack(alignment: .center) {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.gray.opacity(0.3))
                                            .frame(height: 150)
                                            .overlay(
                                                Image(systemName: "person.fill")
                                                    .font(.system(size: 50))
                                                    .foregroundColor(.white)
                                            )
                                        
                                        Text("BUSINESS")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .foregroundColor(.red)
                                            .padding(.top, 70)
                                    }
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Class 9")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                            
                                            HStack(spacing: 15) {
                                                HStack {
                                                    Image(systemName: "play.circle")
                                                        .foregroundColor(.gray)
                                                    Text("12 lesson")
                                                        .font(.caption)
                                                        .foregroundColor(.gray)
                                                }
                                                
                                                HStack {
                                                    Image(systemName: "clock")
                                                        .foregroundColor(.gray)
                                                    Text("6 months")
                                                        .font(.caption)
                                                        .foregroundColor(.gray)
                                                }
                                            }
                                        }
                                        
                                        Spacer()
                                        
                                        Text("$454.00")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    }
                                }
                                .frame(width: 260)
                                .padding(.vertical, 10)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                                
                                // Second live course (partial)
                                VStack(alignment: .leading, spacing: 10) {
                                    // Course thumbnail
                                    ZStack(alignment: .center) {
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.gray.opacity(0.2))
                                            .frame(height: 150)
                                    }
                                    
                                    HStack {
                                        VStack(alignment: .leading) {
                                            Text("Class 10")
                                                .font(.headline)
                                                .fontWeight(.bold)
                                        }
                                    }
                                }
                                .frame(width: 260)
                                .padding(.vertical, 10)
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // Free courses section
                    VStack(spacing: 15) {
                        HStack {
                            Text("Free")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            Text("courses")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                // Chemistry course
                                VStack(alignment: .leading, spacing: 10) {
                                    ZStack(alignment: .topTrailing) {
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.yellow.opacity(0.3))
                                            .frame(width: 200, height: 120)
                                        
                                        // Chemistry icons
                                        Image(systemName: "atom")
                                            .font(.system(size: 40))
                                            .foregroundColor(.white.opacity(0.5))
                                            .padding()
                                    }
                                    
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text("Chemistry")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                        
                                        HStack {
                                            Image(systemName: "play.circle")
                                                .foregroundColor(.gray)
                                            Text("Video lessons")
                                                .font(.caption)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.bottom, 10)
                                }
                                .background(Color.yellow.opacity(0.3))
                                .cornerRadius(15)
                                
                                // Second free course
                                VStack(alignment: .leading, spacing: 10) {
                                    ZStack(alignment: .topTrailing) {
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(Color.green.opacity(0.2))
                                            .frame(width: 200, height: 120)
                                        
                                        // Chemistry icons
                                        Text("Ch")
                                            .font(.system(size: 40))
                                            .foregroundColor(.white.opacity(0.5))
                                            .padding()
                                    }
                                }
                                .background(Color.green.opacity(0.2))
                                .cornerRadius(15)
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    // Add some space at the bottom to account for the floating tab bar
                    Spacer(minLength: 100)
                }
                .padding(.vertical)
            }
            
            FloatingBar()
        }
    }
}

#Preview {
    HomeView()
}
