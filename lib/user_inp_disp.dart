StatelessWidget user_inp_disp() {
  return Container(
    width: 300,
    height: 50,
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        Container(
          width: 250,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}