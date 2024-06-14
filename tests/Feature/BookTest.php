<?php

namespace Tests\Feature;

use App\Models\Book;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use function PHPUnit\Framework\assertTrue;

class BookTest extends TestCase
{
    use RefreshDatabase;

    public function test_create_book()
    {
        $book = Book::create([
            'title' => 'The Great Gatsby',
            'author' => 'F. Scott Fitzgerald',
            'isbn' => '9780743273565',
        ]);

        assertTrue($book->exists());
    }
}
