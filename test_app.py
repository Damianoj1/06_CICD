import unittest
from app import hello_world

class TestApp(unittest.TestCase):
    def test_hello(self):
        self.assertAlmostEqual(hello_world(),"Hello_world")
        
 if __name__ == "__main__":
    unittest.main()