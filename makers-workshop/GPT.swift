//
//  GPT.swift
//  makers-workshop
//
//  Created by Steve Alex  on 29/08/2024.
//

import Foundation

func fetchOpenAIResponse(prompt: String) async -> String? {    
    let url = URL(string: "https://api.openai.com/v1/chat/completions")!
    
    let requestBody: [String: Any] = [
        "model": "gpt-4",
        "messages": [
            [
                "role": "user",
                "content": prompt
            ]
        ]
    ]
    
    guard let httpBody = try? JSONSerialization.data(withJSONObject: requestBody, options: []) else {
        return nil
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.setValue("Your API token", forHTTPHeaderField: "Authorization")
    request.httpBody = httpBody
    
    do {
        let (data, _) = try await URLSession.shared.data(for: request)
    
        guard let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []),
              let jsonDict = jsonObject as? [String: Any],
              let choices = jsonDict["choices"] as? [[String: Any]],
              let firstChoice = choices.first,
              let message = firstChoice["message"] as? [String: Any],
              let content = message["content"] as? String

        else {
            return ""
        }
        
        return content
        
    } catch {
        return "Unable to fetch content"
    }
}
