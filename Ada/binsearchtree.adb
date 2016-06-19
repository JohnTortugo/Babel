with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body BinSearchTree is
	function SearchRightmost(root : in TreeNode_ptr) return Integer is
	begin
		-- The way we access the fields of the struct is the same as in 
		-- C/C++.
		if (root.Right = null) then
			return root.Value;
		else 
			return SearchRightmost(root.Right);
		end if;
	end;

	procedure Insert(root : in out TreeNode_ptr; key : in Integer) is
	begin
		if root = null then
			-- You use the keyword "New" to allocate memory in the heap.
			-- For some reason you need to include an apostrophe after
			-- the type name. A nice thing is that you can initialize the
			-- record parameters by their name. The syntax for assignment
			-- here is a little different from the ones in other places.
			root := new TreeNode'(Value => key, Left => null, Right => null);
		else
			if key < root.Value then
				Insert(root.Left, key);
			else
				Insert(root.Right, key);
			end if;
		end if;
	end Insert;

	procedure Remove(root : in out TreeNode_ptr; key : in Integer) is
		-- Local variables are declared in this region.
		rightmostValue : Integer := 0;
	begin
		-- The inequality operator (/=) is a little different of the commonly
		-- used nowadays (!=). But it is more similar to the mathematical symbol.
		if (root /= null) then
			if (root.Value = key) then
				if (root.Left = null and root.Right = null) then
					root := null;
				-- note that the word is "elsif" (like Bash) not "elseif"
				elsif (root.Left /= null) then
					root := root.Left;
				elsif (root.Right /= null) then
					root := root.Right;
				else 
					rightmostValue := SearchRightmost(root.Left);

					Remove(root.Left, rightmostValue);

					root.Value := rightMostValue;
				end if;
			elsif (key < root.Value) then
				Remove(root.Left, key);
			else
				Remove(root.Right, key);
			end if;
		end if;
	end Remove;

	function Search(root : in TreeNode_ptr; key : in Integer) return Boolean is
	begin
		if (root = null) then
			return False;
		else
			if (root.Value = key) then
				return True;
			elsif (key < root.Value) then
				return Search(root.Left, key);
			else
				return Search(root.Right, key);
			end if;
		end if;
	end Search;

	procedure PrintInOrder(root : in TreeNode_ptr) is
	begin
		if (root /= null) then
			PrintInOrder(root.Left);

			Put("(");
			Put(root.Value, 2, 10);
			Put(")");

			PrintInOrder(root.Right);
		end if;
	end PrintInOrder;

	procedure PrintPreOrder(root : in TreeNode_ptr) is
	begin
		if (root /= null) then
			Put("(");
			Put(root.Value, 2, 10);
			Put(")");

			PrintPreOrder(root.Left);

			PrintPreOrder(root.Right);
		end if;
	end PrintPreOrder;

	procedure PrintPosOrder(root : in TreeNode_ptr) is
	begin
		if (root /= null) then
			PrintPosOrder(root.Left);

			PrintPosOrder(root.Right);

			Put("(");
			Put(root.Value, 2, 10);
			Put(")");
		end if;
	end PrintPosOrder;

end BinSearchTree;


