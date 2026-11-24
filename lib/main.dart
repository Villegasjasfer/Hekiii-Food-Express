import 'package:flutter/material.dart';

void main() => runApp(const HekiiiFoodExpressApp());

const _orange = Color(0xFFE95C3B);
const _ink = Color(0xFF20231F);
const _muted = Color(0xFF82867F);
const _paper = Color(0xFFFAF9F5);

class HekiiiFoodExpressApp extends StatelessWidget {
  const HekiiiFoodExpressApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Hekiii Food Express',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: _paper,
      colorScheme: ColorScheme.fromSeed(seedColor: _orange, surface: _paper),
      fontFamily: 'Roboto',
    ),
    home: const Storefront(),
  );
}

class FoodItem {
  const FoodItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.category,
    required this.emoji,
    required this.imageUrl,
    this.popular = false,
  });

  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final String category;
  final String emoji;
  final String imageUrl;
  final bool popular;
}

class OrderLine {
  const OrderLine({required this.item, required this.quantity});

  final FoodItem item;
  final int quantity;
}

class PlacedOrder {
  const PlacedOrder({
    required this.number,
    required this.items,
    required this.total,
    required this.deliveryLocation,
  });

  final int number;
  final List<OrderLine> items;
  final double total;
  final String deliveryLocation;
}

class CustomerProfile {
  const CustomerProfile({
    required this.name,
    required this.email,
    required this.phone,
  });

  final String name;
  final String email;
  final String phone;
}

