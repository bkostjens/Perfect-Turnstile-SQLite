//
//  SessionManager.swift
//  PerfectTurnstileSQLite
//
//  Created by Jonathan Guthrie on 2016-10-19.
//
//

import Foundation
import TurnstileCrypto
import Turnstile
import SQLiteStORM
import TurnstilePerfect

/**
SQLiteSessionManager manages sessions via SQLite storage
*/
open class PerfectSessionManager: SessionManager {
	public let random: Random = URandom()

	/// Creates a session for a given Subject object and returns the identifier.
	public func createSession(account: Account) -> String {
		let identifier = tokenStore?.new(account.uniqueID)
		return identifier!
	}

	/// Deletes the session for a session identifier.
	public func destroySession(identifier: String) {
		let token = AccessTokenStore()
		do {
			try token.get(identifier)
			try token.delete()
		} catch {
			print(error)
		}
	}

	/**
	Creates a Session-backed Account object from the Session store. This only
	contains the SessionID.
	*/
	public func restoreAccount(fromSessionID identifier: String) throws -> Account {
		let token = AccessTokenStore()
		do {
			try token.get(identifier)
			guard token.check()! else { throw InvalidSessionError() }
			return SessionAccount(uniqueID: token.userid)
		} catch {
			throw InvalidSessionError()
		}
	}
}
