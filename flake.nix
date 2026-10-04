{
	description = "my nixos config";
	
	inputs = {
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	
	home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";

	};

	plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

  zen-browser = {
    url = "github:0xc000022070/zen-browser-flake/beta";
    inputs.nixpkgs.follows = "nixpkgs";
    inputs.home-manager.follows = "home-manager";
  };
};


	outputs = { self, nixpkgs, home-manager, plasma-manager, zen-browser, ... }@inputs: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.sharedModules = [
            plasma-manager.homeModules.plasma-manager
          ];
          home-manager.users.jake = import ./home/jake.nix;
		      home-manager.backupFileExtension = "backup";
        }
      		];
		};
	};	
}
