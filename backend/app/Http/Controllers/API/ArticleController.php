<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Article;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ArticleController extends Controller
{
    /**
     * Display a paginated list of articles.
     *
     * @param  Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {


        // Retrieve the source and publish date parameters from the request
        $source = $request->query('source_name');
        $publishDate = $request->query('publish_date');
        $search_data =isset($_REQUEST['params'])?$_REQUEST['params']:'';

        // Start building the query to retrieve articles
        $query = Article::query();

        // Apply the source filter if provided
        if ($source) {
            $query->where('source_name', $source);
        }

        // Apply the publish date filter if provided
        if ($publishDate) {
            $publishDate = Carbon::parse($publishDate)->format('Y-m-d');
            $query->whereDate('publish_date', $publishDate);
        }

        // Apply the title filter if provided
        if ($search_data) {
            $query->where('title', 'LIKE', '%' . $search_data . '%');
        }

        // Paginate the filtered results
        $articles = $query->paginate(30); // Change the pagination limit as needed

        return response()->json($articles);
    }

    public function PersonalizedArticle(Request $request)
    {
        // Get the authenticated user
        $user = Auth::user();

        // Retrieve the source, publish date, and search parameters from the request
        $source = $request->query('source_name');
        $publishDate = $request->query('publish_date');
        $searchData = $request->query('params');

        // Start building the query to retrieve articles
        $query = Article::query();

        // Apply the source filter if provided
        if ($source) {
            $query->where('source_name', $source);
        }

        // Apply If Interested Data Exist
        if ($user->interested) {
            $interestedKeywords = json_decode($user->interested);

            // Apply filter for source, author, and category_name
            $query->where(function ($query) use ($interestedKeywords) {
                $query->whereIn('source_name', $interestedKeywords)
                    ->orWhereIn('author', $interestedKeywords)
                    ->orWhereIn('category_name', $interestedKeywords);
            });
        }

        // Apply the publish date filter if provided
        if ($publishDate) {
            $publishDate = Carbon::parse($publishDate)->format('Y-m-d');
            $query->whereDate('publish_date', $publishDate);
        }

        // Apply the title filter if provided
        if ($searchData) {
            $query->where(function ($query) use ($searchData) {
                $query->where('title', 'LIKE', '%' . $searchData . '%');
            });
        }

        // Paginate the filtered results
        $articles = $query->paginate(20); // Change the pagination limit as needed

        // Return the paginated and filtered articles as JSON response
        return response()->json($articles);
    }

}
