import CoreData
import SwiftUI

let symbols: [Symbol] = [
    Symbol(id: "AED", label: "United Arab Emirates Dirham"),
    Symbol(id: "AFN", label: "Afghan Afghani"),
    Symbol(id: "ALL", label: "Albanian Lek"),
    Symbol(id: "AMD", label: "Armenian Dram"),
    Symbol(id: "ANG", label: "Netherlands Antillean Guilder"),
    Symbol(id: "AOA", label: "Angolan Kwanza"),
    Symbol(id: "ARS", label: "Argentine Peso"),
    Symbol(id: "AUD", label: "Australian Dollar"),
    Symbol(id: "AWG", label: "Aruban Florin"),
    Symbol(id: "AZN", label: "Azerbaijani Manat"),
    Symbol(id: "BAM", label: "Bosnia-Herzegovina Convertible Mark"),
    Symbol(id: "BBD", label: "Barbadian Dollar"),
    Symbol(id: "BDT", label: "Bangladeshi Taka"),
    Symbol(id: "BGN", label: "Bulgarian Lev"),
    Symbol(id: "BHD", label: "Bahraini Dinar"),
    Symbol(id: "BIF", label: "Burundian Franc"),
    Symbol(id: "BMD", label: "Bermudan Dollar"),
    Symbol(id: "BND", label: "Brunei Dollar"),
    Symbol(id: "BRL", label: "Brazilian Real"),
    Symbol(id: "BSD", label: "Bahamian Dollar"),
    Symbol(id: "BTC", label: "Bitcoin"),
    Symbol(id: "BTN", label: "Bhutanese Ngultrum"),
    Symbol(id: "BWP", label: "Botswanan Pula"),
    Symbol(id: "BYN", label: "New Belarusian Ruble"),
    Symbol(id: "BYR", label: "Belarusian Ruble"),
    Symbol(id: "BZD", label: "Belize Dollar"),
    Symbol(id: "CAD", label: "Canadian Dollar"),
    Symbol(id: "CDF", label: "Congolese Franc"),
    Symbol(id: "CHF", label: "Swiss Franc"),
    Symbol(id: "CLF", label: "Chilean Unit of Account (UF)"),
    Symbol(id: "CLP", label: "Chilean Peso"),
    Symbol(id: "CNY", label: "Chinese Yuan"),
    Symbol(id: "CNH", label: "Chinese Yuan Offshore"),
    Symbol(id: "COP", label: "Colombian Peso"),
    Symbol(id: "CRC", label: "Costa Rican Colón"),
    Symbol(id: "CUC", label: "Cuban Convertible Peso"),
    Symbol(id: "CUP", label: "Cuban Peso"),
    Symbol(id: "CVE", label: "Cape Verdean Escudo"),
    Symbol(id: "CZK", label: "Czech Republic Koruna"),
    Symbol(id: "DJF", label: "Djiboutian Franc"),
    Symbol(id: "DKK", label: "Danish Krone"),
    Symbol(id: "DOP", label: "Dominican Peso"),
    Symbol(id: "DZD", label: "Algerian Dinar"),
    Symbol(id: "EGP", label: "Egyptian Pound"),
    Symbol(id: "ERN", label: "Eritrean Nakfa"),
    Symbol(id: "ETB", label: "Ethiopian Birr"),
    Symbol(id: "EUR", label: "Euro"),
    Symbol(id: "FJD", label: "Fijian Dollar"),
    Symbol(id: "FKP", label: "Falkland Islands Pound"),
    Symbol(id: "GBP", label: "British Pound Sterling"),
    Symbol(id: "GEL", label: "Georgian Lari"),
    Symbol(id: "GGP", label: "Guernsey Pound"),
    Symbol(id: "GHS", label: "Ghanaian Cedi"),
    Symbol(id: "GIP", label: "Gibraltar Pound"),
    Symbol(id: "GMD", label: "Gambian Dalasi"),
    Symbol(id: "GNF", label: "Guinean Franc"),
    Symbol(id: "GTQ", label: "Guatemalan Quetzal"),
    Symbol(id: "GYD", label: "Guyanaese Dollar"),
    Symbol(id: "HKD", label: "Hong Kong Dollar"),
    Symbol(id: "HNL", label: "Honduran Lempira"),
    Symbol(id: "HRK", label: "Croatian Kuna"),
    Symbol(id: "HTG", label: "Haitian Gourde"),
    Symbol(id: "HUF", label: "Hungarian Forint"),
    Symbol(id: "IDR", label: "Indonesian Rupiah"),
    Symbol(id: "ILS", label: "Israeli New Sheqel"),
    Symbol(id: "IMP", label: "Manx pound"),
    Symbol(id: "INR", label: "Indian Rupee"),
    Symbol(id: "IQD", label: "Iraqi Dinar"),
    Symbol(id: "IRR", label: "Iranian Rial"),
    Symbol(id: "ISK", label: "Icelandic Króna"),
    Symbol(id: "JEP", label: "Jersey Pound"),
    Symbol(id: "JMD", label: "Jamaican Dollar"),
    Symbol(id: "JOD", label: "Jordanian Dinar"),
    Symbol(id: "JPY", label: "Japanese Yen"),
    Symbol(id: "KES", label: "Kenyan Shilling"),
    Symbol(id: "KGS", label: "Kyrgystani Som"),
    Symbol(id: "KHR", label: "Cambodian Riel"),
    Symbol(id: "KMF", label: "Comorian Franc"),
    Symbol(id: "KPW", label: "North Korean Won"),
    Symbol(id: "KRW", label: "South Korean Won"),
    Symbol(id: "KWD", label: "Kuwaiti Dinar"),
    Symbol(id: "KYD", label: "Cayman Islands Dollar"),
    Symbol(id: "KZT", label: "Kazakhstani Tenge"),
    Symbol(id: "LAK", label: "Laotian Kip"),
    Symbol(id: "LBP", label: "Lebanese Pound"),
    Symbol(id: "LKR", label: "Sri Lankan Rupee"),
    Symbol(id: "LRD", label: "Liberian Dollar"),
    Symbol(id: "LSL", label: "Lesotho Loti"),
    Symbol(id: "LTL", label: "Lithuanian Litas"),
    Symbol(id: "LVL", label: "Latvian Lats"),
    Symbol(id: "LYD", label: "Libyan Dinar"),
    Symbol(id: "MAD", label: "Moroccan Dirham"),
    Symbol(id: "MDL", label: "Moldovan Leu"),
    Symbol(id: "MGA", label: "Malagasy Ariary"),
    Symbol(id: "MKD", label: "Macedonian Denar"),
    Symbol(id: "MMK", label: "Myanma Kyat"),
    Symbol(id: "MNT", label: "Mongolian Tugrik"),
    Symbol(id: "MOP", label: "Macanese Pataca"),
    Symbol(id: "MRU", label: "Mauritanian Ouguiya"),
    Symbol(id: "MUR", label: "Mauritian Rupee"),
    Symbol(id: "MVR", label: "Maldivian Rufiyaa"),
    Symbol(id: "MWK", label: "Malawian Kwacha"),
    Symbol(id: "MXN", label: "Mexican Peso"),
    Symbol(id: "MYR", label: "Malaysian Ringgit"),
    Symbol(id: "MZN", label: "Mozambican Metical"),
    Symbol(id: "NAD", label: "Namibian Dollar"),
    Symbol(id: "NGN", label: "Nigerian Naira"),
    Symbol(id: "NIO", label: "Nicaraguan Córdoba"),
    Symbol(id: "NOK", label: "Norwegian Krone"),
    Symbol(id: "NPR", label: "Nepalese Rupee"),
    Symbol(id: "NZD", label: "New Zealand Dollar"),
    Symbol(id: "OMR", label: "Omani Rial"),
    Symbol(id: "PAB", label: "Panamanian Balboa"),
    Symbol(id: "PEN", label: "Peruvian Nuevo Sol"),
    Symbol(id: "PGK", label: "Papua New Guinean Kina"),
    Symbol(id: "PHP", label: "Philippine Peso"),
    Symbol(id: "PKR", label: "Pakistani Rupee"),
    Symbol(id: "PLN", label: "Polish Zloty"),
    Symbol(id: "PYG", label: "Paraguayan Guarani"),
    Symbol(id: "QAR", label: "Qatari Rial"),
    Symbol(id: "RON", label: "Romanian Leu"),
    Symbol(id: "RSD", label: "Serbian Dinar"),
    Symbol(id: "RUB", label: "Russian Ruble"),
    Symbol(id: "RWF", label: "Rwandan Franc"),
    Symbol(id: "SAR", label: "Saudi Riyal"),
    Symbol(id: "SBD", label: "Solomon Islands Dollar"),
    Symbol(id: "SCR", label: "Seychellois Rupee"),
    Symbol(id: "SDG", label: "South Sudanese Pound"),
    Symbol(id: "SEK", label: "Swedish Krona"),
    Symbol(id: "SGD", label: "Singapore Dollar"),
    Symbol(id: "SHP", label: "Saint Helena Pound"),
    Symbol(id: "SLE", label: "Sierra Leonean Leone"),
    Symbol(id: "SLL", label: "Sierra Leonean Leone"),
    Symbol(id: "SOS", label: "Somali Shilling"),
    Symbol(id: "SRD", label: "Surinamese Dollar"),
    Symbol(id: "STD", label: "São Tomé and Príncipe Dobra"),
    Symbol(id: "SVC", label: "Salvadoran Colón"),
    Symbol(id: "SYP", label: "Syrian Pound"),
    Symbol(id: "SZL", label: "Swazi Lilangeni"),
    Symbol(id: "THB", label: "Thai Baht"),
    Symbol(id: "TJS", label: "Tajikistani Somoni"),
    Symbol(id: "TMT", label: "Turkmenistani Manat"),
    Symbol(id: "TND", label: "Tunisian Dinar"),
    Symbol(id: "TOP", label: "Tongan Paʻanga"),
    Symbol(id: "TRY", label: "Turkish Lira"),
    Symbol(id: "TTD", label: "Trinidad and Tobago Dollar"),
    Symbol(id: "TWD", label: "New Taiwan Dollar"),
    Symbol(id: "TZS", label: "Tanzanian Shilling"),
    Symbol(id: "UAH", label: "Ukrainian Hryvnia"),
    Symbol(id: "UGX", label: "Ugandan Shilling"),
    Symbol(id: "USD", label: "United States Dollar"),
    Symbol(id: "UYU", label: "Uruguayan Peso"),
    Symbol(id: "UZS", label: "Uzbekistan Som"),
    Symbol(id: "VEF", label: "Venezuelan Bolívar Fuerte"),
    Symbol(id: "VES", label: "Sovereign Bolivar"),
    Symbol(id: "VND", label: "Vietnamese Dong"),
    Symbol(id: "VUV", label: "Vanuatu Vatu"),
    Symbol(id: "WST", label: "Samoan Tala"),
    Symbol(id: "XAF", label: "CFA Franc BEAC"),
    Symbol(id: "XAG", label: "Silver (troy ounce)"),
    Symbol(id: "XAU", label: "Gold (troy ounce)"),
    Symbol(id: "XCD", label: "East Caribbean Dollar"),
    Symbol(id: "XDR", label: "Special Drawing Rights"),
    Symbol(id: "XOF", label: "CFA Franc BCEAO"),
    Symbol(id: "XPF", label: "CFP Franc"),
    Symbol(id: "YER", label: "Yemeni Rial"),
    Symbol(id: "ZAR", label: "South African Rand"),
    Symbol(id: "ZMK", label: "Zambian Kwacha (pre-2013)"),
    Symbol(id: "ZMW", label: "Zambian Kwacha"),
    Symbol(id: "ZWL", label: "Zimbabwean Dollar"),
]

