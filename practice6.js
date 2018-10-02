const maxSubsetSumNoAdjacent = (arr) => {
  if (arr.length === 0) return 0;
  if (arr.length === 1) return arr[0];
  const maxSums = arr.slice(); //creates shallow copy
  console.log(maxSums);
  maxSums[1] = Math.max(arr[0], arr[1]);
  console.log(maxSums[1]);
  for (let i = 2; i < arr.length; i++) {
    maxSums[i] = Math.max(maxSums[i - 1], maxSums[i - 2] + arr[i]);

  }
  return maxSums
}



console.log(maxSubsetSumNoAdjacent([10, 7, 12, 7, 9, 14]));
