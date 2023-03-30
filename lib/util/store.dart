class Store {
  String ImageName;
  String itemImage;
  Store.items({
    required this.itemImage,
    required this.ImageName,
  });
}

List<Store> StoreItems = [
  Store.items(
    itemImage:
        'https://th.bing.com/th/id/OIP.sIMaRhEHogXQcRyPIRNyMQHaLI?pid=ImgDet&rs=1',
    ImageName: 'Book Appointment',
  ),
  Store.items(
    itemImage:
        'https://th.bing.com/th/id/OIP.4illNkKL3CEOEDhyNnFBiQHaE7?pid=ImgDet&rs=1s',
    ImageName: 'Instant Video Consult',
  ),
  Store.items(
    itemImage:
        'https://thumbs.dreamstime.com/b/close-up-serious-female-surgeon-doctor-26774820.jpg',
    ImageName: 'Surgeries',
  ),
  Store.items(
    itemImage:
        'https://th.bing.com/th/id/OIP.YnjHaRB0xZVg5yoMeBOT9AAAAA?pid=ImgDet&w=248&h=177&rs=1',
    ImageName: 'Lab Test',
  ),
  Store.items(
    itemImage:
        'https://th.bing.com/th/id/R.a37d08ee1cea3b8355b82a4ffdd1149f?rik=gpQCJRebqKmWLw&riu=http%3a%2f%2fc.tribune.com.pk%2f2016%2f12%2f1277993-Medicines-1482954340-748-640x480.jpg&ehk=HFMvfshF4x7FouAKoX%2fxKoyLZoXjo4bEYFQKYDiv5Sk%3d&risl=&pid=ImgRaw&r=0',
    ImageName: 'Pharmacy',
  ),
  Store.items(
    itemImage:
        'https://th.bing.com/th/id/OIP.N2nSd_bi79JCcN2NVhj6zAAAAA?pid=ImgDet&w=200&h=300&rs=1',
    ImageName: 'Insurance',
  )
];
