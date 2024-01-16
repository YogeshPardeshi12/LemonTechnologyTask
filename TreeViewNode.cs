namespace LemonTechnologyTask.Models
{
    public class TreeViewNode
    {
        public int NodeId { get; set; }
        public int? ParentNodeId { get; set; }
        public string NodeName { get; set; }
        public bool IsSelected { get; set; }
        public List<TreeViewNode> Children { get; set; } = new List<TreeViewNode>();
    }
}
