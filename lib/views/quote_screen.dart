
import 'package:provider/provider.dart';

import '../index.dart';


class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Selector<ApiServices, (bool, List<QuoteModel>)>(builder: (context, value, _) {
        final isLoading = value.$1;
        final quotes = value.$2;
        return isLoading ? Center(child: CircularProgressIndicator(),) : ListView.builder(
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(quotes[index].authorName),
              subtitle: Text(quotes[index].quotation),
            );
          },);
      }, selector: (_, provider) => (provider.isLoading ,provider.quotations),)
    );
  }
}
