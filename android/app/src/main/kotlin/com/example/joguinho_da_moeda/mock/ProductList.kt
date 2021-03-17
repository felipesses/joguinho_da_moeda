package com.example.joguinho_da_moeda.mock

import com.example.joguinho_da_moeda.data.Product

class ProductListMock {

    val productList = listOf<Product>(
            Product(
                    "1",
                    "Doces",
                    "Brigadeiros etc",
                    15.0
            ),
            Product(
                    "2",
                    "Pipoca",
                    "Salgada",
                    2.00
            ),
            Product(
                    "3",
                    "Caneta",
                    "Azul",
                    0.80
            ),
            Product(
                    "4",
                    "Macbook",
                    "Versão Pro",
                    1000000.00
            )

    )




}