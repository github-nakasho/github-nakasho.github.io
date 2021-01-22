module.exports = {
    // Extend website resources and html
    website: {
        html: {
            "head:start": function () {
                var path = this.book.options.pluginsConfig.thumbnail.path || "cover_small.png";
                return "<meta name='thumbnail' content='"+path+"'>";
            }
        }
    }
};