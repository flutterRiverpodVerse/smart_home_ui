import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smart_home_ui/core/constants/app_constants.dart';
import 'package:smart_home_ui/gen/assets.gen.dart';

import '../../core/constants/app_colors.dart';
import '../domain/device_model.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    var devices = useState<List<DeviceModel>>(
      [
        DeviceModel(
            name: "Smart fan", icon: Assets.fanIcon.path, powerStatus: false),
        DeviceModel(
            name: "Smart bulb", icon: Assets.bulbIcon.path, powerStatus: false),
        DeviceModel(
            name: "Smart ac", icon: Assets.acIcon.path, powerStatus: false),
        DeviceModel(
            name: "Smart tv", icon: Assets.tvIcon.path, powerStatus: false),
      ],
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_rounded,
                      size: 30.sp,
                    ),
                    Icon(
                      Icons.person,
                      size: 30.sp,
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Welcome back!",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 18.sp,
                            ),
                      ),
                      Text(
                        "Alex",
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  "Devices",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 20.h),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: devices.value.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    var device = devices.value[index];
                    return Padding(
                      padding: EdgeInsets.all(5.spMax),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: isDarkMode
                              ? AppColors.white
                              : device.powerStatus
                                  ? AppColors.black
                                  : AppColors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          children: [
                            Text(
                              device.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    color: isDarkMode
                                        ? AppColors.black
                                        : device.powerStatus
                                            ? AppColors.white
                                            : AppColors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                            SizedBox(height: 10.h),
                            Image.asset(
                              device.icon,
                              height: 50.h,
                              color: isDarkMode
                                  ? AppColors.black
                                  : device.powerStatus
                                      ? AppColors.white
                                      : AppColors.black,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 10.h),
                            CupertinoSwitch(
                              value: device.powerStatus,
                              onChanged: (value) {
                                final updatedDevices =
                                    List<DeviceModel>.from(devices.value);
                                updatedDevices[index] =
                                    device.copyWith(powerStatus: value);
                                devices.value = updatedDevices;
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// DDD Architecture - Domain Driven Design
// from Reso Coder 