const _menu = [
  FoodItem(
    id: 'classic-burger',
    name: 'Classic Cheeseburger',
    description: 'Angus beef, cheddar, house sauce',
    price: 189,
    rating: 4.9,
    category: 'Burgers',
    emoji: '🍔',
    imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=640&q=85',
    popular: true,
  ),
  FoodItem(
    id: 'margherita-pizza',
    name: 'Margherita Pizza',
    description: 'Fresh basil, mozzarella, tomato',
    price: 249,
    rating: 4.8,
    category: 'Pizza',
    emoji: '🍕',
    imageUrl: 'https://images.unsplash.com/photo-1579751626657-72bc17010498?w=640&q=85',
    popular: true,
  ),
  FoodItem(
    id: 'crispy-chicken',
    name: 'Crispy Chicken',
    description: 'Golden fried chicken, spicy mayo',
    price: 169,
    rating: 4.7,
    category: 'Burgers',
    emoji: '🍗',
    imageUrl: 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=640&q=85',
  ),
  FoodItem(
    id: 'salmon-poke',
    name: 'Salmon Poke Bowl',
    description: 'Fresh salmon, avocado, sesame',
    price: 219,
    rating: 4.9,
    category: 'Asian',
    emoji: '🍱',
    imageUrl:
        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=640&q=85',
    popular: true,
  ),
  FoodItem(
    id: 'loaded-fries',
    name: 'Loaded Truffle Fries',
    description: 'Parmesan, truffle oil, herbs',
    price: 129,
    rating: 4.6,
    category: 'Sides',
    emoji: '🍟',
    imageUrl: 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=640&q=85',
  ),
  FoodItem(
    id: 'ramen-bowl',
    name: 'Tonkotsu Ramen',
    description: 'Slow-simmered broth, soft egg',
    price: 229,
    rating: 4.8,
    category: 'Asian',
    emoji: '🍜',
    imageUrl: 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=640&q=85',
  ),
  FoodItem(
    id: 'berry-smoothie',
    name: 'Berry Smoothie',
    description: 'Strawberry, blueberry, banana',
    price: 99,
    rating: 4.7,
    category: 'Drinks',
    emoji: '🥤',
    imageUrl: 'https://images.unsplash.com/photo-1505252585461-04db1eb84625?w=640&q=85',
  ),
  FoodItem(
    id: 'garden-salad',
    name: 'Garden Fresh Salad',
    description: 'Greens, cherry tomato, feta',
    price: 149,
    rating: 4.6,
    category: 'Healthy',
    emoji: '🥗',
    imageUrl: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=640&q=85',
  ),
  FoodItem(
    id: 'bbq-bacon-burger',
    name: 'Smoky BBQ Bacon Burger',
    description: 'Smoky bacon, cheddar, BBQ glaze',
    price: 219,
    rating: 4.8,
    category: 'Burgers',
    emoji: '🍔',
    imageUrl:
        'https://images.unsplash.com/photo-1553979459-d2229ba7433a?w=640&q=85',
  ),
  FoodItem(
    id: 'pepperoni-pizza',
    name: 'Pepperoni Feast Pizza',
    description: 'Loaded pepperoni, mozzarella, oregano',
    price: 279,
    rating: 4.8,
    category: 'Pizza',
    emoji: '🍕',
    imageUrl: 'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=640&q=85',
  ),
  FoodItem(
    id: 'beef-tacos',
    name: 'Street-Style Beef Tacos',
    description: 'Seasoned beef, salsa, fresh lime',
    price: 179,
    rating: 4.7,
    category: 'Sides',
    emoji: '🌮',
    imageUrl:
        'https://images.unsplash.com/photo-1551504734-5ee1c4a1479b?w=640&q=85',
  ),
  FoodItem(
    id: 'teriyaki-bowl',
    name: 'Chicken Teriyaki Bowl',
    description: 'Grilled chicken, rice, sesame glaze',
    price: 199,
    rating: 4.8,
    category: 'Asian',
    emoji: '🍱',
    imageUrl:
        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=640&q=85',
  ),
  FoodItem(
    id: 'spicy-tuna-roll',
    name: 'Spicy Tuna Roll',
    description: 'Fresh tuna, avocado, spicy mayo',
    price: 189,
    rating: 4.7,
    category: 'Asian',
    emoji: '🍣',
    imageUrl: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=640&q=85',
  ),
  FoodItem(
    id: 'pancake-stack',
    name: 'Fluffy Pancake Stack',
    description: 'Buttermilk pancakes, berries, maple',
    price: 159,
    rating: 4.8,
    category: 'Breakfast',
    emoji: '🥞',
    imageUrl: 'https://images.unsplash.com/photo-1528207776546-365bb710ee93?w=640&q=85',
  ),
  FoodItem(
    id: 'lava-cake',
    name: 'Chocolate Lava Cake',
    description: 'Warm chocolate cake, vanilla cream',
    price: 119,
    rating: 4.9,
    category: 'Desserts',
    emoji: '🍰',
    imageUrl: 'https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=640&q=85',
  ),
  FoodItem(
    id: 'mango-cheesecake',
    name: 'Mango Cheesecake',
    description: 'Creamy cheesecake, fresh mango',
    price: 139,
    rating: 4.8,
    category: 'Desserts',
    emoji: '🍰',
    imageUrl: 'https://images.unsplash.com/photo-1533134242443-d4fd215305ad?w=640&q=85',
  ),
  FoodItem(
    id: 'iced-caramel-latte',
    name: 'Iced Caramel Latte',
    description: 'Chilled espresso, milk, caramel',
    price: 109,
    rating: 4.7,
    category: 'Drinks',
    emoji: '🧋',
    imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=640&q=85',
  ),
  FoodItem(
    id: 'chicken-adobo',
    name: 'Chicken Adobo Plate',
    description: 'Slow-braised chicken, garlic rice',
    price: 199,
    rating: 4.9,
    category: 'Filipino',
    emoji: '🍗',
    imageUrl: 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=640&q=85',
    popular: true,
  ),
  FoodItem(
    id: 'pork-sisig',
    name: 'Sizzling Pork Sisig',
    description: 'Sizzling pork, calamansi, steamed rice',
    price: 189,
    rating: 4.8,
    category: 'Filipino',
    emoji: '🍳',
    imageUrl:
        'https://images.unsplash.com/photo-1547592180-85f173990554?w=640&q=85',
  ),
  FoodItem(
    id: 'pancit-canton',
    name: 'Pancit Canton',
    description: 'Stir-fried noodles, vegetables, chicken',
    price: 169,
    rating: 4.7,
    category: 'Filipino',
    emoji: '🍜',
    imageUrl: 'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=640&q=85',
  ),
  FoodItem(
    id: 'garlic-shrimp',
    name: 'Garlic Butter Shrimp',
    description: 'Juicy shrimp, garlic butter, steamed rice',
    price: 239,
    rating: 4.8,
    category: 'Asian',
    emoji: '🍤',
    imageUrl:
        'https://images.unsplash.com/photo-1559737558-2f5a35f4523b?w=640&q=85',
  ),
  FoodItem(
    id: 'parmesan-wings',
    name: 'Garlic Parmesan Wings',
    description: 'Crispy wings, parmesan, garlic dip',
    price: 179,
    rating: 4.7,
    category: 'Sides',
    emoji: '🍗',
    imageUrl: 'https://images.unsplash.com/photo-1608039829572-78524f79c4c7?w=640&q=85',
  ),
  FoodItem(
    id: 'avocado-toast',
    name: 'Avocado Breakfast Toast',
    description: 'Sourdough, smashed avocado, poached egg',
    price: 149,
    rating: 4.7,
    category: 'Breakfast',
    emoji: '🥑',
    imageUrl: 'https://images.unsplash.com/photo-1525351484163-7529414344d8?w=640&q=85',
  ),
  FoodItem(
    id: 'banana-turon',
    name: 'Crispy Banana Turon',
    description: 'Sweet banana rolls, caramel drizzle',
    price: 89,
    rating: 4.8,
    category: 'Desserts',
    emoji: '🍌',
    imageUrl: 'https://images.unsplash.com/photo-1488477181946-6428a0291777?w=640&q=85',
  ),
  FoodItem(
    id: 'vanilla-milkshake',
    name: 'Vanilla Milkshake',
    description: 'Creamy vanilla, whipped cream',
    price: 119,
    rating: 4.8,
    category: 'Drinks',
    emoji: '🥤',
    imageUrl: 'https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=640&q=85',
  ),
];

