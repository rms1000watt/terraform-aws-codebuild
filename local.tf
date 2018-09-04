locals {
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"

  zeros = ["___1", "___2", "___3", "___4", "___5", "___6", "___7", "___8", "___9", "___10"]

  compute_type_map {
    small  = "BUILD_GENERAL1_SMALL"
    medium = "BUILD_GENERAL1_MEDIUM"
    large  = "BUILD_GENERAL1_LARGE"
  }
}

locals {
  project_name     = "${var.project_name != "" ? var.project_name : local.parent_dir}"
  compute_type     = "${lookup(local.compute_type_map, var.builder_size)}"
  builder_role_arn = "${var.builder_role_arn != "" ? var.builder_role_arn : aws_iam_role.0.arn}"

  env_keys  = "${concat(var.env_keys, local.zeros)}"
  env_key_0 = "${local.env_keys[0]}"
  env_key_1 = "${local.env_keys[1]}"
  env_key_2 = "${local.env_keys[2]}"
  env_key_3 = "${local.env_keys[3]}"
  env_key_4 = "${local.env_keys[4]}"
  env_key_5 = "${local.env_keys[5]}"
  env_key_6 = "${local.env_keys[6]}"
  env_key_7 = "${local.env_keys[7]}"
  env_key_8 = "${local.env_keys[8]}"
  env_key_9 = "${local.env_keys[9]}"

  env_vals  = "${concat(var.env_vals, local.zeros)}"
  env_val_0 = "${local.env_vals[0]}"
  env_val_1 = "${local.env_vals[1]}"
  env_val_2 = "${local.env_vals[2]}"
  env_val_3 = "${local.env_vals[3]}"
  env_val_4 = "${local.env_vals[4]}"
  env_val_5 = "${local.env_vals[5]}"
  env_val_6 = "${local.env_vals[6]}"
  env_val_7 = "${local.env_vals[7]}"
  env_val_8 = "${local.env_vals[8]}"
  env_val_9 = "${local.env_vals[9]}"

  github_repo_count = "${var.github_repo != "" ? 1 : 0}"
  github_vpc_count  = "${signum(length(var.vpc_id)) + signum(length(var.subnets)) + signum(length(var.security_groups)) + local.github_repo_count == 4 ? 1 : 0}"
  github_count      = "${var.github_repo != "" && local.github_vpc_count == 0 ? 1 : 0}"
}
