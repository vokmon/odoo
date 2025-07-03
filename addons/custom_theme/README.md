# Custom Theme Module

This module provides a custom color theme for Odoo using the following color scheme:
- **Primary Color**: #d62429 (Red)
- **Secondary Color**: #ffdb45 (Yellow)

## Installation

1. Make sure the module is in your `addons` directory
2. Restart your Odoo server
3. Go to **Apps** → **Update Apps List**
4. Search for "Custom Theme"
5. Install the module

## Features

This theme customizes the following elements:
- Main navigation bar
- Buttons (primary and secondary)
- Links and hover states
- Form elements
- List view headers
- Kanban cards
- Calendar controls
- Search panels
- Status badges
- Progress bars
- Tabs
- And many more UI elements

## Customization

To modify the colors, edit the CSS variables in `static/src/css/custom_theme.css`:

```css
:root {
    --primary-color: #d62429;    /* Your red color */
    --secondary-color: #ffdb45;  /* Your yellow color */
    --primary-hover: #b31e22;    /* Darker red for hover */
    --secondary-hover: #e6c53e;  /* Darker yellow for hover */
}
```

## Troubleshooting

If the theme doesn't apply immediately:
1. Clear your browser cache
2. Restart Odoo server
3. Check that the module is properly installed in Apps
4. Verify the CSS file is being loaded (check browser developer tools)

## Uninstall

To remove the theme:
1. Go to **Apps** → **Installed Apps**
2. Find "Custom Theme"
3. Click **Uninstall** 