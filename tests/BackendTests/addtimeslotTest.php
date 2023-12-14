<?php
use PHPUnit\Framework\TestCase;
require 'vendor/autoload.php';


require 'backend/api/addtimeslot.php';

class addtimeslotTest extends TestCase {
    private $conn;
    private $scheduleManager;

    protected function setUp(): void {
        // Mock the database connection
        $this->conn = $this->createMock(\mysqli::class);

        // Initialize ScheduleManager with the mocked connection
        $this->scheduleManager = new addtimeslot($this->conn);
    }

    public function testAddTimeSlotSuccess() {
        // Mock successful execution
        $stmt = $this->createMock(\mysqli_stmt::class);
        $stmt->method('execute')->willReturn(true);

        $this->conn->method('prepare')->willReturn($stmt);

        // Test data
        $postData = [
            'day' => 'Monday',
            'starttime' => '08:00',
            'endtime' => '12:00',
            'shiftcat' => '1',
            'shiftsubcat' => '2'
        ];

        $result = $this->scheduleManager->addTimeSlot($postData);

        $this->assertEquals(['status' => 'success'], $result);
    }

    public function testAddTimeSlotMissingDayParameter() {
        // Test data with missing 'day'
        $postData = [
            'starttime' => '09:00',
            'endtime' => '11:00',
            'shiftcat' => '5',
            'shiftsubcat' => '6'
        ];

        $result = $this->scheduleManager->addTimeSlot($postData);
        $this->assertEquals(['status' => 'error', 'message' => 'Missing day parameter'], $result);
    }
}
