import 'package:flutter/material.dart';

class SmallSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const SmallSwitch({super.key, required this.value, required this.onChanged});

  @override
  _SmallSwitchState createState() => _SmallSwitchState();
}

class _SmallSwitchState extends State<SmallSwitch> with SingleTickerProviderStateMixin {
  late bool _value;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    if (_value) {
      _controller.value = 1.0;
    }
  }

  void _toggleSwitch() {
    setState(() {
      _value = !_value;
      if (_value) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      widget.onChanged(_value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleSwitch,
      child: AnimatedContainer(
        width: 40.0,
        height: 20.0,
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: _value ? const Color(0xff3E5AF0) : const Color(0xffCBD5E1),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn,
              left: _value ? 20.0 : 0.0,
              right: _value ? 0.0 : 20.0,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: _value
                    ? Icon(Icons.circle, color: Colors.white, size: 20.0, key: UniqueKey())
                    : Icon(Icons.circle, color: Colors.white, size: 20.0, key: UniqueKey()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}