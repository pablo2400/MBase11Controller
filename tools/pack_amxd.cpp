#include <cstdint>
#include <fstream>
#include <iostream>
#include <iterator>
#include <string>

namespace
{
void writeTag(std::ofstream& output, const char* tag)
{
    output.write(tag, 4);
}

void writeUint32(std::ofstream& output, std::uint32_t value)
{
    const char bytes[] {
        static_cast<char>(value & 0xff),
        static_cast<char>((value >> 8) & 0xff),
        static_cast<char>((value >> 16) & 0xff),
        static_cast<char>((value >> 24) & 0xff),
    };
    output.write(bytes, sizeof(bytes));
}
}

int main(int argc, char** argv)
{
    if (argc != 3)
    {
        std::cerr << "usage: pack_amxd input.maxpat output.amxd\n";
        return 1;
    }

    std::ifstream input(argv[1], std::ios::binary);
    const std::string patch((std::istreambuf_iterator<char>(input)), {});
    if (!input.good() && !input.eof())
    {
        std::cerr << "cannot read " << argv[1] << '\n';
        return 1;
    }

    std::ofstream output(argv[2], std::ios::binary | std::ios::trunc);
    if (!output || patch.size() > UINT32_MAX)
    {
        std::cerr << "cannot create " << argv[2] << '\n';
        return 1;
    }

    writeTag(output, "ampf");
    writeUint32(output, 4);
    writeTag(output, "mmmm");
    writeTag(output, "meta");
    writeUint32(output, 4);
    writeUint32(output, 0);
    writeTag(output, "ptch");
    writeUint32(output, static_cast<std::uint32_t>(patch.size()));
    output.write(patch.data(), static_cast<std::streamsize>(patch.size()));

    return output ? 0 : 1;
}
