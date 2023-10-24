package com.example.demo;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.math.BigDecimal;

@Data
@RequiredArgsConstructor
public class Account {
    private String currency = "NOK";
    private String id;
    private BigDecimal balance = BigDecimal.valueOf(0);
}
