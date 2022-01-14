state("DeadIslandRiptideGame")
{
    int XP: "gamedll_x64_rwdi.dll", 0x012824C0, 0x10, 0x3D0, 0x80;
    int ChapterNumber: "gamedll_x64_rwdi.dll", 0x012824D0, 0x8, 0x640, 0xA38, 0x128;
}
start
{
    if (old.XP != 60200 && current.XP == 60200)
    {
        return true;
    }
}
split
{
    if (old.ChapterNumber < current.ChapterNumber)
    {
        return true;
    }
}
reset
{
    if (old.XP != 60200 && current.XP < 60200)
    {
        return true;
    }
}