const _categories = [
  'All',
  'Burgers',
  'Pizza',
  'Asian',
  'Filipino',
  'Healthy',
  'Sides',
  'Breakfast',
  'Desserts',
  'Drinks',
];

class Storefront extends StatefulWidget {
  const Storefront({super.key});

  @override
  State<Storefront> createState() => _StorefrontState();
}

class _StorefrontState extends State<Storefront> {
  final _searchController = TextEditingController();
  final Map<String, int> _cart = {};
  final Set<String> _favorites = {};
  final List<String> _locations = ['Home · Cebu City', 'Work · Cebu IT Park'];
  final List<PlacedOrder> _orders = [];
  CustomerProfile _profile = const CustomerProfile(
    name: 'Food lover',
    email: '',
    phone: '',
  );
  String _selectedLocation = 'Home · Cebu City';
  String _category = 'All';
  int _selectedTab = 0;

  int get _cartCount => _cart.values.fold(0, (total, count) => total + count);

  double get _subtotal => _menu
      .where((item) => _cart.containsKey(item.id))
      .fold(0, (total, item) => total + item.price * _cart[item.id]!);

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _changeQuantity(FoodItem item, int change) {
    setState(() {
      final next = (_cart[item.id] ?? 0) + change;
      if (next <= 0) {
        _cart.remove(item.id);
      } else {
        _cart[item.id] = next;
      }
    });
  }

