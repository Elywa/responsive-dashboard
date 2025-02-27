import 'package:dashboard/utils/app_assets.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(14),
          image: DecorationImage(
            image: AssetImage(Assets.imagesCreditCard),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 31, top: 20, right: 69 - 56),

              child: ListTile(
                title: Text(
                  "Name card",
                  style: AppStyles.textRegular16.copyWith(color: Colors.white),
                ),
                subtitle: Text("Syah Bandi", style: AppStyles.textMedium20),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.textSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.textRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 27),
          ],
        ),
      ),
    );
  }
}