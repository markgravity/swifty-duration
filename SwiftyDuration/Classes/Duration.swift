
public func fakeDuration(elapse: Duration, _ actions: () -> Void) {
    Duration.fakeElapseDuration = elapse
    actions()
    Duration.fakeElapseDuration = Duration(miliseconds: 0)
}

public struct Duration {
    fileprivate static var fakeElapseDuration = Duration(miliseconds: 0)
    
    fileprivate let _milliseconds: Int
    public var inMilliseconds: Int {
        return _milliseconds - Self.fakeElapseDuration._milliseconds
    }
    
    public var inSeconds: Int {
        return inMilliseconds / 1000
    }
    
    public var inTimeInterval: TimeInterval {
        return TimeInterval(inMilliseconds) / 1000.0
    }
    
    public init(miliseconds: Int) {
        _milliseconds = miliseconds
    }
    
    public init(seconds: Int) {
        self.init(miliseconds: seconds * 1000)
    }
    
    
    public static func + (left: Duration, right: Duration) -> Duration {
        Duration(miliseconds: left.inMilliseconds + right.inMilliseconds)
    }
    
    public static func - (left: Duration, right: Duration) -> Duration {
        Duration(miliseconds: left.inMilliseconds - right.inMilliseconds)
    }
}

//public func +=(lhs: Duration, rhs: Duration) -> Void {
//    lhs = lhs
//}

extension Duration: Equatable {}

// MARK: - Convenience
public extension Duration {
    static func seconds(_ seconds: Int) -> Duration { Duration(seconds: seconds) }
    static func miliseconds(_ miliseconds: Int) -> Duration {
        Duration(miliseconds: miliseconds)
    }
    
    static var zero: Duration { .miliseconds(0)  }
}
