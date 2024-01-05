void heapSort(List<int> array) {
  for (int i = (array.length ~/ 2) - 1; i >= 0; i--) {
    heapify(array, i, array.length);
  }

  for (int i = array.length - 1; i >= 1; i--) {
    swap(array, 0, i);
    heapify(array, 0, i);
  }
}

void heapify(List<int> array, int index, int heapSize) {
  while (true) {
    int leftChildIndex = 2 * index + 1;
    int rightChildIndex = 2 * index + 2;
    int largest = index;

    if (leftChildIndex < heapSize && array[leftChildIndex] > array[largest]) {
      largest = leftChildIndex;
    }

    if (rightChildIndex < heapSize && array[rightChildIndex] > array[largest]) {
      largest = rightChildIndex;
    }

    if (largest == index) {
      break;
    }

    swap(array, index, largest);
    index = largest;
  }
}

void swap(List<int> array, int index1, int index2) {
  int temp = array[index1];
  array[index1] = array[index2];
  array[index2] = temp;
}

void main() {
  List<int> unsortedArray = [5, 2, 8, 1, 9, 3];

  print("Unsorted Array: $unsortedArray");

  heapSort(unsortedArray);

  print("Sorted Array: $unsortedArray");
}
