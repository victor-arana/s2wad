package com.packt.s2wad.ch14.actions.recipes;

import java.util.Collection;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.packt.s2wad.ch14.models.Recipe;
import com.packt.s2wad.ch14.models.RecipeType;
import com.packt.s2wad.ch14.services.RecipeTypeService;

@Results({
        @Result(name = ActionSupport.INPUT,
                location = "/WEB-INF/content/recipes/new-recipe.jsp"),
        @Result(name = "thanks",
                location = "/WEB-INF/content/recipes/new-recipe-thanks.jsp")
})
public class NewRecipeAction extends ActionSupport implements Preparable {

    private Recipe recipe;
    private Collection<RecipeType> recipeTypeOptions;

    private RecipeTypeService recipeTypeService;

    private static final Log LOG = LogFactory.getLog(NewRecipeAction.class);

    @Override
    @Action(value = "new-recipe")
    public String input() throws Exception {
        LOG.debug("Enter.");
        return INPUT;
    }

    @Action(value = "new-recipe-process")
    public String process() {
        LOG.debug("Enter: " + recipe);
        return "thanks";
    }

    public void prepare() throws Exception {
        recipeTypeOptions = recipeTypeService.getAll();
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

    public void setRecipeTypeService(RecipeTypeService recipeTypeService) {
        this.recipeTypeService = recipeTypeService;
    }
    
}
