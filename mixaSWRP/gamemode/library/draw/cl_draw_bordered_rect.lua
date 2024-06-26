
local color_black = Color( 0, 0, 0 )
local scrw, scrh = ScrW(), ScrH()
function surface.DrawBorderedRect( x, y, w, h, backgroundColor, borderColor )
    local scrwDiff = (scrw * 0.0045)
    draw.NoTexture()
        surface.SetDrawColor( backgroundColor )
        surface.DrawRect( 0, 0, w, h )
        surface.SetDrawColor( borderColor )
        surface.DrawRect( 0, 0, scrwDiff, h )
        surface.DrawRect( w - scrwDiff, 0, w, h )
        surface.DrawRect( 0, 0, w, scrwDiff )
        surface.DrawRect( 0, h - (scrw * 0.004), w, scrwDiff )
    draw.NoTexture()
end

local roundedRec = Material('sr/rounded.png')
function surface.RoundedOutlinedRect( x, y, w, h, rotation )
    draw.NoTexture()
    surface.SetMaterial( roundedRec )
    surface.DrawTexturedRect( x, y, w, h)
    draw.NoTexture()
end