package com.Catalogo.Filmes.repositories;

import com.Catalogo.Filmes.models.Item;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepository extends JpaRepository<Item, Long> {
}
