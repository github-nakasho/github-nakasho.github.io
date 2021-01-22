# gitbook-plugin-thumbnail

This Gitbook plugin lets you set thumbnail metadata for your gitbooks. Thumbnails will show up in Google custom search results.

## Usage

In `book.json`:

```
"plugins": ["thumbnail"],
"pluginsConfig": {
    "thumbnail": {
        "path": "https://example.com/cover-image.png"
    }
}
```

Then run `gitbook install`.
