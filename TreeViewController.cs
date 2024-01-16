using LemonTechnologyTask.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;

namespace LemonTechnologyTask.Controllers
{
    public class TreeViewController : Controller
    {
        public IActionResult Index()
        {
            var items = GetItems();
            var viewModel = BuildTree(items);
            return View(viewModel);
        }
        private List<TreeViewNode> GetItems()
        {
            var connectionString = @"Data source = DESKTOP-96VFSU5;Initial catalog = TreeView;Integrated Security=True"; ;
            var items = new List<TreeViewNode>();

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();

                var commandText = "SELECT NodeId, ParentNodeId, NodeName FROM tbl_treeViewNodes";
                var command = new SqlCommand(commandText, connection);

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var NodeId = reader.GetInt32(0);
                        var ParentNodeId = reader.IsDBNull(1) ? null : (int?)reader.GetInt32(1);
                        var NodeName = reader.GetString(2);
                        var isSelected = false;
                        var children = new List<TreeViewNode>();
                        //var checkednodes = reader.GetString(3);

                        var item = new TreeViewNode
                        {
                            NodeId = NodeId,
                            ParentNodeId = ParentNodeId,
                            NodeName = NodeName,
                            IsSelected = isSelected,
                            Children = children,
                            //CheckedNodes = checkednodes,


                        };

                        items.Add(item);
                    }
                }
            }

            return items;
        }
        private List<TreeViewNode> BuildTree(List<TreeViewNode> items)
        {
            List<TreeViewNode> rootItems = items.Where(item => item.ParentNodeId == 0).ToList();

            foreach (var rootItem in rootItems)
            {
                BuildSubTree(rootItem, items);
            }

            return rootItems;
        }
        private void BuildSubTree(TreeViewNode parentNode, List<TreeViewNode> items)
        {
            var childItems = items.Where(item => item.ParentNodeId == parentNode.NodeId).ToList();

            foreach (var childItem in childItems)
            {
                parentNode.Children.Add(childItem);

                BuildSubTree(childItem, items);
            }
        }
        [HttpPost]
        public IActionResult Index(IFormCollection form)
        {
            var selectedNodes = new List<TreeViewNode>();
            ViewBag.Count = selectedNodes.Count; // add selected node count to ViewBag         
            var items = GetItems();
            var viewModel = BuildTree(items);
            return View(viewModel);
        }

    }
}
