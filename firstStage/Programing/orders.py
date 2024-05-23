import random
import string
from datetime import datetime, timedelta

def generate_random_name(length=10):
    """Generates a random name with the given length."""
    letters = string.ascii_letters
    return ''.join(random.choices(letters, k=length))

def generate_random_date(start_year=2024, end_year=2030):
    """Generates a random date between start_year and end_year."""
    start_date = datetime(start_year, 1, 1)
    end_date = datetime(end_year, 12, 31)
    random_date = start_date + timedelta(days=random.randint(0, (end_date - start_date).days))
    return random_date.strftime('%Y/%m/%d')

def generate_unique_worker_id(existing_ids):
    """Generates a unique worker ID that is not in the existing_ids set."""
    while True:
        worker_id = random.randint(100, 999)
        if worker_id not in existing_ids:
            return worker_id

def generate_insert_statement(existing_ids):
    order_id = generate_unique_worker_id(existing_ids)
    existing_ids.add(order_id)
    order_date = generate_random_date()
    dellivery_date = generate_random_date()
    return f"INSERT INTO TEHILA.orders(ORDER_ID, ORDER_DATE, DELLIVERY_DATE) VALUES({order_id}, (TO_DATE('{order_date}', 'yyyy/mm/dd')), (TO_DATE('{dellivery_date}', 'yyyy/mm/dd')));"

if __name__ == "__main__":
    # Set to keep track of existing IDs
    existing_ids = set()

    # Generate multiple insert statements
    for _ in range(500):  # Change the range to generate more or fewer statements
        print(generate_insert_statement(existing_ids))



