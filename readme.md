# Intro
This project aims to provide comprehensive intellisense for writing Company of Heroes 2 SCAR scripts.  
The project that generates this API documentation is currently not made public as it is incredibly messy due to several iterations and rewrites over the years.

This documentation is generated from 3 sources:
- Official [ScarDoc released by Relic Entertainment](https://community.companyofheroes.com/discussion/43250/scar-documentation)
- Exported lists of values that exist in the runtime `_G` table while in a standard multiplayer match context
- Added documentation for previously undocumented functions such as `scartype` and some of the [UI functions](http://modding.companyofheroes.com/scripting-ui).

Currently all symbols are included in the documentation. This includes symbols whose name starts with an underscore `_` or `AE` prefix. The underscore prefixed symbols are likely intended for internal use and the `AE` prefixed are intended to be called from attribute instances via `scar_function_call`.
If a version of this API documentation should be made available without underscore and `AE` prefixed symbols, please open an issue.

# Configuration
> These instructions assume that you're at least somewhat familiar with Visual Studio Code.

1. Install the [`sumneko.lua`](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) Visual Studio Code extension if you haven't already
1. Download this repository and extract it somewhere (or use `git` to clone it), and copy and paste the path for the next step.
    - _Repeat this step for updating your local copy of the API documentation. Make sure to delete the previous version first._
1. Open Visual Studio code and open User Settings
    1. Search for the "File associations" setting and add `*.scar` (key field) `lua` (value field)
    1. Search for "Lua workspace library", click "Edit in settings.json" and add the following setting: 
    ```json
    "<path to the extracted coh2-scar-api directory>/": true
    ```
    1. Search for "Lua workspace ignoredir" and add `Intermediate Cache`
        - This prevents loading SCAR symbols from the Mod Builder's build cache.
    1. Search for "Lua color mode" and change the setting to `Grammar` 
    > _As of July 22nd 2020, the VS Code extension `sumneko.lua` does not support Semantic highlighting_.

# Contributing
- Undocumented/missing symbols (function, constant, blueprint such as `SBP.FOO.BAR`, etc.): Please open an issue.
- Error in documentation: Please open an issue.

The vast majority of this API documentation is based on the official [ScarDoc released by Relic Entertainment](https://community.companyofheroes.com/discussion/43250/scar-documentation). Documentation improvements or changes will generally not be accepted for symbols covered by the official ScarDoc. However changes can be considered for clear errors in documentation. Please open an issue after checking the Official ScarDoc documentation.

> Exception: Any symbol marked with `@undocumented` is open for documentation contributions.

Please follow the `WScite.api` format when providing new documentation, e.g.
```
dr_text2d( string frame, number x, number y, string text, int red, int green, int blue ) RETURNS: void =>Draws text on the screen.
```
See `\steamapps\common\Company of Heroes 2\Tools` for more examples.

> Currently there is no known format for marking function parameters in the `WScite.api` format as optional. The format will be decided on once it's needed.

If there's anything not covered by the above, please open an issue.