  List<FoodItem> get _visibleItems {
    final query = _searchController.text.trim().toLowerCase();
    return _menu.where((item) {
      final matchesCategory = _category == 'All' || item.category == _category;
      final matchesSearch =
          query.isEmpty ||
          item.name.toLowerCase().contains(query) ||
          item.description.toLowerCase().contains(query);
      final matchesFavorites =
          _selectedTab != 1 || _favorites.contains(item.id);
      return matchesCategory && matchesSearch && matchesFavorites;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isStore = _selectedTab == 0 || _selectedTab == 1;
    return Scaffold(
      body: SafeArea(
        child: isStore
            ? _buildStorePage()
            : _selectedTab == 2
            ? _buildOrdersPage()
            : _buildSecondaryPage(),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_cartCount > 0) _buildCartBar(),
          NavigationBar(
            selectedIndex: _selectedTab,
            onDestinationSelected: (index) =>
                setState(() => _selectedTab = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.storefront_outlined),
                selectedIcon: Icon(Icons.storefront_rounded),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border_rounded),
                selectedIcon: Icon(Icons.favorite_rounded),
                label: 'Favorites',
              ),
              NavigationDestination(
                icon: Icon(Icons.receipt_long_outlined),
                selectedIcon: Icon(Icons.receipt_long_rounded),
                label: 'Orders',
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline_rounded),
                selectedIcon: Icon(Icons.person_rounded),
                label: 'Profile',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStorePage() {
    final items = _visibleItems;
    return LayoutBuilder(
      builder: (context, constraints) {
        final contentWidth = constraints.maxWidth > 900
            ? 900.0
            : constraints.maxWidth;
        return Center(
          child: SizedBox(
            width: contentWidth,
            child: CustomScrollView(
              key: const PageStorageKey('store-scroll'),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(22, 18, 22, 28),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      _buildBrandHeader(),
                      const SizedBox(height: 16),
                      _buildLocationRow(),
                      const SizedBox(height: 27),
                      Text(
                        _selectedTab == 1 ? 'Your favorites' : 'Good food,',
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          height: 1.15,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        _selectedTab == 1
                            ? 'All your feel-good picks in one place.'
                            : 'good mood.',
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          height: 1.15,
                        ),
                      ),
                      if (_selectedTab == 0) ...[
                        const SizedBox(height: 7),
                        const Text(
                          'What are you craving today?',
                          style: TextStyle(color: _muted, fontSize: 14),
                        ),
                      ],
                      const SizedBox(height: 21),
                      _buildSearchField(),
                      if (_selectedTab == 0) ...[
                        const SizedBox(height: 20),
                        _buildPromoBanner(),
                        const SizedBox(height: 25),
                        _buildCategorySelector(),
                      ],
                      const SizedBox(height: 22),
                      Row(
                        children: [
                          Text(
                            _selectedTab == 1
                                ? 'Saved for later'
                                : _category == 'All'
                                ? 'Popular right now'
                                : _category,
                            style: const TextStyle(
                              color: _ink,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Spacer(),
                          if (_selectedTab == 0)
                            TextButton(
                              onPressed: () =>
                                  setState(() => _category = 'All'),
                              child: const Text(
                                'See all',
                                style: TextStyle(
                                  color: _orange,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ]),
                  ),
                ),
                if (items.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: _buildEmptyState(
                      _selectedTab == 1
                          ? 'No favorites yet'
                          : 'No dishes found',
                      _selectedTab == 1
                          ? 'Tap the heart on a dish to save it here.'
                          : 'Try a different search or category.',
                      Icons.search_rounded,
                    ),
                  )
                else
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(22, 0, 22, 28),
                    sliver: SliverLayoutBuilder(
                      builder: (context, sliverConstraints) {
                        final width = sliverConstraints.crossAxisExtent;
                        final columns = width >= 760
                            ? 4
                            : width >= 520
                            ? 3
                            : 2;
                        return SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: columns,
                                crossAxisSpacing: 14,
                                mainAxisSpacing: 14,
                                childAspectRatio: width < 360 ? 0.68 : 0.72,
                              ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => _buildFoodCard(items[index]),
                            childCount: items.length,
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBrandHeader() => Row(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          key: const ValueKey('app-logo'),
          'assets/images/hekiii_food_express_logo.png',
          width: 68,
          height: 68,
          fit: BoxFit.cover,
          semanticLabel: 'Hekiii Food Express logo',
        ),
      ),
      const SizedBox(width: 13),
      const Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hekiii Food Express',
              style: TextStyle(
                color: _ink,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Fresh favorites, delivered fast.',
              style: TextStyle(color: _muted, fontSize: 12),
            ),
          ],
        ),
      ),
    ],
  );

  Widget _buildLocationRow() => Row(
    children: [
      Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: const Color(0xFFFFEEE8),
          borderRadius: BorderRadius.circular(14),
        ),
        child: const Icon(Icons.location_on_rounded, color: _orange, size: 22),
      ),
      const SizedBox(width: 11),
      Expanded(
        child: InkWell(
          key: const ValueKey('delivery-location-selector'),
          onTap: _showLocations,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'DELIVERING TO',
                  style: TextStyle(
                    color: _muted,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        _selectedLocation,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down_rounded, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      const SizedBox(width: 8),
      Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFECEBE5)),
        ),
        child: const Icon(Icons.notifications_none_rounded, color: _ink),
      ),
    ],
  );

  Future<void> _showLocations() => showModalBottomSheet<void>(
    context: context,
    backgroundColor: _paper,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (sheetContext) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(4, 0, 4, 10),
              child: Text(
                'Delivery locations',
                style: TextStyle(
                  color: _ink,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ..._locations.map(
              (location) => ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 4),
                leading: const Icon(Icons.location_on_outlined, color: _orange),
                title: Text(location),
                trailing: location == _selectedLocation
                    ? const Icon(Icons.check_circle_rounded, color: _orange)
                    : null,
                onTap: () {
                  setState(() => _selectedLocation = location);
                  Navigator.pop(sheetContext);
                },
              ),
            ),
            ListTile(
              key: const ValueKey('add-location'),
              contentPadding: const EdgeInsets.symmetric(horizontal: 4),
              leading: const Icon(Icons.add_location_alt_outlined, color: _ink),
              title: const Text('Add another location'),
              onTap: () async {
                final location = await _promptForLocation();
                if (location == null || !mounted) return;
                setState(() {
                  _locations.add(location);
                  _selectedLocation = location;
                });
                if (sheetContext.mounted) Navigator.pop(sheetContext);
              },
            ),
          ],
        ),
      ),
    ),
  );

