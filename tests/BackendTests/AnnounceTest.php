<?php
namespace DCSMS\Tests;
use DCSMS\Backend\addAnnouncement;
use PHPUnit\Framework\TestCase;
require 'vendor/autoload.php';


// You might need to adjust the paths according to your autoload configuration
require 'backend/api/announce.php';



class AnnounceTest extends TestCase
{
    private $conn;

    protected function setUp(): void
    {
        // Mock the database connection
        $this->conn = $this->createMock(\mysqli::class);

        // Mock the prepare statement
        $stmt = $this->createMock(\mysqli_stmt::class);
        $stmt->method('execute')->willReturn(true);
        $stmt->method('bind_param')->willReturn(true);
        // $stmt->method('error')->willReturn(true);
        

        // Replace the actual prepare function with your mock
        $this->conn->method('prepare')->willReturn($stmt);
    }

    
    public function testAddAnnouncementSuccess()
    {
        // Test with all the proper parameters
        $postData = [
            'posttype' => 'warning',
            'subject' => 'Test Subject',
            'text' => 'Test text'
        ];

        $result = addAnnouncement($this->conn, $postData);
        $this->assertEquals(['status' => 'success'], $result);
    }

    public function testAddAnnouncementFailure()
    {
        // Test without posttype parameter
        $postData = [
            // 'posttype' => 'warning',
            'subject' => 'Test Subject',
            'text' => 'Test text'
        ];

        $result = addAnnouncement($this->conn, $postData);
        $this->assertEquals(['status' => 'error', 'message' => 'Missing posttype parameter'], $result);
    }
}