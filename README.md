# Ada For Loop Exit and Array Access Bug

This repository demonstrates a potential issue in Ada related to exiting a for loop early and subsequent access to array elements.  The `bug.ada` file contains code exhibiting this error. The corrected version is provided in `bugSolution.ada`.

**Issue:**

In Ada, exiting a for loop prematurely using `exit` can lead to unexpected behavior if you attempt to use the loop counter variable after the exit.  The loop counter may not reflect a valid index within the array.  This results in an attempt to access an array element outside the defined bounds, leading to a runtime error or unpredictable results.

**Solution:**

The solution addresses the problem by carefully considering the loop counter's value after exiting. In this example, we use a separate variable to store the value before exiting the loop, ensuring that we access a valid array element.