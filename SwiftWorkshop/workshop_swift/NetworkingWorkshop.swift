//
//  NetworkingWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct NetworkingWorkshop: View {
    @State var user: GitHubUser = GitHubUser(name: "TOM", avatarURL: "")
    
    var body: some View {
        VStack{
            
//            AsyncImage(url: URL(string: user.avatarURL))
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .frame(width: 120, height: 120)
//                .padding()
            
            AsyncImage(url : URL(string: user.avatarURL)) {image in
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            } placeholder: {
                Circle()
                    .fill(Color.gray)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            .frame(width: 200, height: 200)
            .padding()
            
            Text("Username")
            
            Spacer()
        }
        .task {
            do {
                user = try await getUser()
            } catch GitHubError.invalidUrl {
                print("invalid url")
            } catch GitHubError.invalidData {
                print("invalid data")
            } catch GitHubError.invalidResponse {
                print("invalid response")
            } catch {
                print("Something happened")
            }
        }
    }
    func getUser() async throws -> GitHubUser {
        let endpoint = "https://api.github.com/users/trosinski08"
        guard let url = URL(string: endpoint) else {throw GitHubError.invalidUrl}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw GitHubError.invalidResponse }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(GitHubUser.self, from: data)
        } catch {
            throw GitHubError.invalidData
        }
    }
}

enum GitHubError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}

struct GitHubUser: Codable {
    let name: String
    let avatarURL: String
}

#Preview {
    NetworkingWorkshop()
}

