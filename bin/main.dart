//  Given two singly linked lists that intersect at some point, find the intersecting node.
//  The lists are non-cyclical.
//
//  For example, given A = 3 -> 7 -> 8 -> 10 and B = 99 -> 1 -> 8 -> 10, return
//  the node with value 8.
//
//  In this example, assume nodes with the same value are the exact same
//  node objects.

import 'dart:collection';

class Node {
  int val;
  Node next;

  Node(this.val);
}

int intersectingNode(Node a, Node b) {
  var tempA = a;
  var tempB = b;
  while (tempA != null) {
    while (tempB != null) {
      if (tempB.val == tempA.val) {
        return tempA.val;
      } else {
        tempB = tempB.next;
      }
      tempA = tempA.next;
    }
  }
  return null;
}

LinkedList thisList;

void main() {
  Node first = Node(3);
  Node second = Node(7);
  Node third = Node(8);
  Node fourth = Node(10);

  Node fifth = Node(99);
  Node sixth = Node(1);

  first.next = second;
  second.next = third;
  third.next = fourth;
  fifth.next = sixth;
  sixth.next = third;

  print(intersectingNode(first, fifth));
}
