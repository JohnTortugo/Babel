-- This is the specification file ".ads" for the BinSearchTree
-- package. Here we don't include the body of the functions, we
-- just declare their prototype.

package BinSearchTree is
	-- Declare the existence of a TreeNode type
	type TreeNode;

	-- This is how we declare a type "pointer to TreeNode"
	type TreeNode_ptr is access TreeNode;

	-- Complete definition of the TreeNode type.
	-- This is like an struct in C/C++.
	type TreeNode is
	record
		Value		: Integer;
		Left		: TreeNode_ptr;
		Right		: TreeNode_ptr;
	end record;

	-- Note that we specify how the parameters will be used inside the
	-- function: if they are input or output parameters, or both.
	-- Note also that to separe the parameters you use a semicolon instead of a comma.
	procedure Insert(root : in out TreeNode_ptr; key : in Integer);
	procedure Remove(root : in out TreeNode_ptr; key : in Integer);

	-- The return type of the function is the last past of the prototype
	-- and only functions can have return types.
	function Search(root : in TreeNode_ptr; key : in Integer) return Boolean;

	procedure PrintInOrder(root : in TreeNode_ptr);
	procedure PrintPosOrder(root : in TreeNode_ptr);
	procedure PrintPreOrder(root : in TreeNode_ptr);
end BinSearchTree;

