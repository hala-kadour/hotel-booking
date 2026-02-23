import 'package:flutter/material.dart';
import 'package:hotel_booking/config/theme/app_colors.dart';
import 'package:hotel_booking/config/theme/app_fonts.dart';
import 'package:hotel_booking/config/theme/app_text_styles.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _focusedDay = DateTime(2024, 9, 1);
  DateTime? _selectedDay;

  final List<DateTime> _bookingDates = [
    DateTime(2024, 9, 19),
    DateTime(2024, 9, 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grayLighter,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.only(bottom: 16),
      child: TableCalendar(
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: _focusedDay,
        selectedDayPredicate: (day) => isSameDay(_selectedDay, day),

        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: false,
          titleTextStyle: AppTextStyles.bodySemiBold(),
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
        ),

        // تخصيص شكل الأيام
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false, // إخفاء أيام الشهر السابق/التالي
          defaultTextStyle: AppTextStyles.labelMedium(
            fontFamily: AppFonts.plusJakartaSans,
          ),
          weekendTextStyle: AppTextStyles.labelMedium(
            fontFamily: AppFonts.plusJakartaSans,
          ),

          // شكل اليوم المختار حالياً (إذا ضغط المستخدم)
          selectedDecoration: const BoxDecoration(
            color: AppColors.primaryColor, // لون أزرق مطابق للصورة
            shape: BoxShape.circle,
          ),

          // شكل يوم "اليوم" (Today)
          todayDecoration: BoxDecoration(
            color: AppColors.blueLighter,
            shape: BoxShape.circle,
          ),
        ),

        // منطق عرض الدوائر الزرقاء (Markers) كما في الصورة
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            for (DateTime d in _bookingDates) {
              if (isSameDay(day, d)) {
                return Center(
                  child: Container(
                    width: 35,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor, // اللون الأزرق البريماري
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${day.day}',
                      style: const TextStyle(color: AppColors.textOnAction),
                    ),
                  ),
                );
              }
            }
            return null;
          },
        ),

        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
      ),
    );
  }
}
