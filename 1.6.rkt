#lang racket

;会进入死循环，因为new-if没有短路的作用，then-clause和else-clause都会自动求值