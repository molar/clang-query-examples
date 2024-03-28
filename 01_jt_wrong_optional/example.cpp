#include <optional>
#include <string>
struct AStruct {
  explicit AStruct(int) {}
  int a;
  int b;
  int c;
  int d;
  std::string e;
};

std::optional<AStruct> my_func(int a) {
  // match here
  //
  std::optional<AStruct> myops;
  myops = AStruct{24};
  if (a > 23) {
    // match here
    return AStruct(a);
  } else if (a > 24) {
    return myops.emplace(AStruct{24});
  } else if (a > 29) {
    return std::optional<AStruct>(23);
  }
  return std::nullopt;
}

int main() {
  auto mn = my_func(0);
  auto y = my_func(26);
  return 0;
}
