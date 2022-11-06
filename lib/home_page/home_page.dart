import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201F24),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 30,
                  height: 40,
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFF9373FF),
                    child: Text(
                      'JA',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: const Text(
                    'Javoxir Abdumalikov',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 30,
                  height: 40,
                  child: const Icon(
                    Icons.search,
                    color: Color(0xFF9373FF),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    width: 20,
                    height: 20,
                    child: const Icon(
                      Icons.star,
                      color: Colors.red,
                    )),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  height: 24,
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    'Important',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 40,
                  child: const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF9373FF),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    width: 20,
                    height: 20,
                    child: const Icon(
                      Icons.house_siding,
                      color: Color(0xFF9373FF),
                    )),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  margin: const EdgeInsets.all(5),
                  child: const Text(
                    'Tasks',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 30,
                  height: 40,
                  child: const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF9373FF),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 1,
              color: const Color.fromARGB(12, 230, 225, 229),
            ),
            Expanded(
                child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: 20,
                        height: 20,
                        child: const Icon(
                          Icons.list,
                          color: Color(0xFF9373FF),
                        )),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerLeft,
                      height: 24,
                      margin: const EdgeInsets.all(5),
                      child: const Text(
                        'Task List',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 30,
                      height: 40,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Color(0xFF9373FF),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: 20,
                        height: 20,
                        child: const Icon(
                          Icons.list,
                          color: Color(0xFF9373FF),
                        )),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      margin: const EdgeInsets.all(5),
                      child: const Text(
                        'House List',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    )),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 30,
                      height: 40,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Color(0xFF9373FF),
                      ),
                    ),
                  ],
                )
              ],
            )),
            Container(
              margin: const EdgeInsets.all(20),
              child: OutlinedButton.icon(
                label: const Text(
                  'New list',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9373FF),
                      fontWeight: FontWeight.w500),
                ),
                icon: const Icon(
                  Icons.add,
                  color: Color(0xFF9373FF),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
