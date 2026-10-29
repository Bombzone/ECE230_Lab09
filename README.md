# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Ryan Posey && Landon Taylor
## Summary
We learned how to make a D-Latch in verilog

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Using structural Verilog would cause an infinite loop and unexpected behavior.

### What is the meaning of always @(*) in a sensitivity block?
We use ```*``` since there is no memory needed in combinatorial logic.

### What importance is memory to digital circuits?
This is how we can process complex info that can be changed and reused later.