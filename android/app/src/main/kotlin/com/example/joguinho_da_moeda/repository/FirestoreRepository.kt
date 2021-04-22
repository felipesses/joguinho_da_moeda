package com.example.joguinho_da_moeda.repository

import com.google.firebase.firestore.FirebaseFirestore
import kotlinx.coroutines.tasks.await

@ExperimentalStdlibApi
class FirestoreRepository {

    private val firestore = FirebaseFirestore.getInstance()

    suspend fun requestProducts(): MutableList<Map<String, String>> {
        val newProductList = mutableListOf(mapOf(
                "id" to "id",
                "name" to "name",
                "description" to "description",
                "price" to "price",
                "imgUrl" to "imgUrl"
        ))
        try {
            newProductList.clear()

            val data = firestore.collection("products").get().await()

            for (doc in data) {
                newProductList.add(mapOf(
                        "id" to doc.id,
                        "name" to doc.get("name").toString(),
                        "description" to doc.get("description").toString(),
                        "price" to doc.get("price").toString(),
                        "imgUrl" to doc.get("imgUrl").toString()
                ))
            }

            return newProductList
        } catch (e: Exception) {
            println("catch request data ${e.message}")
            newProductList.clear()
            return newProductList
        }
    }
}