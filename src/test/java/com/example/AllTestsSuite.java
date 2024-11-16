package com.example;

import org.junit.platform.suite.api.SelectClasses;
import org.junit.platform.suite.api.Suite;

@Suite
@SelectClasses({
    CalculatorTest.class,
    AdvancedCalculatorTest.class
})
public class AllTestsSuite {
    // Esta clase permanece vacía. Las anotaciones realizan todo el trabajo.
}
