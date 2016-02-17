# Homework Day 3 - library of tests for array and hash functions
# 
# Test environment set up
require ('minitest/autorun')
require_relative ('../my_functions')


class TestMyFunctions < MiniTest::Test

#Test 1 - testing function to sum the length of two arrays
def test_add_array_lengths
  prices = [ 1.23, 6.98, 8.43, 2.45 ]
  costs = [ 4.23, 1.12, 0.52, 8.67 ]
  
  result = add_array_lengths(prices,costs)
  assert_equal(8,result)
end

#Test 2 - testing function to add all values in an array
def test_sum_array
  data = [ 1, 2, 3, 4 ,5 ]
  result = sum_array(data)
  assert_equal(15,result)
end

#Test 3 - test for function that checks if a value is contained in array
def test_is_value_in_array
  hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
  result = is_value_in_array('Ravenclaw',hogwarts)
  assert_equal(true,result)
end

#Test 4 - test for a function that returns first key from a hash
def test_first_key_from_hash
  teacher_wallets = {
    'Tony' => 12,
    'Kat'  => 10,
    'Val'  => 1356,
    'Rick' => 1
  }
  result=first_key_from_hash(teacher_wallets)
  assert_equal('Tony',result)
end

#Test 5 - test a function that passes back capitals from a country hash as an array
def test_give_me_capital_cities

  countries = {
    uk: {
      capital: 'London',
      population: 60
        },
    france: {
      capital: 'Paris',
      population: 70
            },
    italy: {
      capital: 'Rome',
      population: 56
            }
              }

  expected_result = [ 'London', 'Paris', 'Rome' ]
  result = give_me_capital_cities(countries)
  assert_equal(expected_result,result)

end
end

