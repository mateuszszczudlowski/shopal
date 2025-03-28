import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:template/src/modules/book_screen/bloc/book_bloc.dart';
import 'package:template/src/utils/date_formater.dart';

class BookCalendar extends StatefulWidget {
  const BookCalendar({super.key});

  @override
  State<BookCalendar> createState() => _BookCalendarState();
}

class _BookCalendarState extends State<BookCalendar> {
  CalendarFormat calendarFormat = CalendarFormat.twoWeeks;
  DateTime focusedDay2 = DateTime.now();
  DateTime? selectedDay2;
  DateTime? rangeStart2;
  DateTime? rangeEnd2;
  //  late final ValueNotifier<List<Event>> _selectedEvents;

  @override
  void initState() {
    super.initState();

    selectedDay2 = focusedDay2;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      rangeSelectionMode: RangeSelectionMode.disabled,
      availableGestures: AvailableGestures.horizontalSwipe,
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          final text = DateFormat('E').format(day);
          return Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryContainer),
            ),
          );
        },
      ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      headerStyle: HeaderStyle(
        formatButtonTextStyle: TextStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.secondaryContainer),
        formatButtonDecoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: Theme.of(context).colorScheme.secondaryContainer),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(14.0),
          ),
        ),
        leftChevronIcon: Icon(
          Icons.chevron_left,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        rightChevronIcon: Icon(
          Icons.chevron_right,
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        titleTextStyle: TextStyle(
            fontSize: 17,
            color: Theme.of(context).colorScheme.secondaryContainer),
      ),
      calendarStyle: CalendarStyle(
        weekendTextStyle:
            TextStyle(color: Theme.of(context).colorScheme.onSurface),
        outsideTextStyle:
            TextStyle(color: Theme.of(context).colorScheme.onSurface),
        todayTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w400),
        todayDecoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 1,
                style: BorderStyle.solid),
            color: Colors.transparent,
            shape: BoxShape.circle),
        selectedDecoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle),
        selectedTextStyle: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontWeight: FontWeight.w400),
        defaultTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondaryContainer,
            fontWeight: FontWeight.w400),
      ),
      // firstDay: DateTime(focusedDay.year, focusedDay.month, 1),
      lastDay: DateTime.utc(2030, 3, 14),
      firstDay:
          DateTime.now().subtract(Duration(days: DateTime.now().weekday - 1)),
      // lastDay: DateTime.now().add(Duration(days: 13 - DateTime.now().weekday)),
      focusedDay: focusedDay2,
      calendarFormat: calendarFormat,
      availableCalendarFormats: const {
        CalendarFormat.month: 'pokaż pełen',
        CalendarFormat.twoWeeks: 'pokaż mniej'
      },
      onFormatChanged: (format) {
        if (calendarFormat != format) {
          setState(() {
            calendarFormat = format;
          });
        }
      },
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay2, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          selectedDay2 = selectedDay;
          focusedDay2 = focusedDay; // update `_focusedDay` here as well
        });
        context.read<BookBloc>().add(BookEvent.getWorkingHours(
            convertDateTimeDisplay(selectedDay2.toString())));
      },
      onPageChanged: (focusedDay) {
        focusedDay2 = focusedDay;
      },
    );
  }
}
