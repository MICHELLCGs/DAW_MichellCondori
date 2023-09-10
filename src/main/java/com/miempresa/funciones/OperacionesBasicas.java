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
public class OperacionesBasicas {
    public static int suma(int num1, int num2) {
        return num1 + num2;
    }

    public static int resta(int num1, int num2) {
        return num1 - num2;
    }

    public static int multiplicacion(int num1, int num2) {
        return num1 * num2;
    }

public static int division(int num1, int num2) {
   if (num2 != 0) {
      return num1 / num2;
   } else {
      return -1; 
   }
}
}

