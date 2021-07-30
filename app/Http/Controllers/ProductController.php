<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::all();
        return response()->json(['products' => $products], 200);
    }

    public function showById($id)
    {
        $products = Product::find($id);
        if ($products) {
            return response()->json(['products' => $products], 200);
        } else {
            return response()->json(['message' => 'No Product Found'], 404);
        }
    }

    public function store(Request $req)
    {
        $req->validate([
            'name' => 'required',
            'des' => 'required',
            'price' => 'required',
            'qty' => 'required',
        ]);

        $product = new Product;
        $product->name = $req->name;
        $product->description = $req->des;
        $product->price = $req->price;
        $product->qty = $req->qty;
        $product->save();
        return response()->json(['message' => 'Product Added Successfully'], 200);
    }

    public function update(Request $req, $id)
    {
        $req->validate([
            'name' => 'required',
            'des' => 'required',
            'price' => 'required',
            'qty' => 'required',
        ]);

        $product = Product::find($id);

        if ($product) {
            $product->name = $req->name;
            $product->description = $req->des;
            $product->price = $req->price;
            $product->qty = $req->qty;
            $product->update();
            return response()->json(['message' => 'Product Updated Successfully'], 200);
        } else {
            return response()->json(['message' => 'No Product Found'], 404);
        }
    }

    public function delete($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->delete();
            return response()->json(['message' => 'Product Deleted successfully'], 200);
        } else {
            return response()->json(['message' => 'No Product Found'], 404);
        }
    }
}
