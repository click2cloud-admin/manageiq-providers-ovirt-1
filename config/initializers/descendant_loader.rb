# make sure STI models are recognized
DescendantLoader.instance.descendants_paths << ManageIQ::Providers::Redhat::Engine.config.root.join('app/models')
