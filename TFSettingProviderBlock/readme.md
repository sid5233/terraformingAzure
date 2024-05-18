*Terraform Block
- Special Block used to configure some behaviour 
- can be called terraform,tf setting, tf configuration block
Each terraform block can contain a number of setting related to tf's behavior. 
--WITHIN TF BLOCK ONLY CONSTANT VALUES CAN BE USED.


TF VERSION CONTRAINT
Version numbers should be a series of numbers separated by periods (like 1.2.0), optionally with a suffix to indicate a beta release.

The following operators are valid:

= (or no operator): Allows only one exact version number. Cannot be combined with other conditions.

!=: Excludes an exact version number.

>, >=, <, <=: Comparisons against a specified version, allowing versions for which the comparison is true. "Greater-than" requests newer versions, and "less-than" requests older versions.

~>: Allows only the rightmost version component to increment. This format is referred to as the pessimistic constraint operator. For example, to allow new patch releases within a specific minor release, use the full version number:
~> 1.0.4: Allows Terraform to install 1.0.5 and 1.0.10 but not 1.1.0.
~> 1.1: Allows Terraform to install 1.2 and 1.10 but not 2.0.