
<?php
use PHPUnit\Framework\TestCase;

class AnnounceTest extends TestCase
{
    private $conn;

    protected function setUp(): void
    {
        // Mocking the database connection
        $this->conn = $this->createMock(mysqli::class);
    }

    public function testSuccessfulAnnouncement()
    {
        // Mocking $_POST data
        $postData = [
            'posttype' => 'event',
            'subject' => 'New Event',
            'text' => 'Details about the new event'
        ];

        // Setting up the mock to expect the query execution
        $stmt = $this->createMock(mysqli_stmt::class);
        $stmt->method('execute')->willReturn(true);
        $this->conn->method('prepare')->willReturn($stmt);

        // Including the refactored announce.php file
        require 'announce.php';

        // Asserting that the function returns a success status
        $result = addAnnouncement($this->conn, $postData);
        $this->assertEquals(['status' => 'success'], $result);
    }

    public function testSqlError()
    {
        // Mocking $_POST data
        $postData = [
            'posttype' => 'notification',
            'subject' => 'Cancelled Event',
            'text' => 'Event has been cancelled'
        ];

        // Setting up the mock to simulate an SQL error
        $stmt = $this->createMock(mysqli_stmt::class);
        $stmt->method('execute')->willReturn(false);
        $stmt->method('error')->willReturn('SQL Error');
        $this->conn->method('prepare')->willReturn($stmt);

        // Including the refactored announce.php file
        require 'announce.php';

        // Asserting that the function returns an error status and message
        $result = addAnnouncement($this->conn, $postData);
        $this->assertEquals(['status' => 'error', 'message' => 'SQL Error'], $result);
    }

    public function testMissingPostTypeParameter()
    {
        // Mocking $_POST data without 'posttype'
        $postData = [
            'subject' => 'Subject without posttype',
            'text' => 'Some text'
        ];

        // Including the refactored announce.php file
        require '../../backend/api/announce.php';

        // Asserting that the function returns an error status and message for missing 'posttype'
        $result = addAnnouncement($this->conn, $postData);
        $this->assertEquals(['status' => 'error', 'message' => 'Missing posttype parameter'], $result);
    }
}
