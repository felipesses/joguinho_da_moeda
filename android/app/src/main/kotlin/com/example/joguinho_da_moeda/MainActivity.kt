package com.example.joguinho_da_moeda

import androidx.annotation.NonNull
import com.example.joguinho_da_moeda.mock.ProductListMock
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {

    private val CHANNEL = "flutter.native/helper"
    val productList = ProductListMock().productList
    val product = "Product"


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
            call, result ->
            when {
                call.method.equals("getProductList") -> {
                    print("PRODUCT LIST $product")
                    result.success(product)
                }
            }
        }
    }


}
