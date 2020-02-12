//
// Created by OVO on 03/02/20.
// Copyright © 2020 OVO. All rights reserved.
// 

func == (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount == rhs.amount
}

func < (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount < rhs.amount
}

func > (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount > rhs.amount
}

func <= (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount <= rhs.amount
}

func >= (lhs: Money, rhs: Money) -> Bool {
    return lhs.amount >= rhs.amount
}

// MARK: comparing with integer
func == (lhs: Money, rhs: Int) -> Bool {
    return lhs.amount == rhs.toMoney.amount
}

func < (lhs: Money, rhs: Int) -> Bool {
    return lhs.amount < rhs.toMoney.amount
}

func > (lhs: Money, rhs: Int) -> Bool {
    return lhs.amount > rhs.toMoney.amount
}

func <= (lhs: Money, rhs: Int) -> Bool {
    return lhs.amount <= rhs.toMoney.amount
}

func >= (lhs: Money, rhs: Int) -> Bool {
    return lhs.amount >= rhs.toMoney.amount
}
