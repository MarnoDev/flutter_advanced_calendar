part of 'widget.dart';

/// Week day names line.
class WeekDays extends StatelessWidget {
  const WeekDays({
    Key? key,
    this.weekNames = const <String>['S', 'M', 'T', 'W', 'T', 'F', 'S'],
    this.style,
  })  : assert(weekNames != null, '`weekNames` must not be null'),
        assert(weekNames.length == 7, '`weekNames` must have length 7'),
        super(key: key);

  /// Week day names.
  final List<String> weekNames;

  /// Text style.
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: style!,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DateBox(
            child: Text('S'),
          ),
          DateBox(
            child: Text('M'),
          ),
          DateBox(
            child: Text('T'),
          ),
          DateBox(
            child: Text('W'),
          ),
          DateBox(
            child: Text('T'),
          ),
          DateBox(
            child: Text('F'),
          ),
          DateBox(
            child: Text('S'),
          ),
        ],
      ),
    );
  }
}
