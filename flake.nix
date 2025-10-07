/*
The flake name can be omitted if it matches the hostname.

So if you're deploying to a machine named "nixos", naming the flake "nixos" allows you to simply run:

sudo nixos-rebuild switch --flake ~/mysystem
*/

{
  description = "the second incarnation of my nixos config";

  inputs =
  {
      nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

      home-manager =
      {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };
      
      stylix.url = "github:danth/stylix";

      niri.url = "github:sodiboo/niri-flake";
      
      nixcord.url = "github:kaylorben/nixcord";
  };

 #-----------------------------------------------------------#

  outputs =
  {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs :

  let
    system = "x86_64-linux";
    pkgs = import nixpkgs
    {
      inherit system;

      config =
      {
        allowUnfree = true;
      };
    };
  in
    {

      nixosConfigurations =
      {
        alicebox = nixpkgs.lib.nixosSystem
        {
          specialArgs = {inherit inputs system;};
          modules = 
          [
	    ./hosts/alicebox/configuration.nix
	    inputs.stylix.nixosModules.stylix
            inputs.niri.nixosModules.niri
	    home-manager.nixosModules.home-manager
	    {
	      home-manager.useGlobalPkgs = true;
	      home-manager.useUserPackages = true;
	      home-manager.users.cardinal = import ./hosts/alicebox/homemgr.nix;
              home-manager.sharedModules =
              [
                inputs.nixcord.homeModules.nixcord
              ];
	    }
	  ];
        };
      };

      homeConfigurations =
      {
          homeConfigurations =
          {
          "alicebox" = home-manager.lib.homeManagerConfiguration
            {
              pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
              extraSpecialArgs = {inherit inputs;};
              modules =
              [
		./hosts/alicebox/homemgr.nix
	      ];
            };
          };
      };

    };
}
