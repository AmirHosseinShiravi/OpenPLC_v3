#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define HASH_TABLE_SIZE 1000

struct node {
    int key;
    int value;
    struct node *next;
};

struct hashtable {
    struct node *buckets[HASH_TABLE_SIZE];
};

int hash(int key) {
    return abs(key) % HASH_TABLE_SIZE;  // Use absolute value to handle negative keys
}

void put(struct hashtable *ht, int key, int value) {
    int index = hash(key);
    struct node *prev = NULL;
    struct node *n = ht->buckets[index];

    // Search for existing node with same key and update its value
    while (n != NULL) {
        if (n->key == key) {
            n->value = value;
            return;
        }
        prev = n;
        n = n->next;
    }

    // Create new node and add it to the bucket
    struct node *new_node = malloc(sizeof(struct node));
    new_node->key = key;
    new_node->value = value;
    new_node->next = NULL;

    if (prev == NULL) {
        ht->buckets[index] = new_node;
    } else {
        prev->next = new_node;
    }
}

int get(struct hashtable *ht, int key) {
    int index = hash(key);
    struct node *n = ht->buckets[index];

    // Search for node with given key
    while (n != NULL) {
        if (n->key == key) {
            return n->value;
        }
        n = n->next;
    }

    return -1;  // Key not found in hashtable
}

int main() {

    struct hashtable ht;
    memset(&ht, 0, sizeof(ht));

    // Map key 100 to value 1
    put(&ht, 100, 1);
    put(&ht, 500000, 13);
    // Retrieve value for key 100
    int value = get(&ht, 100);
    printf("Value for key 100 is: %d\n", value);
    int value2 = get(&ht, 10044);
    printf("Value for key 100 is: %d\n", value2);
    int value3 = get(&ht, 500000);
    printf("Value for key 100 is: %d\n", value3);

    return 0;
}
