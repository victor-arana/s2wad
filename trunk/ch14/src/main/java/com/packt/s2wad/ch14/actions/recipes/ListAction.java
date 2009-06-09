package com.packt.s2wad.ch14.actions.recipes;

import java.util.Collection;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.packt.s2wad.ch14.services.RecipeService;
import com.packt.s2wad.ch14.services.FakeRecipeService;
import com.packt.s2wad.ch14.models.Recipe;

public class ListAction extends ActionSupport {

    Collection<Recipe> recipes;
    RecipeService recipeService = new FakeRecipeService();

    private static final Log LOG = LogFactory.getLog(ListAction.class);

    @Override
    public String execute() throws Exception {
        recipes = recipeService.findAll();
        return SUCCESS;
    }

    public Collection<Recipe> getRecipes() {
        return recipes;
    }

}
