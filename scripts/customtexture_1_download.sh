TextureURLParsed=$(cat extracted_custom/Metadata.json | jq '.CPE | .EnvMapAppearance| .TextureURL')
TextureURL=$(echo $TextureURLParsed | sed 's/"//g' )
echo ClassiCube2Minetest: Texture: Download Texture ZIP
mkdir extracted_custom/texturezip
wget $TextureURL -P extracted_custom/texturezip
