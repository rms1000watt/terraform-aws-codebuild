locals {
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"

  compute_type_map {
    small  = "BUILD_GENERAL1_SMALL"
    medium = "BUILD_GENERAL1_MEDIUM"
    large  = "BUILD_GENERAL1_LARGE"
  }
}

locals {
  project_name = "${var.project_name != "" ? var.project_name : local.parent_dir}"
  compute_type = "${lookup(local.compute_type_map, var.builder_size)}"

  github_count = "${var.github_repo != "" ? 1 : 0}"

  env_keys_len = "${length(var.env_keys)}"
  env_key_0    = "${local.env_keys_len > 0 ? var.env_keys[0] : ""}"
  env_key_1    = "${local.env_keys_len > 1 ? var.env_keys[1] : ""}"
  env_key_2    = "${local.env_keys_len > 2 ? var.env_keys[2] : ""}"
  env_key_3    = "${local.env_keys_len > 3 ? var.env_keys[3] : ""}"
  env_key_4    = "${local.env_keys_len > 4 ? var.env_keys[4] : ""}"
  env_key_5    = "${local.env_keys_len > 5 ? var.env_keys[5] : ""}"
  env_key_6    = "${local.env_keys_len > 6 ? var.env_keys[6] : ""}"
  env_key_7    = "${local.env_keys_len > 7 ? var.env_keys[7] : ""}"
  env_key_8    = "${local.env_keys_len > 8 ? var.env_keys[8] : ""}"
  env_key_9    = "${local.env_keys_len > 9 ? var.env_keys[9] : ""}"

  env_vals_len = "${length(var.env_vals)}"
  env_val_0    = "${local.env_vals_len > 0 ? var.env_vals[0] : ""}"
  env_val_1    = "${local.env_vals_len > 1 ? var.env_vals[1] : ""}"
  env_val_2    = "${local.env_vals_len > 2 ? var.env_vals[2] : ""}"
  env_val_3    = "${local.env_vals_len > 3 ? var.env_vals[3] : ""}"
  env_val_4    = "${local.env_vals_len > 4 ? var.env_vals[4] : ""}"
  env_val_5    = "${local.env_vals_len > 5 ? var.env_vals[5] : ""}"
  env_val_6    = "${local.env_vals_len > 6 ? var.env_vals[6] : ""}"
  env_val_7    = "${local.env_vals_len > 7 ? var.env_vals[7] : ""}"
  env_val_8    = "${local.env_vals_len > 8 ? var.env_vals[8] : ""}"
  env_val_9    = "${local.env_vals_len > 9 ? var.env_vals[9] : ""}"
}
