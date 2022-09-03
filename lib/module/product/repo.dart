part of './index.dart';

class ProdRepo {
  ProdRepo();

  static Future<VendorGarment> getVendorProdById(String prodId) async {
    final doc =
        await getCollection(c: IoCollection.vendorProd).doc(prodId).get();
    assert(doc.exists);
    // return IoUser(doc.data() as Map<String, dynamic>);
    return VendorGarment.fromJson(doc.data() as Map<String, dynamic>);
  }
}
