# terraform-kontena-master-outputs

Provides outputs for a master (lightweight data source).

See (test)[test] folder for usage example.

## usage

    $ cd test
    $ terraform apply
      data.external.kontena: Refreshing state...

      Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

      Outputs:

      master = {
        tokens = [5a8062c5bcf349000cb1a264 5a8062ca10532d000c0e9680]
      }