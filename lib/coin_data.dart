import 'networking.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '92943D8A-7461-42EB-997A-92AB545CE682';

class CoinData {
  Future getPrice(currency) async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=$apiKey');
    return await networkHelper.getData();
  }
}
