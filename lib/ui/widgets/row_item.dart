import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:row_collection/row_collection.dart';

/// Wrapper of the [RowItem.text] widget.
class RowText extends StatelessWidget {
  final String title, description;

  const RowText(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return RowItem.text(
      title,
      description,
      titleStyle: GoogleFonts.nunito(
        fontSize: 15,
      ),
      descriptionStyle: GoogleFonts.nunito(
        fontSize: 15,
        color: Theme.of(context).textTheme.caption.color,
      ),
    );
  }
}

/// Wrapper of the [RowItem.icon] widget.
class RowIcon extends StatelessWidget {
  final String title;
  final bool status;

  const RowIcon(this.title, this.status);

  @override
  Widget build(BuildContext context) {
    return RowItem.icon(
      title,
      status,
      size: 18,
      titleStyle: TextStyle(fontSize: 15),
    );
  }
}

/// Wrapper of the [RowItem.clickable] widget.
class RowDialog extends StatelessWidget {
  final String title, description;
  final Widget screen;

  const RowDialog(this.title, this.description, {this.screen});

  @override
  Widget build(BuildContext context) {
    return RowItem.clickable(
      title,
      description,
      titleStyle: GoogleFonts.nunito(fontSize: 15),
      descriptionStyle: GoogleFonts.nunito(
        color: Theme.of(context).textTheme.caption.color,
        fontSize: 15,
      ),
      onTap:
          description == FlutterI18n.translate(context, 'spacex.other.unknown')
              ? null
              : () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screen,
                      fullscreenDialog: true,
                    ),
                  ),
    );
  }
}
