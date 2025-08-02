{
  pkgs,
  inputs,
  config,
  ...
}: {
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    discord.enable = false;
    vesktop.enable = true;

    config = {
      useQuickCss = true;
      transparent = true;
    };
    quickCss = with config.lib.stylix.colors.withHashtag; ''
        @import url("https://refact0r.github.io/system24/build/system24.css");

        body {
          --font: "Maple Mono";
          --code-font: "JetBrains Mono";
          font-weight: 400;
          letter-spacing: -0.05ch;

          /* sizes */
          --gap: 0.5rem;
          --divider-thickness: 0.125rem;
          --border-thickness: 0.125rem;
          --border-hover-transition: 0.5s ease-out;

          /* animation/transition options */
          --animations: on; /* off: disable animations/transitions, on: enable animations/transitions */
          --list-item-transition: 0.2s ease-out; /* transition for list items */
          --dms-icon-svg-transition: 0.4s ease-out; /* transition for the dms icon */

          /* top bar options */
          --top-bar-height: var(
            --gap
          ); /* height of the top bar (discord default is 36px, old discord style is 24px, var(--gap) recommended if button position is set to titlebar) */
          --top-bar-button-position: titlebar; /* off: default position, hide: hide buttons completely, serverlist: move inbox button to server list, titlebar: move inbox button to channel titlebar (will hide title) */
          --top-bar-title-position: off; /* off: default centered position, hide: hide title completely, left: left align title (like old discord) */
          --subtle-top-bar-title: off; /* off: default, on: hide the icon and use subtle text color (like old discord) */

          /* window controls */
          --custom-window-controls: on; /* off: default window controls, on: custom window controls */
          --window-control-size: 0.75rem; /* size of custom window controls */

          /* dms button options */
          --custom-dms-icon: hide; /* off: use default discord icon, hide: remove icon entirely, custom: use custom icon */
          --dms-icon-svg-url: url(""); /* icon svg url. MUST BE A SVG. */
          --dms-icon-svg-size: 100%; /* size of the svg (css mask-size property) */
          --dms-icon-color-before: var(--base06); /* normal icon color */
          --dms-icon-color-after: var(
            --base00
          ); /* icon color when button is hovered/selected */
          --custom-dms-background: image; /* off to disable, image to use a background image (must set url variable below), color to use a custom color/gradient */
          --dms-background-image-url: url("https://i.imgur.com/xDtSJqG.jpeg");
          --dms-background-image-size: cover; /* size of the background image (css background-size property) */
          --dms-background-color: transparent; /* fixed color/gradient (css background property) */

          /* background image options */
          --background-image: off; /* off: no background image, on: enable background image (must set url variable below) */
          /* --background-image-url: url("https://i.imgur.com/InsrHBt.jpeg"); */
          --background-image-url: url("https://i.imgur.com/nfBGoco.jpeg");

          /* transparency/blur options */
          /* NOTE: TO USE TRANSPARENCY/BLUR, YOU MUST HAVE TRANSPARENT BG COLORS. FOR EXAMPLE: --bg-4: hsla(220, 15%, 10%, 0.7); */
          --transparency-tweaks: on; /* off: no changes, on: remove some elements for better transparency */
          --remove-bg-layer: on; /* off: no changes, on: remove the base --bg-3 layer for use with window transparency (WILL OVERRIDE BACKGROUND IMAGE) */
          --panel-blur: on; /* off: no changes, on: blur the background of panels */
          --blur-amount: 0.5rem; /* amount of blur */
          --bg-floating: var(
            --bg-3
          ); /* set this to a more opaque color if floating panels look too transparent. only applies if panel blur is on  */

          /* other options */
          --small-user-panel: off; /* off: default user panel, on: smaller user panel like in old discord */

          /* unrounding options */
          --unrounding: off; /* off: default, on: remove rounded corners from panels */

          /* styling options */
          --custom-spotify-bar: on; /* off: default, on: custom text-like spotify progress bar */
          --ascii-titles: on; /* off: default, on: use ascii font for titles at the start of a channel */
          --ascii-loader: cats; /* off: default, system24: use system24 ascii loader, cats: use cats loader */

          /* panel labels */
          --panel-labels: off; /* off: default, on: add labels to panels */
          --label-color: var(--text-muted); /* color of labels */
          --label-font-weight: 500; /* font weight of labels */
        }

        /* color options */
        :root {
          --colors: on; /* off: discord default colors, on: midnight custom colors */

          /* text colors */
          --text-0: var(--base00); /* text on colored elements */
          --text-1: var(--base06); /* other normally white text */
          --text-2: var(--base07); /* headings and important text */
          --text-3: var(--base05); /* normal text */
          --text-4: var(--base04); /* icon buttons and channels */
          --text-5: var(--base04); /* muted channels/chats and timestamps */

          /* background and dark colors */
          --bg-1: var(--base03); /* dark buttons when clicked */
          --bg-2: var(--base02); /* dark buttons */
          --bg-3: var(--base00); /* spacing, secondary elements */
          --bg-4: color(
            from var(--base00) srgb r g b / 0.8
          ); /* main background color */
          --hover: color(
            from var(--base0C) srgb r g b / 0.3
          ); /* channels and buttons when hovered */
          --active: color(
            from var(--base0D) srgb r g b / 0.5
          ); /* channels and buttons when clicked or selected */
          --active-2: oklch(54% 0 0 / 0.3); /* extra state for transparent buttons */
          --message-hover: var(--hover); /* messages when hovered */

          /* accent colors */
          --accent-1: var(--base08); /* links and other accent text */
          --accent-2: var(--base09); /* small accent elements */
          --accent-3: var(--base0A); /* accent buttons */
          --accent-4: var(--base0B); /* accent buttons when hovered */
          --accent-5: var(--base0C); /* accent buttons when clicked */
          --accent-new: var(
            --base0F
          ); /* stuff that's normally red like mute/deafen buttons */
          --mention: linear-gradient(
            to right,
            color(from var(--base0C) srgb r g b / 0.1) 40%,
            transparent
          ); /* background of messages that mention you */
          --mention-hover: linear-gradient(
            to right,
            color(from var(--base0D) srgb r g b / 0.1) 40%,
            transparent
          ); /* background of messages that mention you when hovered */
          --reply: var(--mention); /* background of messages that reply to you */
          --reply-hover: var(
            --mention-hover
          ); /* background of messages that reply to you when hovered */

          /* status indicator colors */
          --online: var(--base0C); /* change to #40a258 for default */
          --dnd: var(--base08); /* change to #d83a41 for default */
          --idle: var(--base0A); /* change to #cc954c for default */
          --streaming: var(--base0F); /* change to ##9147ff for default */
          --offline: var(--base01); /* change to #82838b for default offline color */

          /* border colors */
          --border-light: var(--hover); /* general light border color */
          --border: var(--active); /* general normal border color */
          --border-hover: var(--accent-2); /* border color of panels when hovered */
          --button-border: var(--base01); /* neutral border color of buttons */

          /* base colors */
          --base00: ${base00};
          --base01: ${base01};
          --base02: ${base02};
          --base03: ${base03};
          --base04: ${base04};
          --base05: ${base05};
          --base06: ${base06};
          --base07: ${base07};
          --base08: ${base08};
          --base09: ${base09};
          --base0A: ${base0A};
          --base0B: ${base0B};
          --base0C: ${base0C};
          --base0D: ${base0D};
          --base0E: ${base0E};
          --base0F: ${base0F};
        }
      }
    '';
  };
}
