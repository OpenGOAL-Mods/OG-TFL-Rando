#pragma once

#include "LevelFile.h"

namespace jak1 {

struct SkyData {
  std::string level_name;
  const std::vector<u32> data;

  SkyData(std::string level, std::vector<u32> data)
      : level_name(std::move(level)), data(std::move(data)) {}
};

std::vector<u32> get_adgifs_by_level_name(std::string level_name);
}  // namespace jak1