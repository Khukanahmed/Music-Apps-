import 'package:flutter/material.dart';

import '../style/style.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        padding: EdgeInsets.only(top: 40, right: 20, left: 20),
        color: Color(0xff282d4b),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'All Music',
                    style: Head24Text(offpink),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: AppInputDecoration('Search musics'),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Listcolor,
                        child: ListTile(
                          onTap: () {},
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('asset/job pic.jpg'),
                          ),
                          title: Text(
                            'Lake',
                            style: Head20Text(offpink, 20),
                          ),
                          subtitle: Text(
                            'MediaQuery is taking the entire screen as reference,',
                            style: Head20Text(offpink, 14),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Bule,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                      child: Text(
                    'Ask for a music',
                    style: Head20Text(White, 25),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
