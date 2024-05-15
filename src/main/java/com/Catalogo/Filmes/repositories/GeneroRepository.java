package com.Catalogo.Filmes.repositories;

import com.Catalogo.Filmes.models.Genero;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GeneroRepository extends JpaRepository<Genero, Long> {
}