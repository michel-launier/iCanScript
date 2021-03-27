
enum PortIndex: Int {
    // Function signature
    case ParametersStart= 0
    case ParametersEnd  = 399
    case Return         = 400
    case Target         = 401

    // Extended Signature
    case Self           = 500

    // Control Ports
    case ControlStart   = 1000
    case Trigger        = 1000
    case EnablesStart   = 1001
    case EnablesEnd     = 1100
    case ControlEnd     = 1100
}
