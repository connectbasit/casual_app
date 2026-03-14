import 'package:provider/provider.dart';

import '../index.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('CommentScreen'),
      body: Selector<ApiServices, (bool, List<CommentModel>)>(builder: (context, value, _) {
        final bool isLoading = value.$1;
        final List<CommentModel> comment = value.$2;
        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          key: Key('commentList'),
          itemCount: comment.length,
          itemBuilder: (context, index) {
          return ListTile(
            key: Key(comment[index].userComment),
            title: Text(comment[index].user!.name),
            subtitle: Text(comment[index].userComment),
            onTap: (){
              Provider.of<ApiServices>(context, listen: false).indexRemover('comment', index, context);
            },
          );
        },);
      }, selector: (_, provider) => (provider.isLoading, provider.comments),),
    );
  }
}
