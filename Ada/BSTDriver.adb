with Ada.Text_IO, BinSearchTree;
use Ada.Text_IO, BinSearchTree;

procedure BSTDriver is
	root : TreeNode_ptr := null;
begin

	Insert(root, 1);	
	Insert(root, 10);	
	Insert(root, 5);	
	Insert(root, 8);	

	Remove(root, 1);
	Remove(root, 5);
	Remove(root, 8);
	Remove(root, 10);

	Insert(root, 50);

	if Search(root, 50) = True then
		Put_Line("Acheii");
	else
		Put_Line("Not found");
	end if;


	Insert(root, 1);	
	Insert(root, 10);	
	Insert(root, 5);	
	Insert(root, 8);	

	Put("InOrder: ");
	PrintInOrder(root);
	New_Line(1);

	Put("PreOrder: ");
	PrintPreOrder(root);
	New_Line(1);

	Put("PosOrder: ");
	PrintPosOrder(root);
	New_Line(1);

end BSTDriver;
