package com.packt.s2wad.ch06.models;

import java.util.Collection;

public interface RecipeTypeService {

    Collection<RecipeType> getAll();
    
    RecipeType findById(Integer id);
    
}
