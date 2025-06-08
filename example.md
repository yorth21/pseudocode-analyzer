# 📘 Ejemplos de Pseudocódigo Válido

A continuación se presentan varios fragmentos de pseudocódigo que son válidos según la gramática implementada con **JFlex** y **Java CUP**. Estos ejemplos pueden usarse para pruebas o como guía de referencia.

---

## ✅ Ejemplo 1: Declaración, Asignación y Salida Básica

```pseudocode
Program MiPrograma
  Integer x, y;
  x = 5;
  y = x + 10;
  Print y;
EndProgram
```

**Explica:**
- Declaración de múltiples variables
- Asignaciones simples
- Expresiones aritméticas
- Salida con `Print`

---

## ✅ Ejemplo 2: Condicional `If` con `Else`

```pseudocode
Program Condicional
  Integer edad;
  edad = 18;

  If (edad >= 18) Then
    Print "Es mayor de edad";
  Else
    Print "Es menor de edad";
  EndIf
EndProgram
```

**Explica:**
- Comparación con operadores relacionales
- Rama condicional con `Then` y `Else`
- Literales tipo `String`

---

## ✅ Ejemplo 3: Bucle `For` y Condicional Interno

```pseudocode
Program Bucle
  Integer i;

  For i = 1 To 5
    If (i % 2 == 0) Then
      Print i;
    EndIf
  EndFor
EndProgram
```

**Explica:**
- Bucle `For` con variable de control
- Condicional anidado
- Uso del operador `módulo (%)`

---

## ✅ Ejemplo 4: Función con `Return`

```pseudocode
Program FuncionMain
  Integer resultado;

  resultado = Sumar();
  Print resultado;
EndProgram

Function Sumar()
  Integer a, b;
  a = 10;
  b = 15;
  Return a + b;
EndFunction
```

**Explica:**
- Declaración y uso de funciones
- Variables locales dentro de una función
- Uso de `Return` para devolver resultados
- Asignación del resultado de una función

---

## 🔄 ¿Cómo usar estos ejemplos?

Estos ejemplos son útiles para probar el analizador léxico y sintáctico. Puedes copiarlos y pegarlos directamente en la entrada de tu aplicación para validar que tu gramática los reconoce correctamente.
