*** Settings ***
Test Template       Evaluation


*** Test Cases ***    Expression    Expected
Additions    12 + 2 + 2    16
    2 + -3    -1
Substractions    12 - 2 - 2    8
    2 - -3    5
Multiplication    12 * 2 * 2    48
    2 * -3    -6
Division    12 / 2 / 2    3
    2 / -3    -1
Evaluation error    [Template]    Evaluation should fail
    kekkonen    Evaluating expression 'kekkonen' failed: NameError: name 'kekkonen' is not defined nor importable as module
    ${EMPTY}    Evaluating expression '' failed: ValueError: Expression cannot be empty.
    1 / 0    Evaluating expression '1 / 0' failed: ZeroDivisionError: division by zero


*** Keywords ***
Evaluation
    [Arguments]    ${expression}    ${expected}
    ${value} =    Evaluate    round(${expression})
    Should Be Equal As Integers    ${value}    ${expected}

Evaluation should fail
    [Arguments]    ${expression}    ${expected}
    Run Keyword And Expect Error    ${expected}    Evaluate    ${expression}
