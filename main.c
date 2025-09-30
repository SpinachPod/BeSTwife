#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

struct BstNode {
  char value[64];
  struct BstNode* right;
  struct BstNode* left;
  struct BstNode* parent;
  struct Bst* root;
};

struct Bst {
   struct BstNode* root_node;
   int size;
};

struct Bst* new_bst(char value[64]) {
  struct Bst* bst = malloc(sizeof(struct Bst));
  if (bst == NULL) return NULL;
  
  bst->root_node = malloc(sizeof(struct BstNode));
  if (bst->root_node == NULL) {
    free(bst);
    return NULL;
  }

  strncpy(bst->root_node->value, value, 63);
  bst->root_node->value[63] = '\0';
  bst->root_node->left = NULL;
  bst->root_node->right = NULL;
  bst->root_node->parent = NULL;
  bst->root_node->root = bst;
  bst->size = 1;
  return bst;
}

struct BstNode* new_bst_node(char value[64], struct BstNode* parent) {
    struct BstNode* node = malloc(sizeof(struct BstNode));
    strncpy(node->value, value, 63);
    node->value[63] = '\0';
    node->left = NULL;
    node->right = NULL;
    node->parent = parent;
    node->root = parent->root;
    node->root->size++;
    return node;
}


struct BstNode* bst_insert(struct BstNode* root, char value[64]) {   

if (root == NULL) return NULL;

int cmp = strcmp(value, root->value);
if (cmp < 0 && root->left == NULL) {
  root->left = new_bst_node(value, root);
  return root;
}
if (cmp > 0 && root->right == NULL) {
  root->right = new_bst_node(value, root);
  return root;
}

if (cmp < 0 && root->left != NULL) return bst_insert(root->left, value);
if (cmp > 0 && root->right != NULL) return bst_insert(root->right, value);
if (cmp == 0) return root;

return NULL;
}

struct BstNode* bst_search(struct BstNode* node, char value[64]) {
  if (node == NULL) return NULL;
  
  int cmp = strcmp(value, node->value);
  if (cmp == 0) return node;
  if (cmp < 0) return bst_search(node->left, value);
  return bst_search(node->right, value);
}

int main() {
  char name[64];
  printf("uhh whats your name so i know who im adding the wives for?\n");
  scanf("%s", name);
  struct Bst* bst = new_bst(name);
  while (true) {
    char instruction[8];
    char input[64];
    printf("what would you like me to do?\n(1) add a wife\n(2) search for a wife\n");
    scanf("%s", instruction);
    if (instruction[0] == '1') {
      printf("what would you like me to add?\n");
      scanf("%s", input);
      if (bst_insert(bst->root_node, input) == NULL) {
        printf("error: i couldnt add that wife! probably a duplicate wife?\n");
      } else {
        printf("i added %s\n", input);
      }
      continue;
    }
    if (instruction[0] == '2') {
      printf("which wife would you like me to find?\n");
      scanf("%s", input);
      if (bst_search(bst->root_node, input) == NULL) {
        printf("error: i didnt find that wife! does it exist?\n");
      } else {
        printf("i found %s\n", input);
      }
      continue;
    }
  }
}
