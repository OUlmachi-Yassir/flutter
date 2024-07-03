<?php
namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {
        return response()->json(Post::with('user')->get(), 200);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|string',
            'description' => 'nullable|string',
            'category' => 'nullable|string',
            'user_id' => 'required|exists:users,id',
        ]);

        $post = Post::create($validatedData);
        return response()->json($post, 201);
    }

    public function show($id)
    {
        $post = Post::with('user')->find($id);
        if ($post) {
            return response()->json($post, 200);
        } else {
            return response()->json(['message' => 'Post not found'], 404);
        }
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'content' => 'sometimes|required|string',
            'image' => 'nullable|string',
            'description' => 'nullable|string',
            'category' => 'nullable|string',
            'user_id' => 'required|exists:users,id',
        ]);

        $post = Post::find($id);
        if ($post) {
            $post->update($validatedData);
            return response()->json($post, 200);
        } else {
            return response()->json(['message' => 'Post not found'], 404);
        }
    }

    public function destroy($id)
    {
        $post = Post::find($id);
        if ($post) {
            $post->delete();
            return response()->json(['message' => 'Post deleted'], 200);
        } else {
            return response()->json(['message' => 'Post not found'], 404);
        }
    }
}
