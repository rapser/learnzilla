//
//  CourseView.swift
//  learningzilla
//
//  Created by miguel tomairo on 24/02/25.
//

import SwiftUI

struct CourseView: View {
    // MARK: - Datos de ejemplo
    let todayClasses = [Class.example1(), Class.example2(), Class.example3()]
    let premiumCourses = [PremiumCourse.example1(), PremiumCourse.example2()]
    let liveCourses = [LiveCourse.example1(), LiveCourse.example2()]
    let freeCourses = [FreeCourse.example1(), FreeCourse.example2(), FreeCourse.example3(), FreeCourse.example4()]
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    // Header
                    headerSection()
                    
                    // Math class card
                    mathClassCard()
                    
                    // Today's Classes
                    classSection(title: "Today's Class", classes: todayClasses)
                    
                    // Test Exam card
                    testExamCard()
                    
                    // Premium Courses
                    courseSection(title: "Premium", subtitle: "Courses", courses: premiumCourses)
                    
                    // Live Courses
                    liveCourseSection(title: "Live", subtitle: "Courses", courses: liveCourses)
                    
                    // Free Courses
                    freeCourseSection(title: "Free", subtitle: "courses", courses: freeCourses)
                    
                    // Espacio para el tab bar flotante
                    Spacer(minLength: 60)
                }
                .padding(.vertical)
            }
            
            FloatingBar()
        }
    }
    
    // MARK: - Funciones para cada sección
    
    // Header
    func headerSection() -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Welcome")
                    .font(.headline)
                    .foregroundColor(.secondary)
                HStack(spacing: 6) {
                    Text("Miguel!")
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "hand.wave.fill")
                        .foregroundColor(.yellow)
                }
            }
            
            Spacer()
            
            // Botón de búsqueda
            Circle()
                .fill(Color(.systemGray6))
                .frame(width: 40, height: 40)
                .overlay(
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                )
            
            // Imagen de perfil
            Circle()
                .fill(Color(.systemGray4))
                .frame(width: 40, height: 40)
                .overlay(
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                )
        }
        .padding(.horizontal)
    }
    
    // Math Class Card
    func mathClassCard() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemIndigo).opacity(0.2))
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack() {
                    Image(systemName: "graduationcap.fill")
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
                
                Text("Math class")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Text("starting soon")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
                
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
    }
    
    // Sección de clases (Today's Class)
    func classSection(title: String, classes: [Class]) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.title3)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(classes) { classItem in
                        classCard(classItem: classItem)
                            
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    // Tarjeta de clase
    func classCard(classItem: Class) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(classItem.color.opacity(0.3))
                    .frame(height: 120) // Altura fija, el ancho se define en el contenedor
                
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
            
            Text(classItem.title)
                .font(.headline)
            
            HStack {
                Image(systemName: "clock")
                    .font(.caption)
                
                Text("Time season: \(classItem.duration)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(8)
        .frame(width: 240)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
    
    // Test Exam Card
    func testExamCard() -> some View {
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
        .frame(height: 110)
        .background(Color.blue.opacity(0.05))
        .cornerRadius(16)
        .padding(.horizontal)
    }
    
    // Sección de cursos premium
    func courseSection(title: String, subtitle: String, courses: [PremiumCourse]) -> some View {
        VStack(spacing: 15) {
            sectionHeader(title: title, subtitle: subtitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(courses) { course in
                        premiumCourseCard(course: course)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    // Tarjeta de curso premium
    func premiumCourseCard(course: PremiumCourse) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .top) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(course.color.opacity(0.2))
                    .frame(width: 80, height: 80)
                    .overlay(
                        Image(systemName: course.icon)
                            .font(.system(size: 30))
                            .foregroundColor(course.color)
                    )
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(course.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    infoRow(icon: "play.circle", text: "\(course.lessons) lessons")
                    
                    HStack {
                        infoRow(icon: "star.fill", text: course.rating)
                        
                        Text(course.price)
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
            }
        }
        .frame(width: 260)
        .padding(10)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
    
    // Sección de cursos en vivo
    func liveCourseSection(title: String, subtitle: String, courses: [LiveCourse]) -> some View {
        VStack(spacing: 15) {
            sectionHeader(title: title, subtitle: subtitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(courses) { course in
                        liveCourseCard(course: course)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    // Tarjeta de curso en vivo
    func liveCourseCard(course: LiveCourse) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 150)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                    )
                
                Text(course.category.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .padding(.top, 70)
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text(course.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    

                }
                
                Spacer()
                
                Text(course.price)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            HStack(spacing: 15) {
                infoRow(icon: "play.circle", text: "\(course.lessons) lessons")
                infoRow(icon: "clock", text: course.duration)
            }
        }
        .frame(width: 260)
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
    
    // Sección de cursos gratuitos
    func freeCourseSection(title: String, subtitle: String, courses: [FreeCourse]) -> some View {
        VStack(spacing: 15) {
            sectionHeader(title: title, subtitle: subtitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(courses) { course in
                        freeCourseCard(course: course)
                    }
                }
                .padding(.horizontal)
            }
        }
    }

    // Tarjeta de curso gratuito
    func freeCourseCard(course: FreeCourse) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack(alignment: .topTrailing) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(course.color.opacity(0.3))
                    .frame(height: 120) // Altura fija
                
                Image(systemName: course.icon)
                    .font(.system(size: 40))
                    .foregroundColor(.white.opacity(0.5))
                    .padding()
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(course.title)
                    .font(.headline)
                    .fontWeight(.bold)
                
                infoRow(icon: "play.circle", text: "Video lessons")
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 10)
        }
        .background(course.color.opacity(0.3))
        .frame(width: 260)
        .cornerRadius(15)
    }
    
    // MARK: - Componentes reutilizables
    
    // Header de sección
    func sectionHeader(title: String, subtitle: String) -> some View {
        HStack {
            Text(title)
                .font(.headline)
                .foregroundColor(.secondary)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("See all")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
    }
    
    // Fila de información (icono + texto)
    func infoRow(icon: String, text: String) -> some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
            Text(text)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

// MARK: - Modelos de datos

struct Class: Identifiable {
    let id = UUID()
    let title: String
    let duration: String
    let color: Color
    
    static func example1() -> Class {
        Class(title: "Biology", duration: "1:00h", color: .yellow)
    }
    
    static func example2() -> Class {
        Class(title: "Geometria", duration: "2:00h", color: .blue)
    }
    
    static func example3() -> Class {
        Class(title: "Lenguaje", duration: "1:00h", color: .red)
    }
}

struct PremiumCourse: Identifiable {
    let id = UUID()
    let title: String
    let lessons: Int
    let rating: String
    let price: String
    let color: Color
    let icon: String
    
    static func example1() -> PremiumCourse {
        PremiumCourse(
            title: "English speaking",
            lessons: 24,
            rating: "4.8",
            price: "$45.00",
            color: .blue,
            icon: "person.fill"
        )
    }
    
    static func example2() -> PremiumCourse {
        PremiumCourse(
            title: "Business",
            lessons: 30,
            rating: "4.9",
            price: "$60.00",
            color: .orange,
            icon: "person.fill"
        )
    }
}

struct LiveCourse: Identifiable {
    let id = UUID()
    let title: String
    let category: String
    let lessons: Int
    let duration: String
    let price: String
    
    static func example1() -> LiveCourse {
        LiveCourse(
            title: "Class 9",
            category: "BUSINESS",
            lessons: 12,
            duration: "6 months",
            price: "$454.00"
        )
    }
    
    static func example2() -> LiveCourse {
        LiveCourse(
            title: "Class 10",
            category: "SCIENCE",
            lessons: 15,
            duration: "8 months",
            price: "$500.00"
        )
    }
}

struct FreeCourse: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let color: Color
    
    static func example1() -> FreeCourse {
        FreeCourse(
            title: "Chemistry",
            icon: "atom",
            color: .yellow
        )
    }
    
    static func example2() -> FreeCourse {
        FreeCourse(
            title: "Physics",
            icon: "leaf",
            color: .green
        )
    }
    
    static func example3() -> FreeCourse {
        FreeCourse(
            title: "Historia",
            icon: "hourglass",
            color: .red
        )
    }
    
    static func example4() -> FreeCourse {
        FreeCourse(
            title: "Matematica",
            icon: "function",
            color: .blue
        )
    }
}

#Preview {
    CourseView()
}
