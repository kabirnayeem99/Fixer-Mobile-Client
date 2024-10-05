import CoreData
import SwiftUI

let symbols: [Symbol] = [
    Symbol(short: "AED", label: "United Arab Emirates Dirham"),
    Symbol(short: "AFN", label: "Afghan Afghani"),
    Symbol(short: "ALL", label: "Albanian Lek"),
    Symbol(short: "AMD", label: "Armenian Dram"),
    Symbol(short: "ANG", label: "Netherlands Antillean Guilder"),
    Symbol(short: "AOA", label: "Angolan Kwanza"),
    Symbol(short: "ARS", label: "Argentine Peso"),
    Symbol(short: "AUD", label: "Australian Dollar"),
    Symbol(short: "AWG", label: "Aruban Florin"),
    Symbol(short: "AZN", label: "Azerbaijani Manat"),
    Symbol(short: "BAM", label: "Bosnia-Herzegovina Convertible Mark"),
    Symbol(short: "BBD", label: "Barbadian Dollar"),
    Symbol(short: "BDT", label: "Bangladeshi Taka"),
    Symbol(short: "BGN", label: "Bulgarian Lev"),
    Symbol(short: "BHD", label: "Bahraini Dinar"),
    Symbol(short: "BIF", label: "Burundian Franc"),
    Symbol(short: "BMD", label: "Bermudan Dollar"),
    Symbol(short: "BND", label: "Brunei Dollar"),
    Symbol(short: "BRL", label: "Brazilian Real"),
    Symbol(short: "BSD", label: "Bahamian Dollar"),
    Symbol(short: "BTC", label: "Bitcoin"),
    Symbol(short: "BTN", label: "Bhutanese Ngultrum"),
    Symbol(short: "BWP", label: "Botswanan Pula"),
    Symbol(short: "BYN", label: "New Belarusian Ruble"),
    Symbol(short: "BYR", label: "Belarusian Ruble"),
    Symbol(short: "BZD", label: "Belize Dollar"),
    Symbol(short: "CAD", label: "Canadian Dollar"),
    Symbol(short: "CDF", label: "Congolese Franc"),
    Symbol(short: "CHF", label: "Swiss Franc"),
    Symbol(short: "CLF", label: "Chilean Unit of Account (UF)"),
    Symbol(short: "CLP", label: "Chilean Peso"),
    Symbol(short: "CNY", label: "Chinese Yuan"),
    Symbol(short: "CNH", label: "Chinese Yuan Offshore"),
    Symbol(short: "COP", label: "Colombian Peso"),
    Symbol(short: "CRC", label: "Costa Rican Colón"),
    Symbol(short: "CUC", label: "Cuban Convertible Peso"),
    Symbol(short: "CUP", label: "Cuban Peso"),
    Symbol(short: "CVE", label: "Cape Verdean Escudo"),
    Symbol(short: "CZK", label: "Czech Republic Koruna"),
    Symbol(short: "DJF", label: "Djiboutian Franc"),
    Symbol(short: "DKK", label: "Danish Krone"),
    Symbol(short: "DOP", label: "Dominican Peso"),
    Symbol(short: "DZD", label: "Algerian Dinar"),
    Symbol(short: "EGP", label: "Egyptian Pound"),
    Symbol(short: "ERN", label: "Eritrean Nakfa"),
    Symbol(short: "ETB", label: "Ethiopian Birr"),
    Symbol(short: "EUR", label: "Euro"),
    Symbol(short: "FJD", label: "Fijian Dollar"),
    Symbol(short: "FKP", label: "Falkland Islands Pound"),
    Symbol(short: "GBP", label: "British Pound Sterling"),
    Symbol(short: "GEL", label: "Georgian Lari"),
    Symbol(short: "GGP", label: "Guernsey Pound"),
    Symbol(short: "GHS", label: "Ghanaian Cedi"),
    Symbol(short: "GIP", label: "Gibraltar Pound"),
    Symbol(short: "GMD", label: "Gambian Dalasi"),
    Symbol(short: "GNF", label: "Guinean Franc"),
    Symbol(short: "GTQ", label: "Guatemalan Quetzal"),
    Symbol(short: "GYD", label: "Guyanaese Dollar"),
    Symbol(short: "HKD", label: "Hong Kong Dollar"),
    Symbol(short: "HNL", label: "Honduran Lempira"),
    Symbol(short: "HRK", label: "Croatian Kuna"),
    Symbol(short: "HTG", label: "Haitian Gourde"),
    Symbol(short: "HUF", label: "Hungarian Forint"),
    Symbol(short: "IDR", label: "Indonesian Rupiah"),
    Symbol(short: "ILS", label: "Israeli New Sheqel"),
    Symbol(short: "IMP", label: "Manx pound"),
    Symbol(short: "INR", label: "Indian Rupee"),
    Symbol(short: "IQD", label: "Iraqi Dinar"),
    Symbol(short: "IRR", label: "Iranian Rial"),
    Symbol(short: "ISK", label: "Icelandic Króna"),
    Symbol(short: "JEP", label: "Jersey Pound"),
    Symbol(short: "JMD", label: "Jamaican Dollar"),
    Symbol(short: "JOD", label: "Jordanian Dinar"),
    Symbol(short: "JPY", label: "Japanese Yen"),
    Symbol(short: "KES", label: "Kenyan Shilling"),
    Symbol(short: "KGS", label: "Kyrgystani Som"),
    Symbol(short: "KHR", label: "Cambodian Riel"),
    Symbol(short: "KMF", label: "Comorian Franc"),
    Symbol(short: "KPW", label: "North Korean Won"),
    Symbol(short: "KRW", label: "South Korean Won"),
    Symbol(short: "KWD", label: "Kuwaiti Dinar"),
    Symbol(short: "KYD", label: "Cayman Islands Dollar"),
    Symbol(short: "KZT", label: "Kazakhstani Tenge"),
    Symbol(short: "LAK", label: "Laotian Kip"),
    Symbol(short: "LBP", label: "Lebanese Pound"),
    Symbol(short: "LKR", label: "Sri Lankan Rupee"),
    Symbol(short: "LRD", label: "Liberian Dollar"),
    Symbol(short: "LSL", label: "Lesotho Loti"),
    Symbol(short: "LTL", label: "Lithuanian Litas"),
    Symbol(short: "LVL", label: "Latvian Lats"),
    Symbol(short: "LYD", label: "Libyan Dinar"),
    Symbol(short: "MAD", label: "Moroccan Dirham"),
    Symbol(short: "MDL", label: "Moldovan Leu"),
    Symbol(short: "MGA", label: "Malagasy Ariary"),
    Symbol(short: "MKD", label: "Macedonian Denar"),
    Symbol(short: "MMK", label: "Myanma Kyat"),
    Symbol(short: "MNT", label: "Mongolian Tugrik"),
    Symbol(short: "MOP", label: "Macanese Pataca"),
    Symbol(short: "MRU", label: "Mauritanian Ouguiya"),
    Symbol(short: "MUR", label: "Mauritian Rupee"),
    Symbol(short: "MVR", label: "Maldivian Rufiyaa"),
    Symbol(short: "MWK", label: "Malawian Kwacha"),
    Symbol(short: "MXN", label: "Mexican Peso"),
    Symbol(short: "MYR", label: "Malaysian Ringgit"),
    Symbol(short: "MZN", label: "Mozambican Metical"),
    Symbol(short: "NAD", label: "Namibian Dollar"),
    Symbol(short: "NGN", label: "Nigerian Naira"),
    Symbol(short: "NIO", label: "Nicaraguan Córdoba"),
    Symbol(short: "NOK", label: "Norwegian Krone"),
    Symbol(short: "NPR", label: "Nepalese Rupee"),
    Symbol(short: "NZD", label: "New Zealand Dollar"),
    Symbol(short: "OMR", label: "Omani Rial"),
    Symbol(short: "PAB", label: "Panamanian Balboa"),
    Symbol(short: "PEN", label: "Peruvian Nuevo Sol"),
    Symbol(short: "PGK", label: "Papua New Guinean Kina"),
    Symbol(short: "PHP", label: "Philippine Peso"),
    Symbol(short: "PKR", label: "Pakistani Rupee"),
    Symbol(short: "PLN", label: "Polish Zloty"),
    Symbol(short: "PYG", label: "Paraguayan Guarani"),
    Symbol(short: "QAR", label: "Qatari Rial"),
    Symbol(short: "RON", label: "Romanian Leu"),
    Symbol(short: "RSD", label: "Serbian Dinar"),
    Symbol(short: "RUB", label: "Russian Ruble"),
    Symbol(short: "RWF", label: "Rwandan Franc"),
    Symbol(short: "SAR", label: "Saudi Riyal"),
    Symbol(short: "SBD", label: "Solomon Islands Dollar"),
    Symbol(short: "SCR", label: "Seychellois Rupee"),
    Symbol(short: "SDG", label: "South Sudanese Pound"),
    Symbol(short: "SEK", label: "Swedish Krona"),
    Symbol(short: "SGD", label: "Singapore Dollar"),
    Symbol(short: "SHP", label: "Saint Helena Pound"),
    Symbol(short: "SLE", label: "Sierra Leonean Leone"),
    Symbol(short: "SLL", label: "Sierra Leonean Leone"),
    Symbol(short: "SOS", label: "Somali Shilling"),
    Symbol(short: "SRD", label: "Surinamese Dollar"),
    Symbol(short: "STD", label: "São Tomé and Príncipe Dobra"),
    Symbol(short: "SVC", label: "Salvadoran Colón"),
    Symbol(short: "SYP", label: "Syrian Pound"),
    Symbol(short: "SZL", label: "Swazi Lilangeni"),
    Symbol(short: "THB", label: "Thai Baht"),
    Symbol(short: "TJS", label: "Tajikistani Somoni"),
    Symbol(short: "TMT", label: "Turkmenistani Manat"),
    Symbol(short: "TND", label: "Tunisian Dinar"),
    Symbol(short: "TOP", label: "Tongan Paʻanga"),
    Symbol(short: "TRY", label: "Turkish Lira"),
    Symbol(short: "TTD", label: "Trinidad and Tobago Dollar"),
    Symbol(short: "TWD", label: "New Taiwan Dollar"),
    Symbol(short: "TZS", label: "Tanzanian Shilling"),
    Symbol(short: "UAH", label: "Ukrainian Hryvnia"),
    Symbol(short: "UGX", label: "Ugandan Shilling"),
    Symbol(short: "USD", label: "United States Dollar"),
    Symbol(short: "UYU", label: "Uruguayan Peso"),
    Symbol(short: "UZS", label: "Uzbekistan Som"),
    Symbol(short: "VEF", label: "Venezuelan Bolívar Fuerte"),
    Symbol(short: "VES", label: "Sovereign Bolivar"),
    Symbol(short: "VND", label: "Vietnamese Dong"),
    Symbol(short: "VUV", label: "Vanuatu Vatu"),
    Symbol(short: "WST", label: "Samoan Tala"),
    Symbol(short: "XAF", label: "CFA Franc BEAC"),
    Symbol(short: "XAG", label: "Silver (troy ounce)"),
    Symbol(short: "XAU", label: "Gold (troy ounce)"),
    Symbol(short: "XCD", label: "East Caribbean Dollar"),
    Symbol(short: "XDR", label: "Special Drawing Rights"),
    Symbol(short: "XOF", label: "CFA Franc BCEAO"),
    Symbol(short: "XPF", label: "CFP Franc"),
    Symbol(short: "YER", label: "Yemeni Rial"),
    Symbol(short: "ZAR", label: "South African Rand"),
    Symbol(short: "ZMK", label: "Zambian Kwacha (pre-2013)"),
    Symbol(short: "ZMW", label: "Zambian Kwacha"),
    Symbol(short: "ZWL", label: "Zimbabwean Dollar"),
]

