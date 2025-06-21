<?php

namespace Dao\Products;

use Dao\Table;

class Categories extends Table
{

    public static function getCategories(): array
    {
        $sqlstr = "SELECT * FROM categorias;";
        return self::obtenerRegistros(
            $sqlstr,
            []
        );
    }

    public static function getCategoriesById(int $id): array
    {
        $sqlstr = "SELECT * from categorias where id = :idCategoria;";
        return self::obtenerUnRegistro($sqlstr, ["idCategoria" => $id]);
    }
}
