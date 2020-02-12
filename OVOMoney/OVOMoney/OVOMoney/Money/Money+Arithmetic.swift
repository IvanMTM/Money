//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
// 

func + (lhs: Money, rhs: Money) -> Money {
    return (lhs.amount + rhs.amount).toMoney
}

func / (lhs: Money, rhs: Money) -> Money {
    return (lhs.amount / rhs.amount).toMoney
}

func - (lhs: Money, rhs: Money) -> Money {
    return (lhs.amount - rhs.amount).toMoney
}

func * (lhs: Money, rhs: Money) -> Money {
    return (lhs.amount * rhs.amount).toMoney
}
