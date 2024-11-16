package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AdvancedCalculatorTest {

    AdvancedCalculator advancedCalculator = new AdvancedCalculator();

    @Test
    public void testPower() {
        assertEquals(8, advancedCalculator.power(2, 3));
    }

    @Test
    public void testSqrt() {
        assertEquals(4, advancedCalculator.sqrt(16));
    }
}
