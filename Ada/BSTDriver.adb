-- Ada.Text_IO: This will enable us to print texts to standard output.
-- BinSearchTree: This will include the BinSearchTree package in the scope of
-- this compilation unit.
with Ada.Text_IO, BinSearchTree;
use Ada.Text_IO, BinSearchTree;

-- This is the "main" procedure of the project. The execution
-- of the program will start here.
procedure BSTDriver is
	-- Local variables usually are declared before the "begin" key word.
	-- Node that TreeNode_ptr is a pointer to TreeNode.
	root : TreeNode_ptr := null;
begin

	-- The usual syntax of function call is the same as other imperative
	-- languages like C, Java, etc.
	Insert(root, 1);	
	Insert(root, 10);	
	Insert(root, 5);	
	Insert(root, 8);	

	Remove(root, 1);
	Remove(root, 5);
	Remove(root, 8);
	Remove(root, 10);

	Insert(root, 50);

	-- Note the use of the "then" and "end if" keywords, similar to pascal
	-- and also the comparison operator. Ada uses the ":=" for assignment
	-- and "=" for comparison.
	if Search(root, 50) = True then
		Put_Line("Found.");
	else
		Put_Line("Not found.");
	end if;

	Insert(root, 1);	
	Insert(root, 10);	
	Insert(root, 5);	
	Insert(root, 8);	

	Put("InOrder: ");
	PrintInOrder(root);
	-- This is one of the ways to print new lines in Ada. The parameter tells
	-- how many new lines should be printed.
	New_Line(1);

	Put("PreOrder: ");
	PrintPreOrder(root);
	New_Line(1);

	Put("PosOrder: ");
	PrintPosOrder(root);
	New_Line(1);

end BSTDriver;
