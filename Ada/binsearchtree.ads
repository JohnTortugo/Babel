package BinSearchTree is
	-- Declare the existence of a TreeNode type
	type TreeNode;

	-- This is how we declare a type "pointer to TreeNode"
	type TreeNode_ptr is access TreeNode;

	-- Complete definition of the TreeNode type
	type TreeNode is
	record
		Value		: Integer;
		Left		: TreeNode_ptr;
		Right		: TreeNode_ptr;
	end record;

	procedure Insert(root : in out TreeNode_ptr; key : in Integer);
	procedure Remove(root : in out TreeNode_ptr; key : in Integer);

	function Search(root : in TreeNode_ptr; key : in Integer) return Boolean;

	procedure PrintInOrder(root : in TreeNode_ptr);
	procedure PrintPosOrder(root : in TreeNode_ptr);
	procedure PrintPreOrder(root : in TreeNode_ptr);
end BinSearchTree;