  Future<String?> _promptForLocation() {
    final formKey = GlobalKey<FormState>();
    var location = '';
    return showDialog<String>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Add a delivery location'),
        content: Form(
          key: formKey,
          child: TextFormField(
            autofocus: true,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              hintText: 'Street, building, or area',
            ),
            onSaved: (value) => location = value?.trim() ?? '',
            validator: (value) => value == null || value.trim().isEmpty
                ? 'Enter a delivery location.'
                : null,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(dialogContext, location);
              }
            },
            child: const Text('Save location'),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField() => TextField(
    controller: _searchController,
    onChanged: (_) => setState(() {}),
    textInputAction: TextInputAction.search,
    decoration: InputDecoration(
      hintText: 'Search dishes, restaurants...',
      hintStyle: const TextStyle(color: _muted, fontSize: 14),
      prefixIcon: const Icon(Icons.search_rounded, color: _muted),
      suffixIcon: _searchController.text.isEmpty
          ? null
          : IconButton(
              tooltip: 'Clear search',
              onPressed: () {
                _searchController.clear();
                setState(() {});
              },
              icon: const Icon(Icons.close_rounded, color: _muted),
            ),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Color(0xFFEEEDE7)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Color(0xFFEEEDE7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: _orange, width: 1.4),
      ),
    ),
  );

  Widget _buildPromoBanner() => Container(
    height: 164,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      color: const Color(0xFF312D26),
      borderRadius: BorderRadius.circular(22),
    ),
    child: Stack(
      children: [
        Positioned(
          right: -25,
          top: -34,
          child: Container(
            width: 192,
            height: 192,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white12, width: 25),
            ),
          ),
        ),
        Positioned(
          right: -1,
          top: 0,
          bottom: 0,
          width: 181,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=640&q=85',
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => const Center(
                child: Text('🍔', style: TextStyle(fontSize: 76)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 18,
          top: 12,
          bottom: 12,
          right: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: _orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '20% OFF FIRST ORDER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.35,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Big bites.\nLittle prices.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                  height: 1.05,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _buildCategorySelector() => SizedBox(
    height: 43,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
      separatorBuilder: (_, _) => const SizedBox(width: 8),
      itemBuilder: (context, index) {
        final category = _categories[index];
        final selected = category == _category;
        return ChoiceChip(
          label: Text(category),
          selected: selected,
          onSelected: (_) => setState(() => _category = category),
          showCheckmark: false,
          labelStyle: TextStyle(
            color: selected ? Colors.white : _ink,
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
          selectedColor: _ink,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
            side: BorderSide(color: selected ? _ink : const Color(0xFFECEBE5)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 7),
        );
      },
    ),
  );

  Widget _buildFoodCard(FoodItem item) {
    final favorite = _favorites.contains(item.id);
    final quantity = _cart[item.id] ?? 0;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFF0EFEA)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 11,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) => progress == null
                      ? child
                      : Container(
                          color: const Color(0xFFF3EEE7),
                          alignment: Alignment.center,
                          child: Text(
                            item.emoji,
                            style: const TextStyle(fontSize: 40),
                          ),
                        ),
                  errorBuilder: (_, _, _) => Container(
                    color: const Color(0xFFF3EEE7),
                    alignment: Alignment.center,
                    child: Text(
                      item.emoji,
                      style: const TextStyle(fontSize: 42),
                    ),
                  ),
                ),
                if (item.popular)
                  Positioned(
                    top: 9,
                    left: 9,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.local_fire_department_rounded,
                            color: _orange,
                            size: 12,
                          ),
                          SizedBox(width: 3),
                          Text(
                            'Popular',
                            style: TextStyle(
                              color: _ink,
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Material(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () => setState(() {
                        if (favorite) {
                          _favorites.remove(item.id);
                        } else {
                          _favorites.add(item.id);
                        }
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Icon(
                          favorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          color: favorite ? _orange : _ink,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(11, 8, 11, 9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Color(0xFFF6AB34),
                        size: 14,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        item.rating.toString(),
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        item.category,
                        style: const TextStyle(color: _muted, fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: _ink,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    item.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: _muted, fontSize: 10),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          _price(item.price),
                          style: const TextStyle(
                            color: _ink,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      if (quantity == 0)
                        SizedBox(
                          width: 31,
                          height: 31,
                          child: IconButton(
                            key: ValueKey('add-${item.id}'),
                            onPressed: () => _changeQuantity(item, 1),
                            tooltip: 'Add ${item.name} to cart',
                            padding: EdgeInsets.zero,
                            style: IconButton.styleFrom(
                              backgroundColor: _orange,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            icon: const Icon(Icons.add_rounded, size: 20),
                          ),
                        )
                      else
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFEEE8),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            children: [
                              _quantityButton(
                                Icons.remove_rounded,
                                () => _changeQuantity(item, -1),
                                'Remove one ${item.name}',
                              ),
                              Text(
                                '$quantity',
                                style: const TextStyle(
                                  color: _ink,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              _quantityButton(
                                Icons.add_rounded,
                                () => _changeQuantity(item, 1),
                                'Add one ${item.name}',
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _quantityButton(IconData icon, VoidCallback onPressed, String label) =>
      SizedBox(
        width: 26,
        height: 30,
        child: IconButton(
          onPressed: onPressed,
          tooltip: label,
          padding: EdgeInsets.zero,
          iconSize: 15,
          icon: Icon(icon, color: _orange),
        ),
      );

  Widget _buildCartBar() => Padding(
    padding: const EdgeInsets.fromLTRB(16, 10, 16, 6),
    child: SizedBox(
      width: double.infinity,
      height: 54,
      child: FilledButton(
        onPressed: _showCart,
        style: FilledButton.styleFrom(
          backgroundColor: _ink,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Text(
                '$_cartCount',
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(width: 11),
            const Text(
              'View your cart',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
            ),
            const Spacer(),
            Text(
              _price(_subtotal),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.arrow_forward_rounded, size: 18),
          ],
        ),
      ),
    ),
  );

  Future<void> _showCart() => showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: _paper,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (sheetContext) => StatefulBuilder(
      builder: (context, refreshSheet) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 18, 22, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Your order',
                      style: TextStyle(
                        color: _ink,
                        fontSize: 23,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(sheetContext),
                    icon: const Icon(Icons.close_rounded),
                    tooltip: 'Close cart',
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ..._menu
                  .where((item) => _cart.containsKey(item.id))
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 9),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              item.imageUrl,
                              width: 54,
                              height: 54,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) => Container(
                                width: 54,
                                height: 54,
                                color: const Color(0xFFF3EEE7),
                                alignment: Alignment.center,
                                child: Text(
                                  item.emoji,
                                  style: const TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: _ink,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  _price(item.price * _cart[item.id]!),
                                  style: const TextStyle(
                                    color: _muted,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _quantityButton(Icons.remove_rounded, () {
                            _changeQuantity(item, -1);
                            refreshSheet(() {});
                            if (_cart.isEmpty) {
                              Navigator.pop(sheetContext);
                            }
                          }, 'Remove one ${item.name}'),
                          Text(
                            '${_cart[item.id]}',
                            style: const TextStyle(
                              color: _ink,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          _quantityButton(Icons.add_rounded, () {
                            _changeQuantity(item, 1);
                            refreshSheet(() {});
                          }, 'Add one ${item.name}'),
                        ],
                      ),
                    ),
                  ),
              const Divider(height: 25),
              Row(
                children: [
                  const Text(
                    'Subtotal',
                    style: TextStyle(color: _muted, fontSize: 14),
                  ),
                  const Spacer(),
                  Text(
                    _price(_subtotal),
                    style: const TextStyle(
                      color: _ink,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: FilledButton(
                  onPressed: _cart.isEmpty
                      ? null
                      : () => _placeOrder(sheetContext),
                  style: FilledButton.styleFrom(
                    backgroundColor: _orange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Place order',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  void _placeOrder(BuildContext sheetContext) {
    final orderItems = _menu
        .where((item) => _cart.containsKey(item.id))
        .map((item) => OrderLine(item: item, quantity: _cart[item.id]!))
        .toList();
    final order = PlacedOrder(
      number: _orders.length + 1,
      items: List.unmodifiable(orderItems),
      total: _subtotal,
      deliveryLocation: _selectedLocation,
    );

    setState(() {
      _orders.insert(0, order);
      _cart.clear();
      _selectedTab = 2;
    });
    Navigator.pop(sheetContext);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Order placed! Your food is on its way.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Widget _buildSecondaryPage() => Center(
    child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 760),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(22, 24, 22, 32),
        children: [
          const Text(
            'Your profile',
            style: TextStyle(
              color: _ink,
              fontSize: 27,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xFFF0EFEA)),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: const Color(0xFFFFEEE8),
                  child: Text(
                    _profile.name.trim().isEmpty
                        ? '?'
                        : _profile.name.trim()[0].toUpperCase(),
                    style: const TextStyle(
                      color: _orange,
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _profile.name,
                        style: const TextStyle(
                          color: _ink,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _profile.email.isEmpty
                            ? 'Add your email address'
                            : _profile.email,
                        style: const TextStyle(color: _muted, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  key: const ValueKey('edit-profile'),
                  onPressed: _editProfile,
                  child: const Text('Edit'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Personal details',
            style: TextStyle(
              color: _ink,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          _buildProfileDetail(
            Icons.person_outline_rounded,
            'Full name',
            _profile.name,
          ),
          _buildProfileDetail(
            Icons.email_outlined,
            'Email',
            _profile.email.isEmpty ? 'Not added yet' : _profile.email,
          ),
          _buildProfileDetail(
            Icons.phone_outlined,
            'Phone number',
            _profile.phone.isEmpty ? 'Not added yet' : _profile.phone,
          ),
          const SizedBox(height: 20),
          const Text(
            'Delivery address',
            style: TextStyle(
              color: _ink,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFF0EFEA)),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.location_on_outlined, color: _orange),
              title: Text(_selectedLocation),
              subtitle: const Text('Selected for your next order'),
              trailing: TextButton(
                key: const ValueKey('profile-change-address'),
                onPressed: _showLocations,
                child: const Text('Change'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFEEE8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Icon(Icons.receipt_long_rounded, color: _orange),
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Orders placed',
                    style: TextStyle(color: _ink, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  '${_orders.length}',
                  style: const TextStyle(
                    color: _orange,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildProfileDetail(IconData icon, String label, String value) =>
      Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: const Color(0xFFF0EFEA)),
        ),
        child: Row(
          children: [
            Icon(icon, color: _orange, size: 20),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(color: _muted, fontSize: 11),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    value,
                    style: const TextStyle(
                      color: _ink,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Future<void> _editProfile() async {
    final formKey = GlobalKey<FormState>();
    var name = _profile.name;
    var email = _profile.email;
    var phone = _profile.phone;
    final updatedProfile = await showDialog<CustomerProfile>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Edit profile'),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  key: const ValueKey('profile-name'),
                  initialValue: name == 'Food lover' ? '' : name,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(labelText: 'Full name'),
                  onSaved: (value) => name = value?.trim() ?? '',
                  validator: (value) => value == null || value.trim().isEmpty
                      ? 'Enter your name.'
                      : null,
                ),
                TextFormField(
                  key: const ValueKey('profile-email'),
                  initialValue: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'Email'),
                  onSaved: (value) => email = value?.trim() ?? '',
                  validator: (value) {
                    final enteredEmail = value?.trim() ?? '';
                    if (enteredEmail.isNotEmpty &&
                        !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$')
                            .hasMatch(enteredEmail)) {
                      return 'Enter a valid email address.';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  key: const ValueKey('profile-phone'),
                  initialValue: phone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(labelText: 'Phone number'),
                  onSaved: (value) => phone = value?.trim() ?? '',
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              if (!formKey.currentState!.validate()) return;
              formKey.currentState!.save();
              Navigator.pop(
                dialogContext,
                CustomerProfile(name: name, email: email, phone: phone),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
    if (updatedProfile == null || !mounted) return;
    setState(() => _profile = updatedProfile);
  }

  Widget _buildOrdersPage() {
    if (_orders.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 82,
                height: 82,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEEE8),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: const Icon(
                  Icons.receipt_long_rounded,
                  color: _orange,
                  size: 38,
                ),
              ),
              const SizedBox(height: 18),
              const Text(
                'No orders yet',
                style: TextStyle(
                  color: _ink,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Your delicious discoveries will show up here.',
                textAlign: TextAlign.center,
                style: TextStyle(color: _muted, height: 1.5),
              ),
              const SizedBox(height: 18),
              FilledButton(
                onPressed: () => setState(() => _selectedTab = 0),
                style: FilledButton.styleFrom(
                  backgroundColor: _orange,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Explore the menu'),
              ),
            ],
          ),
        ),
      );
    }

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 760),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(22, 24, 22, 32),
          children: [
            const Text(
              'Your orders',
              style: TextStyle(
                color: _ink,
                fontSize: 27,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Your recent orders and delivery details.',
              style: TextStyle(color: _muted, fontSize: 14),
            ),
            const SizedBox(height: 18),
            ..._orders.map(_buildOrderCard),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderCard(PlacedOrder order) => Container(
    key: ValueKey('order-${order.number}'),
    margin: const EdgeInsets.only(bottom: 14),
    padding: const EdgeInsets.all(17),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      border: Border.all(color: const Color(0xFFF0EFEA)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'Order #${order.number}',
                style: const TextStyle(
                  color: _ink,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFE9F5EC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Confirmed',
                style: TextStyle(
                  color: Color(0xFF38774A),
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            const Icon(Icons.location_on_outlined, color: _orange, size: 18),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                'Deliver to ${order.deliveryLocation}',
                style: const TextStyle(color: _muted, fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(height: 1),
        const SizedBox(height: 9),
        ...order.items.map(
          (line) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    '${line.quantity} × ${line.item.name}',
                    style: const TextStyle(color: _ink, fontSize: 13),
                  ),
                ),
                Text(
                  _price(line.item.price * line.quantity),
                  style: const TextStyle(color: _ink, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 7),
        const Divider(height: 1),
        const SizedBox(height: 9),
        Row(
          children: [
            const Text(
              'Total',
              style: TextStyle(color: _ink, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            Text(
              _price(order.total),
              style: const TextStyle(color: _ink, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ],
    ),
  );

  Widget _buildEmptyState(String title, String subtitle, IconData icon) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: _orange, size: 42),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: _ink,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: _muted),
            ),
          ],
        ),
      ),
    );
  }
}

String _price(double amount) => '₱${amount.toStringAsFixed(2)}';
