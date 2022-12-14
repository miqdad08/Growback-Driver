class ProductModel {
  String imageUrls;
  String title;
  String price;

  ProductModel({
    required this.imageUrls,
    required this.title,
    required this.price,
  });
}

var productList = [
  ProductModel(
    imageUrls:
        'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
    title: 'Enjoy1',
    price: 'Rp30.000',
  ),
  ProductModel(
    imageUrls:
        'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60',
    title: 'Double Enjoy',
    price: 'Rp30.000',
  ),
  ProductModel(
    imageUrls:
        "https://images.unsplash.com/photo-1596662951482-0c4ba74a6df6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    title: 'Aaman',
    price: 'Rp30.000',
  ),
  ProductModel(
    imageUrls:
        'https://images.unsplash.com/photo-1551782450-a2132b4ba21d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',
    title: 'Aaman2',
    price: 'Rp30.000',
  ),
  ProductModel(
    imageUrls:
        'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    title: 'Burger Aaman',
    price: 'Rp30.000',
  ),
];
