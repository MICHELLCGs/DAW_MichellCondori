/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miempresa.funciones;

/**
 *
 * @author Michell
 */
public class OperacionesDiversas {
    public static double raizCuadrada(double num) {
        return Math.sqrt(num);
    }

    public static double raizCubica(double num) {
        return Math.cbrt(num);
    }

    public static double potencia(double base, double exponente) {
        return Math.pow(base, exponente);
    }

    public static double valorAbsoluto(double num) {
        return Math.abs(num);
    }
}