let accessKey = "d9172ed138c32e9c32d5a364443e3652"

struct ContentView: View {

    @State private var fromSymbol: Symbol = symbols[12]
    @State private var rates: [CurrencyRateData] = []
    @State private var amount: Double = 0.0

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    TextField(
                        "Enter your amount", value: $amount, format: .number
                    )
                    .keyboardType(.numberPad)
                    .padding()
                    Picker("Select your currency", selection: $fromSymbol) {
                        ForEach(symbols, id: \.self) { symbol in
                            Text(symbol.label).tag(symbol as Symbol)
                        }
                    }.pickerStyle(.menu).padding()
                    
                    Button(action: {
                        Task {
                            do {
                                rates = []
                                if (amount > 0) {
                                    let symbolId = fromSymbol.short
                                    let dto = try await getExchangeRates(
                                        symbolId: symbolId)
                                    let rateDtos = dto.conversionRates
                                    if dto.result == "success" {
                                        rateDtos?.forEach { key, value in
                                            let calculatedAmount = value * amount
                                            rates.append(
                                                CurrencyRateData(
                                                    short: key,
                                                    rate: calculatedAmount)
                                            )
                                        }
                                    } else {
                                        print(dto)
                                    }
                                }
                            } catch FixerApiError.noSymbolId {
                                print("No Symbol ID")
                            } catch FixerApiError.ApiFailed {
                                print("Failed the API.")
                            } catch FixerApiError.noRates {
                                print("No rates")
                            } catch FixerApiError.decodingFailed {
                                print("Failed to decode.")
                            }
                        }
                    }) {
                        Text("Calculate")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding()
                    
                    ForEach(rates, id: \.id) { rate in
                        Text(
                            "\(rate.short) \(String(format: "%.2f", rate.rate))"
                        )
                    }.padding()
                  
                }
            }.padding()

        }.navigationTitle("Fixer Exhcange Rates")
    }

    func getExchangeRates(symbolId: String) async throws
        -> ExchangeRatesDto
    {

        guard !symbolId.isEmpty else {
            throw FixerApiError.noSymbolId
        }

        let urlText =
            "https://v6.exchangerate-api.com/v6/c59d405dd426e3937d2be5d1/latest/\(symbolId)"

        guard let url = URL(string: urlText) else {
            throw FixerApiError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let response = response as? HTTPURLResponse,
            response.statusCode == 200
        else {
            throw FixerApiError.ApiFailed
        }

        if let jsonResponse = String(data: data, encoding: .utf8) {
            print("Raw JSON response: \(jsonResponse)")
        } else {
            print("Failed to convert data to a string.")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(ExchangeRatesDto.self, from: data)
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
    var id: Int

    let short: String
    let label: String

    init(short: String, label: String) {
        self.id = short.hashValue
        self.short = short
        self.label = label
    }
}

struct CurrencyRateData: Identifiable {
    let id: Int
    let short: String
    let rate: Double

    init(short: String, rate: Double) {
        self.id = short.hashValue
        self.short = short
        self.rate = rate
    }
}

struct ExchangeRatesDto: Codable {
    let result: String
    let documentation, termsOfUse: String
    let timeLastUpdateUnix: Int
    let timeLastUpdateUTC: String
    let timeNextUpdateUnix: Int
    let timeNextUpdateUTC, baseCode: String
    let conversionRates: [String: Double]?

    enum CodingKeys: String, CodingKey {
        case result, documentation
        case termsOfUse = "terms_of_use"
        case timeLastUpdateUnix = "time_last_update_unix"
        case timeLastUpdateUTC = "time_last_update_utc"
        case timeNextUpdateUnix = "time_next_update_unix"
        case timeNextUpdateUTC = "time_next_update_utc"
        case baseCode = "base_code"
        case conversionRates = "conversion_rates"
    }
}

#Preview {
    ContentView()
}
