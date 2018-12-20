<?php 
function show_categories($parent_id="0",$insert_text="--")
{	global $conn;
	$query_dq="SELECT * FROM danhmuc WHERE parent_id=".$parent_id." ORDER BY parent_id DESC";
	$categories=mysqli_query($conn,$query_dq);
	while($category=mysqli_fetch_array($categories,MYSQLI_ASSOC))
	{
		echo("<option value='".$category["id"]."'>".$insert_text.$category['danhmuc']."</option>");
		show_categories($category["id"],$insert_text."--");
	}
	return true;
}
function selectCtrl($name,$class)
{
	global $dbc;
	echo "<select name='".$name."' class='".$class."'>";
	echo "<option value='0'>Danh mục cha</option>";
	show_categories();
	echo "</select>";
}     
?>