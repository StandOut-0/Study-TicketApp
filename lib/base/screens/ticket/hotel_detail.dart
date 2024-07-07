import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';

class HotelDetail extends StatelessWidget {
  const HotelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            // floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Hotel title"),
              background: Image.network(
                "https://via.placeholder.com/600x400"
              ),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [

              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("More Images", style: AppStyles.headLineStyle3,),
              ),
              Container(
                height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.all(16),
                      child: Image.network(
                          "https://via.placeholder.com/200x150"
                      ),
                    );

                  }),
              )

            ]
          ))
        ],
      ),
    );
  }
}
