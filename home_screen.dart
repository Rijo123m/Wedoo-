import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../widgets/common/app_bar_widget.dart';
import '../../widgets/home/service_card_widget.dart';
import '../../widgets/home/shop_card_widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الرئيسية',
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Logo Section
            _buildLogoSection(),
            
            const SizedBox(height: 32),
            
            // Service Cards Section
            _buildServiceCardsSection(),
            
            const SizedBox(height: 24),
            
            // Quick Actions Section
            _buildQuickActionsSection(),
            
            const SizedBox(height: 24),
            
            // Recent Orders Section
            _buildRecentOrdersSection(),
          ],
        ),
      ),
    );
  }
  
  Widget _buildLogoSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          // App Logo
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: const Icon(
              Icons.home_repair_service,
              size: 60,
              color: AppColors.textOnPrimary,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Welcome Text
          Text(
            'مرحباً بك في بريمو',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: 8),
          
          Text(
            'منصتك الموثوقة للخدمات المنزلية والمنتجات',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
  
  Widget _buildServiceCardsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'خدماتنا',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        
        const SizedBox(height: 16),
        
        // Services Card
        ServiceCardWidget(
          title: 'صنايعي بريمو',
          subtitle: 'احصل على أفضل الخدمات المنزلية',
          description: 'كهرباء • سباكة • حدادة • نجارة • دهان',
          icon: Icons.build,
          gradient: AppColors.primaryGradient,
          onTap: () {
            // Navigate to services
            // context.go(AppRoutes.services);
          },
        ),
        
        const SizedBox(height: 16),
        
        // Shops Card
        ShopCardWidget(
          title: 'محلات ومعارض',
          subtitle: 'تسوق مواد البناء والصيانة',
          description: 'أدوات • مواد كهربائية • مواد سباكة • مواد بناء',
          icon: Icons.store,
          gradient: AppColors.secondaryGradient,
          onTap: () {
            // Navigate to shops
            // context.go(AppRoutes.shops);
          },
        ),
      ],
    );
  }
  
  Widget _buildQuickActionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'إجراءات سريعة',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        
        const SizedBox(height: 16),
        
        Row(
          children: [
            Expanded(
              child: _buildQuickActionCard(
                icon: Icons.search,
                title: 'البحث',
                subtitle: 'ابحث عن خدمة أو منتج',
                color: AppColors.info,
                onTap: () {
                  // Navigate to search
                  // context.go(AppRoutes.search);
                },
              ),
            ),
            
            const SizedBox(width: 12),
            
            Expanded(
              child: _buildQuickActionCard(
                icon: Icons.location_on,
                title: 'قريب مني',
                subtitle: 'اعثر على خدمات قريبة',
                color: AppColors.success,
                onTap: () {
                  // Navigate to map
                  // context.go(AppRoutes.map);
                },
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 12),
        
        Row(
          children: [
            Expanded(
              child: _buildQuickActionCard(
                icon: Icons.favorite,
                title: 'المفضلة',
                subtitle: 'خدماتك ومنتجاتك المفضلة',
                color: AppColors.error,
                onTap: () {
                  // Navigate to favorites
                },
              ),
            ),
            
            const SizedBox(width: 12),
            
            Expanded(
              child: _buildQuickActionCard(
                icon: Icons.support_agent,
                title: 'الدعم',
                subtitle: 'تواصل معنا للمساعدة',
                color: AppColors.warning,
                onTap: () {
                  // Navigate to support
                  // context.go(AppRoutes.contact);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
  
  Widget _buildQuickActionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: color,
                  size: 24,
                ),
              ),
              
              const SizedBox(height: 12),
              
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 4),
              
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildRecentOrdersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'طلباتك الأخيرة',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            
            TextButton(
              onPressed: () {
                // Navigate to orders
                // context.go(AppRoutes.orders);
              },
              child: const Text('عرض الكل'),
            ),
          ],
        ),
        
        const SizedBox(height: 16),
        
        // Recent Orders List
        _buildRecentOrdersList(),
      ],
    );
  }
  
  Widget _buildRecentOrdersList() {
    // Mock data for recent orders
    final recentOrders = [
      {
        'id': '1',
        'type': 'service',
        'title': 'إصلاح كهرباء',
        'provider': 'أحمد الكهربائي',
        'status': 'completed',
        'date': '2024-01-15',
        'price': '45 د.ت',
      },
      {
        'id': '2',
        'type': 'product',
        'title': 'كابل كهربائي',
        'shop': 'متجر المواد الكهربائية',
        'status': 'delivered',
        'date': '2024-01-12',
        'price': '25 د.ت',
      },
    ];
    
    if (recentOrders.isEmpty) {
      return _buildEmptyOrdersState();
    }
    
    return Column(
      children: recentOrders.map((order) {
        return _buildOrderCard(order);
      }).toList(),
    );
  }
  
  Widget _buildOrderCard(Map<String, dynamic> order) {
    final isService = order['type'] == 'service';
    final statusColor = AppColors.getOrderStatusColor(order['status']);
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: () {
          // Navigate to order details
          final route = isService 
              ? AppRoutes.serviceOrderDetails.replaceAll(':id', order['id'])
              : AppRoutes.productOrderDetails.replaceAll(':id', order['id']);
          // context.go(route);
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Order Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  isService ? Icons.build : Icons.shopping_bag,
                  color: statusColor,
                  size: 24,
                ),
              ),
              
              const SizedBox(width: 16),
              
              // Order Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      order['title'],
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    const SizedBox(height: 4),
                    
                    Text(
                      isService ? order['provider'] : order['shop'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            _getStatusText(order['status']),
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: statusColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        
                        const Spacer(),
                        
                        Text(
                          order['price'],
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Arrow Icon
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.textTertiary,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildEmptyOrdersState() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 64,
            color: AppColors.textTertiary,
          ),
          
          const SizedBox(height: 16),
          
          Text(
            'لا توجد طلبات حتى الآن',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
          
          const SizedBox(height: 8),
          
          Text(
            'ابدأ بطلب خدمة أو تسوق منتج',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.textTertiary,
            ),
          ),
          
          const SizedBox(height: 24),
          
          ElevatedButton(
            onPressed: () {
              // Navigate to services
              // context.go(AppRoutes.services);
            },
            child: const Text('استكشف الخدمات'),
          ),
        ],
      ),
    );
  }
  
  String _getStatusText(String status) {
    switch (status) {
      case 'pending':
        return 'في الانتظار';
      case 'confirmed':
        return 'مؤكد';
      case 'in_progress':
        return 'قيد التنفيذ';
      case 'completed':
        return 'مكتمل';
      case 'delivered':
        return 'تم التسليم';
      case 'cancelled':
        return 'ملغي';
      default:
        return status;
    }
  }
}

