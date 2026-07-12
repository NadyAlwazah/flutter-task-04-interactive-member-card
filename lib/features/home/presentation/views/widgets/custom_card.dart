import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_04_interactive_member_card/core/utils/assets.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;
  void toggleFavorite() {
    setState(() => isFavorite = !isFavorite);
  }

  bool hasNotifications = true;
  void toggleNotificationBadge() {
    setState(() => hasNotifications = !hasNotifications);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildImage(screenWidth),
        _buildFavoriteButton(),
        _buildRankButton(screenWidth),

        if (hasNotifications) _buildBadge(screenWidth),
      ],
    );
  }

  Widget _buildImage(double size) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        AssetsData.cardBackgroundard,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFavoriteButton() {
    // استخدمت Positioned
    //  داخل الطريقة لانو عرفتها كا طريقة خاصة وافترضت اني ما رح عيد استخدامها بمكان ثاني غير بهي الصفحة داخل ال
    // Stack

    return Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        onPressed: toggleFavorite,
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : Colors.black,
        ),
      ),
    );
  }

  Widget _buildRankButton(double size) {
    return InkWell(
      onTap: toggleNotificationBadge,
      child: Container(
        width: size * 0.28,
        height: size * 0.28,
        decoration: BoxDecoration(
          color: const Color(0xFFCDCFD1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: hasNotifications
              ? SvgPicture.asset(
                  AssetsData.crownSVG,
                  width: size * 0.16,
                  height: size * 0.16,
                )
              : Icon(
                  Icons.workspace_premium_outlined,
                  size: size * 0.16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
        ),
      ),
    );
  }

  Widget _buildBadge(double size) {
    return Positioned(
      top: _badgeOffset(size, 5),
      right: _badgeOffset(size, 9),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: size * 0.03,
        child: CircleAvatar(backgroundColor: Colors.red, radius: size * 0.02),
      ),
    );
  }

  double _badgeOffset(double size, double offset) {
    //! نحسب منتصف الكارد ثم نطرح نصف حجم زر الرانك لإيجاد زاويته العليا اليمنى، ثم نزيح البادج قليلاً للخارج
    return (size / 2) - (size * 0.28 / 2) - offset;
  }
}
