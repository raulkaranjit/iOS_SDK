
//
//  CachedResponseHandleer.swift
//  MyFramework
//
//  Created by Cellcom on 7/26/20.
//

import Foundation
public protocol CachedResponseHandler {
    /// Determines whether the HTTP response should be stored in the cache.
    ///
    /// The `completion` closure should be passed one of three possible options:
    ///
    ///   1. The cached response provided by the server (this is the most common use case).
    ///   2. A modified version of the cached response (you may want to modify it in some way before caching).
    ///   3. A `nil` value to prevent the cached response from being stored in the cache.
    ///
    /// - Parameters:
    ///   - task:       The data task whose request resulted in the cached response.
    ///   - response:   The cached response to potentially store in the cache.
    ///   - completion: The closure to execute containing cached response, a modified response, or `nil`.
    func dataTask(_ task: URLSessionDataTask,
                  willCacheResponse response: CachedURLResponse,
                  completion: @escaping (CachedURLResponse?) -> Void)
}
