class Burc {
  final String _burcAd;
  final String _burcTarih;
  final String _burcDetay;
  final String _burcKucukResim;
  final String _burcBuyuResim;

  get burcAd => _burcAd;
  get burcTarih => _burcTarih;
  get burcDetay => _burcDetay;
  get burcKucukResim => _burcKucukResim;
  get burcBuyuResim => _burcBuyuResim;

  Burc(this._burcAd, this._burcTarih, this._burcDetay, this._burcKucukResim,
      this._burcBuyuResim);

  @override
  String toString() {
    return '$_burcAd - $_burcBuyuResim';
  }
}
