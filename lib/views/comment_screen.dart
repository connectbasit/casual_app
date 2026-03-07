import 'package:provider/provider.dart';

import '../index.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<ApiServices, (bool, List<CommentModel>)>(builder: (context, value, _) {
        final bool isLoading = value.$1;
        final List<CommentModel> comment = value.$2;
        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          itemCount: comment.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(comment[index].user!.name),
            subtitle: Text(comment[index].userComment),
          );
        },);
      }, selector: (_, provider) => (provider.isLoading, provider.comments),),
    );
  }
}
