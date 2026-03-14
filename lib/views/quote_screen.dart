
import 'package:provider/provider.dart';

import '../index.dart';


class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('QuoteScreen'),
      body: Selector<ApiServices, (bool, List<QuoteModel>)>(builder: (context, value, _) {
        final isLoading = value.$1;
        final quotes = value.$2;
        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          key: Key('quoteList'),
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            return ListTile(
              key: Key(quotes[index].quoteID.toString()),
              title: Text(quotes[index].authorName),
              subtitle: Text(quotes[index].quotation),
              onTap: (){
                Provider.of<ApiServices>(context, listen: false).indexRemover('quote', index, context);
              },
            );
          },);
      }, selector: (_, provider) => (provider.isLoading ,provider.quotations),)
    );
  }
}
