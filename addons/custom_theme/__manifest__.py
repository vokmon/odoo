{
    'name': 'Custom Theme',
    'version': '1.0',
    'category': 'Theme/Creative',
    'summary': 'Custom theme with customizable colors',
    'description': """
        Custom Odoo theme that allows you to change the default colors.
        Currently configured with:
        - Navbar: Red (#d62429)
        - Buttons and selected menu items: Yellow (#ffdb45)
        
        You can modify the colors by editing the CSS in views/templates.xml
    """,
    'author': 'Custom',
    'website': '',
    'depends': ['base', 'web'],
    'data': [
        'views/templates.xml',
    ],
    'installable': True,
    'auto_install': False,
    'application': False,
} 