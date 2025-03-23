import '../../../utils/path_provider.dart';

Widget searchWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 5,
        child: SizedBox(
          height: 60,
          child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
            return SearchBar(
              controller: controller,
              keyboardType: TextInputType.text,
              elevation: WidgetStatePropertyAll(0.0),
              hintStyle: WidgetStatePropertyAll<TextStyle>(interBold(
                  color: grey.withValues(
                    alpha: 2.0,
                  ),
                  fontWeight: FontWeight.w700)),
              hintText: "Search Places",
              backgroundColor: WidgetStatePropertyAll(lightGrey),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0))),
              onTap: () {
                controller.openView();
              },
              onChanged: (_) {
                controller.openView();
              },
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.search,
                  size: 30.0,
                ),
              ),
            );
          }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'item $index';
              return ListTile(
                title: Text(item),
              );
            });
          }),
        ),
      ),
      SizedBox(
        width: 30,
      ),
      Expanded(
        flex: 1,
        child: Container(
          height: 60,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Theme.of(context).primaryColor),
          child: Center(
            child: Icon(
              Icons.filter_list,
              color: white,
            ),
          ),
        ),
      )
    ],
  );
}
