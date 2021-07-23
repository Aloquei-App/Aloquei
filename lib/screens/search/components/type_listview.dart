import 'package:flutter/material.dart';

class TypeListView extends StatelessWidget {
  const TypeListView(
      {Key key,
      @required ScrollController scrollController,
      @required Function onTap})
      : _scrollController = scrollController,
        _onTap = onTap,
        super(key: key);
  final ScrollController _scrollController;
  final Function _onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView.builder(
          itemCount: 2,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(
                title: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.15,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(index == 0
                            ? "Ofertas de compartilhamento"
                            : "Ofertas de moradias"),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Image.asset(
                          index == 0
                              ? 'assets/oferta.jpg'
                              : 'assets/procura.jpg',
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () => _onTap(index));
          }),
    );
  }
}
