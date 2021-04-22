package com.example.joguinho_da_moeda.core


import androidx.lifecycle.lifecycleScope
import com.example.joguinho_da_moeda.repository.FirestoreRepository
import com.google.firebase.firestore.FirebaseFirestore
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await

@ExperimentalStdlibApi
class ProductsRequest : FlutterActivity() {

    private val firestoreRepository = FirestoreRepository()

    fun productsRequest(result: MethodChannel.Result) {
        lifecycleScope.launch {
            val response: MutableList<Map<String, String>> = firestoreRepository.requestProducts()
            result.success(response)
        }

    }


}