let accessKey = "d9172ed138c32e9c32d5a364443e3652"

struct ContentView: View {

    @State private var selectedSymbol: Symbol?
    @State private var rates: [CurrencyRateData] = []

    var body: some View {
        NavigationView {
            VStack {
                Picker("Select your country", selection: $selectedSymbol) {
                    ForEach(symbols) { symbol in
                        Text(symbol.label).tag(symbol.id)
                    }
                }.pickerStyle(.menu).padding()
                ForEach(rates) { rate in
                    Text("\(rate.id) -> \(rate.rate)").tag(rate.id)
                }
            }.padding()
        }.navigationTitle("Fixer Exhcange Rates").onChange(of: selectedSymbol) {
            _, _ in
            Task {
                do {
                    rates = []
                    let dto = try await getExchangeRates(
                        symbolId: selectedSymbol?.id ?? "")
                    let rateDtos = dto.rates
                    if (!rateDtos.isEmpty) {
                        dto.rates.forEach { key, value in
                            rates.append(CurrencyRateData(id: key, rate: value))
                        }
                    }
                } catch {
                    print("Something went wrong")
                }
            }
        }
    }

    func getExchangeRates(symbolId: String) async throws
        -> ExchangeRatesResponseDto
    {
        guard !symbolId.isEmpty else {
            throw FixerApiError.noSymbolId
        }

        let baseURL = "http://data.fixer.io/api/latest"
        let baseCurrency = symbolId
        let symbols = "GBP,JPY,EUR"

        guard var urlComponents = URLComponents(string: baseURL) else {
            throw FixerApiError.invalidURL
        }

        urlComponents.queryItems = [
            URLQueryItem(name: "access_key", value: accessKey),
            URLQueryItem(name: "base", value: baseCurrency),
            URLQueryItem(name: "symbols", value: symbols),
        ]

        guard let url = urlComponents.url else {
            throw FixerApiError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse,
            response.statusCode == 200
        else {
            throw FixerApiError.ApiFailed
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(ExchangeRatesResponseDto.self, from: data)
        } catch {
            throw FixerApiError.decodingFailed
        }
    }
}

enum FixerApiError: Error {
    case noSymbolId
    case noRates
    case decodingFailed
    case invalidURL
    case ApiFailed

}

struct Symbol: Identifiable, Hashable {
    let id: String
    let label: String
}

struct CurrencyRateData: Identifiable {
    let id: String
    let rate: Double
}

struct ExchangeRatesResponseDto: Codable {
    let success: Bool
    let timestamp: Int
    let base: String
    let date: String
    let rates: [String: Double]
}

#Preview {
    ContentView()
}
