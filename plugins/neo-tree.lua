return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
    nesting_rules = {
      ["dart"] = { "g.dart", "freezed.dart", "mocks.dart" },
    },
  },
}
