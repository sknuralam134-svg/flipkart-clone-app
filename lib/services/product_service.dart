import '../models/product.dart';

class ProductService {
  // For demo purpose - later replace with Firestore
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 800));

    return [
      Product(
        id: '1',
        name: 'iPhone 15 Pro',
        description: 'Apple iPhone 15 Pro 128GB - Natural Titanium. A17 Pro chip, 48MP camera.',
        price: 134900,
        imageUrl: 'https://m.media-amazon.com/images/I/81Os1SDWpcL._SL1500_.jpg',
        category: 'Electronics',
      ),
      Product(
        id: '2',
        name: 'Samsung Galaxy S24',
        description: 'Samsung Galaxy S24 5G 256GB. Snapdragon 8 Gen 3, 50MP camera.',
        price: 74999,
        imageUrl: 'https://m.media-amazon.com/images/I/71TPda7cwUL._SL1500_.jpg',
        category: 'Electronics',
      ),
      Product(
        id: '3',
        name: 'Nike Air Max',
        description: 'Nike Air Max Running Shoes for Men. Comfortable and stylish.',
        price: 8995,
        imageUrl: 'https://m.media-amazon.com/images/I/71zLvwVXgEL._SL1500_.jpg',
        category: 'Fashion',
      ),
      Product(
        id: '4',
        name: 'Sony WH-1000XM5',
        description: 'Sony Wireless Noise Cancelling Headphones. Best in class ANC.',
        price: 29990,
        imageUrl: 'https://m.media-amazon.com/images/I/61vR3x5sTtL._SL1500_.jpg',
        category: 'Electronics',
      ),
      Product(
        id: '5',
        name: 'Levi\'s Men Jeans',
        description: 'Levi\'s 511 Slim Fit Jeans for Men. Stretchable and comfortable.',
        price: 2499,
        imageUrl: 'https://m.media-amazon.com/images/I/81h4Yw0nKqL._UL1500_.jpg',
        category: 'Fashion',
      ),
      Product(
        id: '6',
        name: 'Boat Airdopes 141',
        description: 'boAt Airdopes 141 True Wireless Earbuds with 42 Hours Playback.',
        price: 1299,
        imageUrl: 'https://m.media-amazon.com/images/I/51HBom8xz7L._SL1500_.jpg',
        category: 'Electronics',
      ),
    ];
  }
}
