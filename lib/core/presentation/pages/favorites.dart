import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/favorite_firestore_service.dart';
import 'package:flutter_ui_challenges/core/data/models/menu.dart';
import 'package:flutter_ui_challenges/core/presentation/routes.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/preview.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user.dart';
import 'package:provider/provider.dart';

class FavoritesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<User>(
      builder: (_,user,__) {
        if(user==null) return CircularProgressIndicator();
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: user.favorites.length,
          itemBuilder: (listcontext, index) {
            SubMenuItem item = getItemForKey(user.favorites[index]);
            return _buildSubMenu(item, context);
          },
        );
      },
    );
  }

  Widget _buildSubMenu(SubMenuItem item, BuildContext context) {
    if(item==null) return Container();
    return ListTile(
      dense: false,
      isThreeLine: false,
      trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () => _openPage(context, item, OpenMode.CODE),
            ),
            IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => FavoriteFirestoreService().removeFromFavorite(Provider.of<User>(context)?.id, item.title),
            ),
          ],
        ),
      title: Text(
        item.title,
        style: Theme.of(context).textTheme.subhead.copyWith(
          fontWeight: FontWeight.bold,
            color: Colors.black87),
      ),
      onTap: () => _openPage(context, item, OpenMode.PREVIEW),
    );
  }

  void _openPage(BuildContext context, SubMenuItem item, OpenMode mode) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => mode == OpenMode.CODE
              ? DesignPreviewsPage(
                  page: item.page, title: item.title, path: item.path)
              : item.page,
        ));
  }
}