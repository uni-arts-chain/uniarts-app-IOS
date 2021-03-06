import Foundation
import IrohaCrypto

extension SNAddressType {
    func titleForLocale(_ locale: Locale) -> String {
        switch self {
        case .polkadotMain, .polkadotSecondary:
            return "Polkadot"
        case .kusamaMain, .kusamaSecondary:
            return "Kusama"
        default:
            return "Westend"
        }
    }

    var icon: UIImage? {
        switch self {
        case .polkadotMain, .polkadotSecondary:
            return UIImage(named: "iconPolkadotSmallBg")
        case .kusamaMain, .kusamaSecondary:
            return UIImage(named: "iconKsmSmallBg")
        default:
            return UIImage(named: "iconWestendSmallBg")
        }
    }

    static var supported: [SNAddressType] {
        [.kusamaMain, .polkadotMain, .genericSubstrate]
    }
}
