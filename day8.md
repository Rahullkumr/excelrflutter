<h1 align="center"> Day 8 (Flutter Excelr)</h1>

- List generator
- Long list i.e ListView.builder()
    > Adapter in Android
- alertbox
- text on click of button


## Disadvantages of ListView
- not aware of how much data is coming from db or server 5, 10 or 5k
    - so we need a dynamic list(called Longlist in dart)
        - ListView hi hai but builder method use kr rhe hn list ko build krne k liye
- other problem with yesterday's list is that - 
everything gets loaded on the screen,leads to memory occupancy

- adv (longlist) => when we scroll then only the items get loaded on the screen


## List generator

```dart

// The lambda fn is called once for each element in the list, and the return value of the function is used to populate the element.

void main() {
  print(
    List.generate(
      10, // max limit or no of times the fn is to be called
      (counter) {
        return counter;
      },
    ),
  );
}

output
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

## Long list == ListView.builder()

<img src="Images/day8.jpg" alt="day 8 image">

```dart
getLongList() {
    // get data from generate method
    var generatedList = generateListElements();
    var myListView = ListView.builder(itemBuilder: (context, index) {
      // context = this screen i.e this class; index = index of list items
      return ListTile(
        title: Text(
          generatedList[index],
        ),
      );
    });
    // this builder is going to help in building the item(each row) one by one
    return myListView;
  }

  // generate list elements
  generateListElements() {
    var myListItems = List.generate(10, (counter) => "Generated Element : $counter");
    return myListItems;
  }
```




<br><br>
<h1 align="center"> <a href="/day9.md">Day 9 Flutter</a></h1>
