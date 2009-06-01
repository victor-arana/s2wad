package com.packt.s2wad.ch04.services;

import java.util.HashMap;
import java.util.Map;

import com.packt.s2wad.ch04.models.Recipe;

public class FakeRecipeService implements RecipeService {

    public static Recipe NO_RECIPE = new Recipe(0, "Not Found", "");

    private Map<Integer, Recipe> recipes = new HashMap<Integer, Recipe>() {{
        put(1, new Recipe(1, "Stone Soup", "Stones. Water."));
        put(2, new Recipe(2, "Java", "Ground coffee. Water. Compiler."));
        put(3, new Recipe(3, "Testability", "Dependency Injection. Interfaces."));
    }};

    public Recipe findById(Integer id) {
        if (recipes.containsKey(id)) {
            return recipes.get(id);
        }
        return NO_RECIPE;
    }

}
