class KeyChainInterface {
    let service = "TimioClient Helper";
    let account = "timio_client";
    let keychain = KeychainSwift();

    static func writeToken(token : String) -> Bool {
        return keychain.set(token, forKey: account)
    }
    
    static func readToken() -> String? {
        return keychain.get(token, forKey: account)
    }
}
