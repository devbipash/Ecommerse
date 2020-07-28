<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()

    {

        $categoryId=request('category_id');
        $categoryName=null;

        if ($categoryId) {
            $category=Category::find($categoryId);
            $categoryName=ucfirst($category->name);
            //$products=$category->products;
            $products=$category->allProducts();
        }
        else{
            $products=Product::take(8)->get();
        }
        return view('product.index',compact('products','categoryName'));
    }

    public function search(Request $request)


    {

        $query=$request->input('query');
        $products=Product::where('name','LIKE',"%$query%")->paginate(5);

        return view ('product.catalog',compact('products'));
    }
}
