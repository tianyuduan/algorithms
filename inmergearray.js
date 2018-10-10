// Given two sorted arrays of size m & n, merge the elements of
// the first array with the second array by maintaining the sorted
// order. i.e. fill the first array with with the first m smallest elements
// and fill the second array with the remaining n elements.

let arr1 = [1, 4, 7, 8, 10];
let arr2 = [2, 3, 9];

const merge = (arr1, arr2) => {
    let arr1Length = arr1.length;
    let arr2Length = arr2.length;
    for (let i = 0; i < arr1Length; i++) {
      if (arr1[i] > arr2[0]) {
        [arr1[i], arr2[0]] = [arr2[0], arr1[i]];
        let first = arr2[0];
        let j;
        for (j = 1; j < arr2Length && arr2[j] < first; j++) {
          arr2[j - 1] = arr2[j];
        }
        arr2[j - 1] = first
      }
    }
}


console.log(arr1, arr2);
merge(arr1, arr2);
console.log(arr1, arr2);


const merge2 = (arr1, arr2) => {

  const arr3 = arr1.concat(arr2);
  return arr3.sort();

}

console.log(merge(arr1, arr2));
