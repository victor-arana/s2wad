package com.packt.s2wad.ch06.actions.recipes;

import java.util.Collection;

import org.apache.struts2.convention.annotation.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import com.packt.s2wad.ch06.models.Recipe;
import com.packt.s2wad.ch06.models.RecipeType;
import com.packt.s2wad.ch06.models.RecipeTypeService;
import com.packt.s2wad.ch06.services.FakeRecipeTypeService;

public class NewRecipeAction extends ActionSupport implements Preparable {

    private Recipe recipe;

    private Collection<RecipeType> recipeTypeOptions;
    private static RecipeTypeService recipeTypeService = new FakeRecipeTypeService();

    public void prepare() throws Exception {
        recipeTypeOptions = recipeTypeService.getAll();
    }

    @Action(value = "new-recipe-process")
    public String process() {
        return "thanks";
    }

    public Collection<RecipeType> getRecipeTypeOptions() {
        return recipeTypeOptions;
    }

    public void setRecipeTypeOptions(Collection<RecipeType> recipeTypeOptions) {
        this.recipeTypeOptions = recipeTypeOptions;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

}
