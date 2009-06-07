package com.packt.s2wad.ch13.services;

import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import com.packt.s2wad.ch13.models.Recipe;
import com.packt.s2wad.ch13.models.ShoppingListItem;
import static com.packt.s2wad.ch13.services.FakeRecipeTypeService.*;

public class FakeRecipeService implements RecipeService {

    public static Recipe NO_RECIPE = new Recipe(0, "Not Found", "Recipe not found", "");

    private static Map<Integer, Recipe> recipes = new LinkedHashMap<Integer, Recipe>() {{
        Recipe r;

        r = new Recipe(1, "Spicy Lentil Pot", "A spicy lentil-vegetable soup", "Mix it all up and cook!");
        r.setRecipeTypes(Arrays.asList(RECIPE_TYPE_APPETIZER, RECIPE_TYPE_SIDE));
        r.addIngredients(Arrays.asList(new ShoppingListItem("1/2 cup", "dry lentils"),
                                       new ShoppingListItem("2", "carrots"),
                                       new ShoppingListItem("1", "red onion"),
                                       new ShoppingListItem("1c", "water")));
        put(r.getId(), r);

        r = new Recipe(2, "Golden Soup", "A spicy/sweet carrot soup", "Mix it all up and cook!");
        r.setRecipeTypes(Arrays.asList(RECIPE_TYPE_APPETIZER, RECIPE_TYPE_SIDE));
        r.addIngredients(Arrays.asList(new ShoppingListItem("1c", "water"),
                                       new ShoppingListItem("4", "carrots"),
                                       new ShoppingListItem("1T", "sour cream")));
        put(r.getId(), r);

        r = new Recipe(3, "Cheesy Mashed Potatoes", "Smooth, creamy, cheesy mashed potatoes", "Mix it all up and cook!");
        r.setRecipeTypes(Arrays.asList(RECIPE_TYPE_APPETIZER, RECIPE_TYPE_SIDE));
        r.addIngredients(Arrays.asList(new ShoppingListItem("1c", "shredded cheddar cheese"),
                                       new ShoppingListItem("4", "potatoes"),
                                       new ShoppingListItem("2T", "sour cream"),
                                       new ShoppingListItem("4T", "buttermilk")));
        put(r.getId(), r);
    }};

    public Collection<Recipe> findAll() {
        return recipes.values();
    }

    public Recipe findById(Integer id) {
        if (recipes.containsKey(id)) {
            return recipes.get(id);
        }
        return NO_RECIPE;
    }

}
