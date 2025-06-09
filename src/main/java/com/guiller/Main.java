package com.guiller;

import java.io.File;
import java.io.FileReader;
import java_cup.runtime.*;

public class Main {
    public static void main(String[] args) {
        try {
            var path = "src/main/resources/code.txt";
            var file = new File(path).getAbsolutePath();

            var lexer = new Lexer(new FileReader(file));
            var parser = new parser(lexer, new DefaultSymbolFactory());
            parser.parse();

            System.out.println("Done");
            System.out.println(lexer.tokens.toString());
            System.out.println(parser.errSyntax.toString());
        } catch (Exception e) {
            System.err.println("Error main: " + e.getMessage());
        }
    }
}
